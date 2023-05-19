all: compile link

compile:
	g++ -c Sound.cpp main.cpp Game.cpp Board.cpp Button.cpp Internal_Chess_Board.cpp Legal_Moves.cpp Piece.cpp Play.cpp ScreenText.cpp Shapes.cpp Special_Moves.cpp -I"E:\SFML-2.5.1-windows-gcc-7.3.0-mingw-64-bit\SFML-2.5.1\include" -DSFML_STATIC

link:
	g++ Sound.o main.o Game.o Board.o Button.o Internal_Chess_Board.o Legal_Moves.o Piece.o Play.o ScreenText.o Shapes.o Special_Moves.o -o Chess -L"E:\SFML-2.5.1-windows-gcc-7.3.0-mingw-64-bit\SFML-2.5.1\lib" -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -mwindows -lsfml-main

clean:
	rm -f main *.o