#!/usr/bin/python3

#Button Switch
import RPi.GPIO as GPIO
import time
GPIO.setwarnings(False)

GPIO.setmode(GPIO.BCM)

GPIO.setup(18,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(25,GPIO.OUT)

while True:
        input_state = GPIO.input(18)
        if input_state == False:
                print('Button Pressed')
                GPIO.output(25,True)
                time.sleep(0.3)
        else:
                GPIO.output(25,False)