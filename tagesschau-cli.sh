#!/bin/bash
echo -e "\e[44m"
echo -e "------------------------------"
echo -e "Top-Schlagzeilen von tageschau.de:"
for i in {0..4}
do
	topline[$i]=$(curl -s  https://www.tagesschau.de/api2/homepage/ | jq -r --arg i "$i" '.news[$i | tonumber].topline')
	title[$i]=$(curl -s https://www.tagesschau.de/api2/homepage/ | jq -r --arg i "$i" '.news[$i | tonumber].title')
done
for i in {0..4}
do
	echo -n ${topline[$i]}
	echo -n ": "
	echo  ${title[$i]}
done

echo -e "\e[44mmehr auf https://tagesschau.de"
echo -e "------------------------------\e[0m"
echo ""
