#!/bin/bash

#Change this to your VM UUID
UUID="bfa35d0e-0ec6-f899-a0bf-2582fdff31b6"

#Change this to your export path and filename
DST="/destination-path/destination-name.xva"

xe vm-shutdown vm=$UUID
time xe vm-export vm=$UUID filename=$DST
xe vm-start vm=$UUID
