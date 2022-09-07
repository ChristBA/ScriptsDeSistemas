#!/bin/bash

eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa
sleep 200000 &
