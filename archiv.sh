#!/bin/bash

mysql -u root -p prueba -e "select ci from persona;" | grep -w "12345"

