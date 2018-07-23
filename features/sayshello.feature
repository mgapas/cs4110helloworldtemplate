Feature: Program should say Hello World!
	Scenario: hello should print "Hello World!"
		When I run `java ../../bin/HelloWorld.java`
		Then the output should match /[Hh]ello.*[Ww]orld\!/
		Then 50 points are awarded
