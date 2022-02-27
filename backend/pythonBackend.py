import numpy as np
import pandas as pd
import os
import sys
from scipy import stats
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
import datetime 
import sqlite3
import matplotlib.pyplot as plt
from sqlalchemy import create_engine
from pathlib import Path

ESUserData = "./ESUserData.csv"
UserBankInformation = "./UserBankInformation.csv"

def PerformRegression(X_poly, y, X_predict):
    X_poly = np.array(X_poly)
    X_poly = X_poly.reshape(-1,1)
    y = np.array(y)    
    y = y.reshape(-1,1)
    X_predict = np.array(X_predict)
    X_predict = X_predict.reshape(-1,1)

    model = LinearRegression(fit_intercept = False)
    model.fit(X_poly, y) 
    y_predict = model.predict(X_predict)
    return y_predict


def ReadData():
    userData = pd.read_csv(ESUserData, parse_dates = ['Dates'])
    return userData

def ReadBankingData():
    userBankingData = pd.read_csv(UserBankInformation)
    return userBankingData
   
def CreatePredictions(userData):
    days = []
    for i in range(len(userData)):
        days.append(i)
    days = np.array(days)
    
    
    #get a 7 days worth of prediction
    
    predictionDays = []
    predictionDates = []
    for i in range(7):
        predictionDays.append(i + len(userData))
        predictionDates.append(userData['Dates'][len(userData) - 1] + datetime.timedelta(days=i))
    predictionDays = np.array(predictionDays)
    predictionDates = np.array(predictionDates)

    #Do predictions
    predictionIncome = PerformRegression(days, userData['Income'], predictionDays)
    predictionIncome = predictionIncome.reshape(7)
    predictionSavings = PerformRegression(days, userData['Savings'], predictionDays)
    predictionSavings = predictionSavings.reshape(7)
    predictionShopping = PerformRegression(days, userData['Shopping'], predictionDays)
    predictionShopping = predictionShopping.reshape(7)
    predictionHealth = PerformRegression(days, userData['Health'], predictionDays)
    predictionHealth = predictionHealth.reshape(7)
    predictionFood = PerformRegression(days, userData['Food'], predictionDays)
    predictionFood = predictionFood.reshape(7)
    predictionOther = PerformRegression(days, userData['Other'], predictionDays)
    predictionOther = predictionOther.reshape(7)
    predictionDailySpending = PerformRegression(days, userData['DailySpending'], predictionDays)
    predictionDailySpending = predictionDailySpending.reshape(7)
    
    #Used For prediction plot
    
    # predictionDays = []
    # predictionDates = []
    # for i in range(38):
        # predictionDays.append(i)
        # predictionDates.append(userData['Dates'][0] + datetime.timedelta(days=i))
    # predictionDays = np.array(predictionDays)
    # predictionDates = np.array(predictionDates)
    
    
    # #Do predictions
    # predictionIncome = PerformRegression(days, userData['Income'], predictionDays)
    # predictionIncome = predictionIncome.reshape(38)
    # predictionSavings = PerformRegression(days, userData['Savings'], predictionDays)
    # predictionSavings = predictionSavings.reshape(38)
    # predictionShopping = PerformRegression(days, userData['Shopping'], predictionDays)
    # predictionShopping = predictionShopping.reshape(38)
    # predictionHealth = PerformRegression(days, userData['Health'], predictionDays)
    # predictionHealth = predictionHealth.reshape(38)
    # predictionFood = PerformRegression(days, userData['Food'], predictionDays)
    # predictionFood = predictionFood.reshape(38)
    # predictionOther = PerformRegression(days, userData['Other'], predictionDays)
    # predictionOther = predictionOther.reshape(38)
    # predictionDailySpending = PerformRegression(days, userData['DailySpending'], predictionDays)
    # predictionDailySpending = predictionDailySpending.reshape(38)
    # ##
    
    my_dict = {'Dates' : predictionDates,
    'Income' : predictionIncome, 'Savings' : predictionSavings,
    'Shopping' : predictionShopping, 'Health' : predictionHealth,
    'Food' : predictionFood, 'Other' : predictionOther,
    'DailySpending' : predictionDailySpending}
    predictionDataFrame = pd.DataFrame(my_dict, index = predictionDays)
    
    return predictionDataFrame
    
    
def PrepareDatabase(userData, prediction, bankingData):   
    conn = sqlite3.connect('UserESDatabase')
    c = conn.cursor()
    conn.commit()
    userData.to_sql('UserESTable', conn, if_exists = 'replace')
    prediction.to_sql('UserESPredictionsTable', conn, if_exists = 'replace')
    bankingData.to_sql('UserBankDataTable', conn, if_exists = 'replace')

    
    
def main():
    userData = ReadData()
    predictions = CreatePredictions(userData)
    bankingData = ReadBankingData()
    predictions['Income'] = np.round(predictions['Income'], decimals = 2)
    predictions['Savings'] = np.round(predictions['Savings'], decimals = 2)
    predictions['Shopping'] = np.round(predictions['Shopping'], decimals = 2)
    predictions['Health'] = np.round(predictions['Health'], decimals = 2)
    predictions['Food'] = np.round(predictions['Food'], decimals = 2)
    predictions['Other'] = np.round(predictions['Other'], decimals = 2)
    predictions['DailySpending'] = np.round(predictions['DailySpending'], decimals = 2)
    
    
    # #PLOT FOR PRESENTATION
    
    # fig1, ax1 = plt.subplots(figsize = (15,5))
    # ax1.plot(userData['Dates'], userData['Food'], '.r', label = 'Food Expenses Data')
    # ax1.plot(userData['Dates'], userData['DailySpending'], '.b', label = 'Daily Expenses Data')
    # ax1.title.set_text("Expenses vs Cost")
    # ax1.set_ylabel("Expenses")
    # ax1.set_xlabel("Time")
    # plt.legend()
    # plt.savefig('plot1.png')
    
    
    # fig2, ax2 = plt.subplots(figsize = (15,5))
    # ax2.plot(userData['Dates'], userData['Food'], '.r', label = 'Food Expenses Data')
    # ax2.plot(userData['Dates'], userData['DailySpending'], '.b', label = 'Daily Expenses Data')
    # ax2.plot(predictions['Dates'], predictions['Food'], '-r', label = 'Food Expenses Predictions')
    # ax2.plot(predictions['Dates'], predictions['DailySpending'], '-b', label = 'Daily Expenses Predictions')
    # ax2.title.set_text("Expenses vs Cost")
    # ax2.set_ylabel("Expenses")
    # ax2.set_xlabel("Time")
    # plt.legend()
    # plt.savefig('plot2.png')
    
    #uncomment after
    # sumPrediction = []
    # sumPrediction.append(predictions['Income'].sum())
    # sumPrediction.append(predictions['Savings'].sum())
    # sumPrediction.append(predictions['Shopping'].sum())
    # sumPrediction.append(predictions['Health'].sum())
    # sumPrediction.append(predictions['Food'].sum())
    # sumPrediction.append(predictions['Other'].sum())
    # sumPrediction.append(predictions['DailySpending'].sum())
    #print(sumPrediction)
    

    PrepareDatabase(userData, predictions, bankingData)   

    
if __name__ == '__main__':
    main()
