@echo off&setlocal enabledelayedexpansion
mode 80,30
title Chess
call settings.bat
color %color1%%color2%
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
set "DEL=%%a"
)
:homescreen
cls
echo.&echo.
call font.bat
echo.&echo.
echo.                                ษออออออออออออป
echo.                                บ Start Game บ
echo.                                ศออออออออออออผ
echo.&echo.&echo.
:loop1
call Button 33 15 "        " 33 20 "        " # Press >nul
Getinput /m %Press% /h 70
if %errorlevel%==1 (goto chooseplayer)
if %errorlevel%==2 (goto settings)
goto loop1
:chooseplayer
cls
echo.&echo.
echo. Enter a name for Player 1:
set /p player1=Name:
echo.
echo. Enter a name for Player 2:
set /p player2=Name:
cls
echo.&echo.
echo. Choose a color for %player1%:
echo.
if not %color1%==0 (set tempcolor=0) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "        Black"
if not %color1%==1 (set tempcolor=1) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Darkblue"
if not %color1%==2 (set tempcolor=2) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Darkgreen"
if not %color1%==3 (set tempcolor=3) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Bluegreen"
if not %color1%==4 (set tempcolor=4) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Darkred"
if not %color1%==5 (set tempcolor=5) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Purple"
echo.
if not %color1%==6 (set tempcolor=6) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "        Ocher"
if not %color1%==7 (set tempcolor=7) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Lightgrey"
if not %color1%==8 (set tempcolor=8) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "   Darkgrey"
if not %color1%==9 (set tempcolor=9) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "       Blue"
if not %color1%==a (set tempcolor=a) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "        Green"
if not %color1%==b (set tempcolor=b) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "      Cyan"
echo.
if not %color1%==c (set tempcolor=c) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "                    Red"
if not %color1%==d (set tempcolor=d) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "       Magenta"
if not %color1%==e (set tempcolor=e) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "      Yellow"
if not %color1%==f (set tempcolor=f) else (set tempcolor=0)
call colortext.bat %color1%%tempcolor% "       White"
:loop2
call Button 4 3 "        " 15 3 "        " 27 3 "        " 40 3 "        " 52 3 "        " 63 3 "        " 4 4 "        " 15 4 "        " 27 4 "        " 40 4 "        " 52 4 "        " 63 4 "        " 15 5 "        " 27 5 "        " 40 5 "        " 52 5 "        " # Press >nul
Getinput /m %Press% /h 70
if %errorlevel%==1 (set colorplayer1=0&goto choosecolorplayer2)
if %errorlevel%==2 (set colorplayer1=1&goto choosecolorplayer2)
if %errorlevel%==3 (set colorplayer1=2&goto choosecolorplayer2)
if %errorlevel%==4 (set colorplayer1=3&goto choosecolorplayer2)
if %errorlevel%==5 (set colorplayer1=4&goto choosecolorplayer2)
if %errorlevel%==6 (set colorplayer1=5&goto choosecolorplayer2)
if %errorlevel%==7 (set colorplayer1=6&goto choosecolorplayer2)
if %errorlevel%==8 (set colorplayer1=7&goto choosecolorplayer2)
if %errorlevel%==9 (set colorplayer1=8&goto choosecolorplayer2)
if %errorlevel%==10 (set colorplayer1=9&goto choosecolorplayer2)
if %errorlevel%==11 (set colorplayer1=a&goto choosecolorplayer2)
if %errorlevel%==12 (set colorplayer1=b&goto choosecolorplayer2)
if %errorlevel%==13 (set colorplayer1=c&goto choosecolorplayer2)
if %errorlevel%==14 (set colorplayer1=d&goto choosecolorplayer2)
if %errorlevel%==15 (set colorplayer1=e&goto choosecolorplayer2)
if %errorlevel%==16 (set colorplayer1=g&goto choosecolorplayer2)
goto loop2
:choosecolorplayer2
echo.&echo.&echo.&echo.
echo. Choose a color for %player2%:
echo.
if not %color1%==0 (set tempcolor=0) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "        Black"
if not %color1%==1 (set tempcolor=1) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Darkblue"
if not %color1%==2 (set tempcolor=2) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Darkgreen"
if not %color1%==3 (set tempcolor=3) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Bluegreen"
if not %color1%==4 (set tempcolor=4) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Darkred"
if not %color1%==5 (set tempcolor=5) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Purple"
echo.
if not %color1%==6 (set tempcolor=6) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "        Ocher"
if not %color1%==7 (set tempcolor=7) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "    Lightgrey"
if not %color1%==8 (set tempcolor=8) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "   Darkgrey"
if not %color1%==9 (set tempcolor=9) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "       Blue"
if not %color1%==a (set tempcolor=a) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "        Green"
if not %color1%==b (set tempcolor=b) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "      Cyan"
echo.
if not %color1%==c (set tempcolor=c) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "                    Red"
if not %color1%==d (set tempcolor=d) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "       Magenta"
if not %color1%==e (set tempcolor=e) else (set tempcolor=f)
call colortext.bat %color1%%tempcolor% "      Yellow"
if not %color1%==f (set tempcolor=f) else (set tempcolor=0)
call colortext.bat %color1%%tempcolor% "       White"
:loop3
call Button 4 11 "        " 15 11 "        " 27 11 "        " 40 11 "        " 52 11 "        " 63 11 "        " 4 11 "        " 15 12 "        " 27 12 "        " 40 12 "        " 52 12 "        " 63 12 "        " 15 13 "        " 27 13 "        " 40 13 "        " 52 13 "        " # Press >nul
Getinput /m %Press% /h 70
if %errorlevel%==1 (set colorplayer2=0&goto pregame)
if %errorlevel%==2 (set colorplayer2=1&goto pregame)
if %errorlevel%==3 (set colorplayer2=2&goto pregame)
if %errorlevel%==4 (set colorplayer2=3&goto pregame)
if %errorlevel%==5 (set colorplayer2=4&goto pregame)
if %errorlevel%==6 (set colorplayer2=5&goto pregame)
if %errorlevel%==7 (set colorplayer2=6&goto pregame)
if %errorlevel%==8 (set colorplayer2=7&goto pregame)
if %errorlevel%==9 (set colorplayer2=8&goto pregame)
if %errorlevel%==10 (set colorplayer2=9&goto pregame)
if %errorlevel%==11 (set colorplayer2=a&goto pregame)
if %errorlevel%==12 (set colorplayer2=b&goto pregame)
if %errorlevel%==13 (set colorplayer2=c&goto pregame)
if %errorlevel%==14 (set colorplayer2=d&goto pregame)
if %errorlevel%==15 (set colorplayer2=e&goto pregame)
if %errorlevel%==16 (set colorplayer2=f&goto pregame)
goto loop3
:pregame
title Chess - %Player1% vs. %Player2%
cls
set /a move=0
call "pieces\rook.bat"
call "pieces\knight.bat"
call "pieces\bishop.bat"
call "pieces\queen.bat"
call "pieces\king.bat"
call "pieces\pawn.bat"

