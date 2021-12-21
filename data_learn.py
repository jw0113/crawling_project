import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.metrics import accuracy_score

def main():


    # 파일 읽어오기
    data_file = pd.read_excel("C:\\Users\\jiwoo\\Desktop\\university\\crawling_data\\final_data.xlsx")
    data_file = data_file.fillna(0)
    data_file.head()

    #여행객의 여행 특징
    train_data = data_file.drop('D_TRA1_1_CITY1', axis=1)
    #여행지
    target_data = data_file['D_TRA1_1_CITY1']
    #print(target_data)
    
    #학습데이터와 test데이터를 나눔
    x_train, x_test, y_train, y_test = train_test_split(train_data, target_data)

    print(train_data.shape, x_train.shape, x_test.shape)

    forest = RandomForestClassifier(n_estimators=3000,random_state=156)

    best_forest = grid_cv.best_estimator
    best_y_predict = best_forest.predict(x_test)
    best_accuracy = accuracy_score(y_test, best_y_predict)
    print('best 결정 트리 예측 정확도 : {0:.4f}'.format(best_accuracy))
    
    

if __name__== "__main__":
    main()
