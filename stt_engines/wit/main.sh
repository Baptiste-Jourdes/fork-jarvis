#!/bin/bash
_wit_transcribe () {
	result=`/usr/bin/python3 /home/debian/vosk-api/python/example/test_simple.py $audiofile`
echo $result  > $forder
}

wit_STT () { # STT () {} Transcribes audio file $1 and writes corresponding text in $forder
    LISTEN $audiofile || return $?
    _wit_transcribe &
   jv_spinner $!
}