set "a11=%arooka1%"
set "b11=%arookb1%"
set "a21=%aknighta1%"
set "b21=%aknightb1%"
set "a31=%abishopa1%"
set "b31=%abishopb1%"
set "a41=%aqueena1%"
set "b41=%aqueenb1%"
set "a51=%akinga1%"
set "b51=%akingb1%"
set "a61=%bbishopa1%"
set "b61=%bbishopb1%"
set "a71=%bknighta1%"
set "b71=%bknightb1%"
set "a81=%brooka1%"
set "b81=%brookb1%"
set "a12=%apawna1%"
set "b12=%apawnb1%"
set "a22=%bpawna1%"
set "b22=%bpawnb1%"
set "a32=%cpawna1%"
set "b32=%cpawnb1%"
set "a42=%dpawna1%"
set "b42=%dpawnb1%"
set "a52=%epawna1%"
set "b52=%epawnb1%"
set "a62=%fpawna1%"
set "b62=%fpawnb1%"
set "a72=%gpawna1%"
set "b72=%gpawnb1%"
set "a82=%hpawna1%"
set "b82=%hpawnb1%"
set "a13= ### "
set "b13= ### "
set "a23= ### "
set "b23= ### "
set "a33= ### "
set "b33= ### "
set "a43= ### "
set "b43= ### "
set "a53= ### "
set "b53= ### "
set "a63= ### "
set "b63= ### "
set "a73= ### "
set "b73= ### "
set "a83= ### "
set "b83= ### "
set "a14= ### "
set "b14= ### "
set "a24= ### "
set "b24= ### "
set "a34= ### "
set "b34= ### "
set "a44= ### "
set "b44= ### "
set "a54= ### "
set "b54= ### "
set "a64= ### "
set "b64= ### "
set "a74= ### "
set "b74= ### "
set "a84= ### "
set "b84= ### "
set "a15= ### "
set "b15= ### "
set "a25= ### "
set "b25= ### "
set "a35= ### "
set "b35= ### "
set "a45= ### "
set "b45= ### "
set "a55= ### "
set "b55= ### "
set "a65= ### "
set "b65= ### "
set "a75= ### "
set "b75= ### "
set "a85= ### "
set "b85= ### "
set "a16= ### "
set "b16= ### "
set "a26= ### "
set "b26= ### "
set "a36= ### "
set "b36= ### "
set "a46= ### "
set "b46= ### "
set "a56= ### "
set "b56= ### "
set "a66= ### "
set "b66= ### "
set "a76= ### "
set "b76= ### "
set "a86= ### "
set "b86= ### "
set "a17=%apawna2%"
set "b17=%apawnb2%"
set "a27=%bpawna2%"
set "b27=%bpawnb2%"
set "a37=%cpawna2%"
set "b37=%cpawnb2%"
set "a47=%dpawna2%"
set "b47=%dpawnb2%"
set "a57=%epawna2%"
set "b57=%epawnb2%"
set "a67=%fpawna2%"
set "b67=%fpawnb2%"
set "a77=%gpawna2%"
set "b77=%gpawnb2%"
set "a87=%hpawna2%"
set "b87=%hpawnb2%"
set "a18=%arooka2%"
set "b18=%arookb2%"
set "a28=%aknighta2%"
set "b28=%aknightb2%"
set "a38=%abishopa2%"
set "b38=%abishopb2%"
set "a48=%aqueena2%"
set "b48=%aqueenb2%"
set "a58=%akinga2%"
set "b58=%akingb2%"
set "a68=%bbishopa2%"
set "b68=%bbishopb2%"
set "a78=%bknighta2%"
set "b78=%bknightb2%"
set "a88=%brooka2%"
set "b88=%brookb2%"
set move=1
set move2=0
set turn=1
call "pieces\board.bat"
set boarda=%board01%
set str=%board02%
set boardb=%str:~0,1%
set boardc=%board04%
set boardd=%board25%
:startgame
set /a move2=%move2%+1
set /a move3=%move3%+1
if %move2%==3 (
	set move2=1
	)
