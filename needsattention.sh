#!/bin/bash

echo "The following needs attention"

grep "Start typing here..." ./Writerside/topics/ -R | sort

