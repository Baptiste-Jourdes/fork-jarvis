#!/bin/bash
echo "Transcribing..."
	result= `/usr/bin/python3 /home/debian/vosk-api/python/example/test_simple.py ./test.wav`
echo $result
