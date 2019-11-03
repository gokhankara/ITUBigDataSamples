

# -*- coding: utf-8 -*-
"""
Created on Thu Jun  6 15:14:01 2019

@author: Bülent Güloğlu
"""

import numpy
import scipy.stats
import matplotlib.pyplot as plt
import pandas
from datetime import datetime
import pandas as pd
from pathlib import Path


from yahoofinancials import YahooFinancials

def retrieve_stock_data(ticker, start, end):
    json = YahooFinancials(ticker).get_historical_price_data(start, end, 'daily')
    df = pandas.DataFrame(columns=['open','close','adjclose'])
    for row in json[ticker]['prices']:
        date = datetime.fromisoformat(row['formatted_date'])
        df.loc[date] = [row['open'], row['close'], row['adjclose']]
    df.index.name = "date"
    return df


dan = retrieve_stock_data("DANOY", "2018-01-01", "2019-01-01")


start = "2016-01-01"
end   = "2019-01-01"
CAC = retrieve_stock_data("^FCHI", start, end)
DAX = retrieve_stock_data("^GDAXI", start, end)
DJI = retrieve_stock_data("^DJI", start, end)
BIST = retrieve_stock_data("^XU100", start, end)
SP=retrieve_stock_data("^GSPC", start, end)
Nasdaq=retrieve_stock_data("^IXIC", start, end)



df = pandas.DataFrame({ 'CAC': CAC["adjclose"],
                        'DAX': DAX["adjclose"],
                        'DJI': DJI["adjclose"],
                        'SP': SP["adjclose"],
                        'Nasdaq': Nasdaq["adjclose"],
                        'BIST': BIST["adjclose"] })

df2=df.dropna()
a=df2.describe()

datareturn=df2.pct_change()
datareturn=datareturn.dropna()
d=datareturn.describe()



df3 = pandas.DataFrame({ 'CAC': CAC["adjclose"].pct_change(),
                        'DAX': DAX["adjclose"].pct_change(),
                        'DJI': DJI["adjclose"].pct_change(),
                        'BIST': BIST["adjclose"].pct_change() })
dfna = df3.dropna()
dfna.describe()







start = "2016-06-01"
end   = "2019-06-01"

DJI = retrieve_stock_data("^DJI", start, end)

df = pandas.DataFrame({'DJI': DJI["adjclose"]}) #taking just adjusted close price
datareturn=df.pct_change() # calculating return
df2=datareturn.dropna()  # dropping missing values

apple = retrieve_stock_data("^AAPL", start, end)
apple = retrieve_stock_data("AAPL", start, end)
mcrsft=retrieve_stock_data("MSFT", start, end)
df3 = pandas.DataFrame({ 'apple': apple["adjclose"].pct_change(),
                        'mcrsft': mcrsft["adjclose"].pct_change(),
                        'DJI': DJI["adjclose"].pct_change()})  
dfna = df3.dropna()






#investing.com
#pip install investpy==0.9.7

import investpy

df = investpy.get_stock_recent_data(stock='BBVA',
                                    country='spain')
print(df.head())



df = investpy.get_stock_historical_data(stock='BBVA',
                                        country='spain',
                                        from_date='01/01/2010',
                                        to_date='01/01/2019')
print(df.head())

df = investpy.get_indices_historical_data(indices='ise-100',
                                        country='turkey',
                                        from_date='01/01/2010',
                                        to_date='01/01/2019')
print(df.head())


BIST100=investpy.get_index_historical_data(index='BIST 100', country='turkey', from_date='01/01/2001', to_date='27/10/2019',order='ascending')
writer = pd.ExcelWriter('BIST100.xlsx', engine='xlsxwriter')
BIST100.to_excel(writer, 'Sheet1')
writer.save()