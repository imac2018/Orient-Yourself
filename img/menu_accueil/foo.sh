#!/bin/bash


sum=$((669+510+1107+456+213+300+210+231+195));
echo 100*669 /${sum} | bc -l > /tmp/foo.txt 
echo 100*510 /${sum} | bc -l >>/tmp/foo.txt 
echo 100*1107/${sum} | bc -l >>/tmp/foo.txt 
echo 100*456 /${sum} | bc -l >>/tmp/foo.txt 
echo 100*213 /${sum} | bc -l >>/tmp/foo.txt 
echo 100*300 /${sum} | bc -l >>/tmp/foo.txt 
echo 100*210 /${sum} | bc -l >>/tmp/foo.txt 
echo 100*231 /${sum} | bc -l >>/tmp/foo.txt 
echo 100*195 /${sum} | bc -l >>/tmp/foo.txt
