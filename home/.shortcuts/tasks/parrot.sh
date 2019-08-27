#!/bin/sh
t1=$PREFIX/tmp/$$ptemp.txt
termux-dialog speech > $t1
cat $t1
t2=$PREFIX/tmp/$$ptemp2.txt
cat $t1 | grep text | cut -d'"' -f 4  > $t2
rm $t1
cat $t2
cat $t2 | termux-tts-speak
rm $t2
