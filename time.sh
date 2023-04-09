#!/bin/bash
read time1
read time2
IFS=":" read -r h1 m1 <<< "$time1"
IFS=":" read -r h2 m2 <<< "$time2"
total_minutes=$((h1*60 + m1 + h2*60 + m2))
total_hours=$((total_minutes/60))
total_minutes=$((total_minutes%60))
result=$(printf "%02d:%02d" "$total_hours" "$total_minutes")
echo "Result is $result"