set /a turn=%turn%+1
if %turn%==6 (set turn=2)
cls
if %turn%==2 (echo.       %player1%'s turn:)
if %turn%==3 (echo.       %player1%'s turn:)
if %turn%==4 (echo.       %player2%'s turn:)
if %turn%==5 (echo.       %player2%'s turn:)
call colortext.bat %color1%%colorplayer1% "                                      %Player1%"
echo.
echo.              %boarda%
set countc=1
set countc2=1
set countc3=8
set countc4=1
set countc5=1
:loop5
set newcolumn=0
set newcolumnecho=0
set /a countc=%countc%+1
set /a countc3=%countc3%+1
if %countc3%==9 (
	set newcolumn=1
	set newcolumnecho=1
	set /a countc2=%countc2%+1
	set countc3=1
	set /a countc5=%countc5%+1
	if %countc5%==3 (
		set newcolumn=1
		set newcolumnecho=0
		echo.
		echo.              %boardc%
		set countc5=2
		set /a countc4=%countc4%+1
		) 
	) 
if %newcolumnecho%==1 (if not %countc%==2 (echo.))
if %newcolumn%==1 (call colortext.bat %color1%%color2% "              %boardb%")
if %countc2%==4 (set countc2=2)
if %countc2%==2 (set colorl=a)
if %countc2%==3 (set colorl=b)
if %move%==1 (
	if %countc% leq 33 (set colorc%countc3%%countc4%=%colorplayer1%)
	if %countc% geq 34 (set colorc%countc3%%countc4%=8)
	if %countc% geq 98 (set colorc%countc3%%countc4%=%colorplayer2%)
	)
set "temptext=!%colorl%%countc3%%countc4%!"
call colortext.bat %color1%!colorc%countc3%%countc4%! "%temptext% "
call colortext.bat %color1%%color2% " %boardb%"
if %colorl%%countc3%%countc4%==b88 (
	echo.
	echo.              %boardd%
	call colortext.bat %color1%%colorplayer2% "                                      %Player2%"
	goto loop4
	)
goto loop5
:loop4
call Buttonchess.bat 14 2 "   " 14 2 "   " 20 2 "   " 26 2 "   " 32 2 "   " 38 2 "   " 44 2 "   " 50 2 "   " 56 2 "   " 14 5 "   " 20 5 "   " 26 5 "   " 32 5 "   " 38 5 "   " 44 5 "   " 50 5 "   " 56 5 "   " 14 8 "   " 20 8 "   " 26 8 "   " 32 8 "   " 38 8 "   " 44 8 "   " 50 8 "   " 56 8 "   " 14 11 "   " 20 11 "   " 26 11 "   " 32 11 "   " 38 11 "   " 44 11 "   " 50 11 "   " 56 11 "   " 14 14 "   " 20 14 "   " 26 14 "   " 32 14 "   " 38 14 "   " 44 14 "   " 50 14 "   " 56 14 "   " 14 17 "   " 20 17 "   " 26 17 "   " 32 17 "   " 38 17 "   " 44 17 "   " 50 17 "   " 56 17 "   " 14 20 "   " 20 20 "   " 26 20 "   " 32 20 "   " 38 20 "   " 44 20 "   " 50 20 "   " 56 20 "   " 14 23 "   " 20 23 "   " 26 23 "   " 32 23 "   " 38 23 "   " 44 23 "   " 50 23 "   " 56 23 "   " # Press >nul
Getinput /m %Press% /h 70
if %errorlevel%==2 (set clicked=11&goto setclicked)
if %errorlevel%==3 (set clicked=21&goto setclicked)
if %errorlevel%==4 (set clicked=31&goto setclicked)
if %errorlevel%==5 (set clicked=41&goto setclicked)
if %errorlevel%==6 (set clicked=51&goto setclicked)
if %errorlevel%==7 (set clicked=61&goto setclicked)
if %errorlevel%==8 (set clicked=71&goto setclicked)
if %errorlevel%==9 (set clicked=81&goto setclicked)
if %errorlevel%==10 (set clicked=12&goto setclicked)
if %errorlevel%==11 (set clicked=22&goto setclicked)
if %errorlevel%==12 (set clicked=32&goto setclicked)
if %errorlevel%==13 (set clicked=42&goto setclicked)
if %errorlevel%==14 (set clicked=52&goto setclicked)
if %errorlevel%==15 (set clicked=62&goto setclicked)
if %errorlevel%==16 (set clicked=72&goto setclicked)
if %errorlevel%==17 (set clicked=82&goto setclicked)
if %errorlevel%==18 (set clicked=13&goto setclicked)
if %errorlevel%==19 (set clicked=23&goto setclicked)
if %errorlevel%==20 (set clicked=33&goto setclicked)
if %errorlevel%==21 (set clicked=43&goto setclicked)
if %errorlevel%==22 (set clicked=53&goto setclicked)
if %errorlevel%==23 (set clicked=63&goto setclicked)
if %errorlevel%==24 (set clicked=73&goto setclicked)
if %errorlevel%==25 (set clicked=83&goto setclicked)
if %errorlevel%==26 (set clicked=14&goto setclicked)
if %errorlevel%==27 (set clicked=24&goto setclicked)
if %errorlevel%==28 (set clicked=34&goto setclicked)
if %errorlevel%==29 (set clicked=44&goto setclicked)
if %errorlevel%==30 (set clicked=54&goto setclicked)
if %errorlevel%==31 (set clicked=64&goto setclicked)
if %errorlevel%==32 (set clicked=74&goto setclicked)
if %errorlevel%==33 (set clicked=84&goto setclicked)
if %errorlevel%==34 (set clicked=15&goto setclicked)
if %errorlevel%==35 (set clicked=25&goto setclicked)
if %errorlevel%==36 (set clicked=35&goto setclicked)
if %errorlevel%==37 (set clicked=45&goto setclicked)
if %errorlevel%==38 (set clicked=55&goto setclicked)
if %errorlevel%==39 (set clicked=65&goto setclicked)
if %errorlevel%==40 (set clicked=75&goto setclicked)
if %errorlevel%==41 (set clicked=85&goto setclicked)
if %errorlevel%==42 (set clicked=16&goto setclicked)
if %errorlevel%==43 (set clicked=26&goto setclicked)
if %errorlevel%==44 (set clicked=36&goto setclicked)
if %errorlevel%==45 (set clicked=46&goto setclicked)
if %errorlevel%==46 (set clicked=56&goto setclicked)
if %errorlevel%==47 (set clicked=66&goto setclicked)
if %errorlevel%==48 (set clicked=76&goto setclicked)
if %errorlevel%==49 (set clicked=86&goto setclicked)
if %errorlevel%==50 (set clicked=17&goto setclicked)
if %errorlevel%==51 (set clicked=27&goto setclicked)
if %errorlevel%==52 (set clicked=37&goto setclicked)
if %errorlevel%==53 (set clicked=47&goto setclicked)
if %errorlevel%==54 (set clicked=57&goto setclicked)
if %errorlevel%==55 (set clicked=67&goto setclicked)
if %errorlevel%==56 (set clicked=77&goto setclicked)
if %errorlevel%==57 (set clicked=87&goto setclicked)
if %errorlevel%==58 (set clicked=18&goto setclicked)
if %errorlevel%==59 (set clicked=28&goto setclicked)
if %errorlevel%==60 (set clicked=38&goto setclicked)
if %errorlevel%==61 (set clicked=48&goto setclicked)
if %errorlevel%==62 (set clicked=58&goto setclicked)
if %errorlevel%==63 (set clicked=68&goto setclicked)
if %errorlevel%==64 (set clicked=78&goto setclicked)
if %errorlevel%==65 (set clicked=88&goto setclicked)
goto loop4
:setclicked
set /a move=%move%+1
if %move2%==1 (goto move1)
if %move2%==2 (goto move2)
:move1
set oldposition=%clicked%
set colorc%oldposition%=c
goto startgame
:move2
set newposition=%clicked%
set newcolor=!colorc%newposition%!
set aoldlook=!a%oldposition%!
set boldlook=!b%oldposition%!
set colorc%oldposition%=8
echo set "aoldlook=%%a%oldposition%%%">temp.bat
call temp.bat
del temp.bat
echo set "boldlook=%%b%oldposition%%%">temp.bat
call temp.bat
del temp.bat
if %turn%==3 (
	set colorc%newposition%=%colorplayer1%
	)
if %turn%==5 (
	set colorc%newposition%=%colorplayer2%
	)
set "a%newposition%=%aoldlook%"
set "b%newposition%=%boldlook%"
set "a%oldposition%= ### "
set "a%oldposition%color=8"
set "b%oldposition%color=8"
set "b%oldposition%= ### "
goto startgame
:illegalmove
color cf
cls
echo.&echo.
echo.   ILLEGAL MOVE!
echo.   Try again...
pause>nul
set /a turn=%turn%-2
set /a move3=%move3%-2
set /a move=%move%-1
set /a move2=%move2%-1
color %color1%%color2%
set a%oldposition%color=%oldcolor%
goto startgame
:settings
goto homescreen