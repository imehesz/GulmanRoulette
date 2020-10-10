#!/bin/bash

number=$RANDOM
let "number %= 366";

link="https://sheets.googleapis.com/v4/spreadsheets/1zxgIQpGKZ5g2Kzbk0Xk6WGJGBG-jNrenTRv5OBzHCo8/values/Sheet1!A$number:D$number?key=AIzaSyBLySbKUYIzPNpscruuGrSpnA3VeZ1s";

`wget -O daily-tip.json --restrict-file-names=nocontrol $link`
