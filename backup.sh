#!/bin/bash
echo Copy this file to the root of the folders to backup...
read key
tar czvf backup_$(date +%Y%m%d%H%M%S).tar.gz .
