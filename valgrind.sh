#!/bin/bash

source /etc/profile.d/debuginfod.sh
valgrind -s --track-origins=yes ./test.out