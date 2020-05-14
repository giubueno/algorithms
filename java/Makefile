# Assuming that you have GraalVM
#	install using SDK Man: 
#		sdk install java 20.0.0.r11-grl
#
# with native-image enabled
#	install: 
#		gu install native-image
echo: Echo.class
	native-image Echo

Echo.class:
	javac Echo.java

clean:
	rm ./Echo.class
	rm ./echo
