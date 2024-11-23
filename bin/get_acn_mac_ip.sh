#!/bin/bash
arp -a | grep 3c:6:30:2c:eb:ec | cut -d' ' -f2 | sed 's/(//g' | sed 's/)//g'
