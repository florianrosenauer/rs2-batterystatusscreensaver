#!/usr/bin/env python
import os
import sys

from pyA20.gpio import gpio
from pyA20.gpio import port

led = port.PH2

gpio.init()
gpio.setcfg(led, gpio.OUTPUT)

gpio.output(led, 1)
