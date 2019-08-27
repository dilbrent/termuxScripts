#!/bin/sh
export parrot="`termux-dialog speech | grep text | awk -F'"' '{ print $4 }'`"
echo $parrot
echo $parrot | termux-tts-speak
