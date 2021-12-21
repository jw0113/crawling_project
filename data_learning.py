import argparse
import os
import json
import re
import socket
import importlib.util
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
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
    print(data)
    

if __name__ == "__main__":
    main()
