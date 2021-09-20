#!/bin/bash

rc-service mariadb setup
rc-update add mariadb default
rc-status default
rc-service mariadb start
mysql
