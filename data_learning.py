import argparse
import os
import json
import re
import csv
import socket
import importlib.util
import numpy as np
import pandas as pd

import data_learn
from sklearn.ensemble import RandomForestClassifier


def main():

    # spring과의 소켓 통신을 위함
    host = "127.0.0.1"
    port = 5000
    server = socket.socket(socket.AF_INET)
    server.bind((host,port))
    server.listen(10)

    print("waiting...")
    client_sock, addr = server.accept()
    print("Connected by", addr)

    # spring에서 보낸 정보 받기
    data = client_sock.recv(2048)
    data = data.decode('utf-8').split(',')
    #print(type(data))
    x_test = pd.DataFrame([data])
    print(x_test)
    # 예측 진행
    #best_forest = grid_cv.best_estimator_
    #best_y_predict = best_forest.predict(data)
    y_predict = data_learn.main(x_test)
    print(type(y_predict))
    re = y_predict[0]
    print(re)
    print(type(re))

    # 값 보내기
    client_sock.send(re.tobytes())
    print(y_predict.tobytes())
    print(re.tobytes())

    client_sock.close()
    server.close()
    

if __name__ == "__main__":
    main()
