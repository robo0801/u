import pyfirmata

board = pyfirmata.Arduino('/dev/ttyACM0')

while 1:
	board.digital[6].write(1)
	board.pass_time(1)
	board.digital[6].write(0)
	board.pass_time(1)
