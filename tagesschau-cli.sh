#!/bin/sh
echo -e "\e[44m+++ Schlagzeilen von tagesschau.de +++ \e[0m"
python3 -c "import requests, sys;
response = requests.get('http://www.tagesschau.de/api2/homepage'); 
jsonResponse = response.json();
for i in range(5):
	print(jsonResponse['news'][i]['topline'], ': ', jsonResponse['news'][i]['title'])"
echo -e "\e[44mmehr auf https://tagesschau.de.\e[0m"
