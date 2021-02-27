#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[74]:


df=pd.read_excel("highRisk.xlsm")

def getUpdatesForId(account_key):
	global df
	highriskcountries=df["ENTITY_KEY"].values.tolist()
	df=pd.read_excel("customer_ACCOUNT.xlsm")
	accountKeys=df["account_key"].values.tolist()
	primary_party_key=df["primary_party_key"].values.tolist()
	acct_open_date=df["acct_open_date"].values.tolist()
	accountInfo={}
	for no,i in enumerate(accountKeys):
	    accountInfo[i]={"primary_party_key":primary_party_key[no],"acct_open_date":acct_open_date[no]}
	df=pd.read_excel("customer_info.xlsm")

	party_key=df["party_key"].values.tolist()
	residential_country_cd=df["residential_country_cd"].values.tolist()
	party_open_date=df["party_open_date"].values.tolist()
	customerInfo={}
	for no,i in enumerate(party_key):
	    customerInfo[i]={"residential_country_cd":residential_country_cd[no],"party_open_date":party_open_date[no]}
	
	df=pd.read_excel("tarsactions.xlsm")
	df1=df.loc[df[' Account_Key']==account_key]
	risk=False
	transCount=len(df1)
	customerCountry=customerInfo[accountInfo[account_key]["primary_party_key"]]["residential_country_cd"]
	if customerCountry in highriskcountries:
	    risk=True
	    print("High risk at case H1")
	else:
	    print("No risk at case H1")

	df2=df1.loc[df[' Transaction Type']=="INN"]
	tran_amount_inn=sum(df2[" Transaction_Amount(in $)"])
	if tran_amount_inn>1000:
	    print("High risk at case H2")
	else:
	    print("no risk at case H2")


	df2=df1.loc[df[' Transaction Type']=="OUT"]
	tran_amount_out=sum(df2[" Transaction_Amount(in $)"])
	if sum(df2[" Transaction_Amount(in $)"])>800:
	    print("High risk at case H3")
	else:
	    print("no risk at case H3")
	transfordays={}
	data=df[" Transaction_Date"].values.tolist()
	for i in data:
	    if i in transfordays:
	        transfordays[i]+=1
	    else:
	        transfordays[i]=1
	max=0
	for i in transfordays:
	    if (transfordays[i]>max):
	        max=transfordays[i]
	return (transCount,tran_amount_inn,tran_amount_out,max,risk)

def risker(tran_count,tran_amount_inn,tran_amount_out,tran_perday,risk_country):
    if risk_country==True and tran_count>10:
        return "H1"
    elif tran_amount_inn>1000:
        return "H2"
    elif tran_amount_out>800:
        return "H3"
    elif tran_perday>20:
        return "H4"
    elif (risk_country==True or risk_country==False) and tran_count>6:
        return "M1"
    elif tran_amount_inn>600 and tran_amount_inn<=1000:
        return "M2"
    elif tran_amount_out > 500 and tran_amount_out <= 800:
        return "M3"
    elif tran_perday>10 and tran_perday<=20:
        return "M4"
    elif risk_country==False and tran_count<10:
        return "L1"
    elif tran_amount_inn<=600:
        return "L2"
    elif tran_amount_out<=500:
        return "L3"
    elif tran_perday<=10:
        return "L4"
    return True

transCount,tran_amount_inn,tran_amount_out,max,risk=getUpdatesForId("CASP_D00630169780010")
print(transCount,tran_amount_inn,tran_amount_out,max,risk)
print(risker(transCount,tran_amount_inn,tran_amount_out,max,risk))