build_tests:
#	rm -f tests.exe
	g++ tests.cpp -o tests.exe -lgtest -lgtest_main -lpthread

run_tests:
	./tests.exe --gtest_color=yes
	
valgrind_tests:
	valgrind --tool=memcheck --leak-check=full ./tests.exe

build_reg:
#	rm -f ExploreTheRegularLabyrinth.exe
	g++ -g -std=c++11 -Wall ExploreTheRegularLabyrinth.cpp -o ExploreTheRegularLabyrinth.exe
	
run_reg:
	./ExploreTheRegularLabyrinth.exe

valgrind_reg:
	valgrind --tool=memcheck --leak-check=yes ./ExploreTheRegularLabyrinth.exe

build_twisty:
#	rm -f ExploreTheTwistyLabyrinth.exe
	g++ -g -std=c++11 -Wall ExploreTheTwistyLabyrinth.cpp -o ExploreTheTwistyLabyrinth.exe
	
run_twisty:
	./ExploreTheTwistyLabyrinth.exe

valgrind_twisty:
	valgrind --tool=memcheck --leak-check=yes ./ExploreTheTwistyLabyrinth.exe