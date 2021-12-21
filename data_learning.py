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

    data_learn.main()
    
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
    print(type(data))
    #with open("C:\\Users\\jiwoo\\Desktop\\university\\crawling_data\\data.csv",'w', newline='') as f:
        #wr = csv.writer(f)
        #wr.writerow(data)

    #x_test = pd.read_csv("C:\\Users\\jiwoo\\Desktop\\university\\crawling_data\\data.csv")
    x_test = pd.DataFrame(data)
    print(x_test)
    # 예측 진행
    #best_forest = grid_cv.best_estimator_
    #best_y_predict = best_forest.predict(data)
    print(best_y_predict)
    
    

if __name__ == "__main__":
    main()
