@ECHO OFF
C:
CD\
CLS

:MENU
CLS

ECHO ============= MENU NAME =============
ECHO -------------------------------------
ECHO 1.  Play in to Wall
ECHO 2.  Play in VLC
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='Q' GOTO Quit

GOTO ERROR

CLS

:MENU2
CLS

ECHO ============= MENU NAME =============
ECHO -------------------------------------
ECHO 1.  ShimoroShow (GoodGame)
ECHO 2.  RTd online  (YouTube)
ECHO 3.  War Thunder (twitch.tv)
ECHO 4.  EVE Online (twitch.tv)
ECHO 5.  Soaryn (twitch.tv)
ECHO -------------------------------------
ECHO 9. Custom-built
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection21
IF /I '%INPUT%'=='2' GOTO Selection22
IF /I '%INPUT%'=='3' GOTO Selection23
IF /I '%INPUT%'=='4' GOTO Selection24
IF /I '%INPUT%'=='5' GOTO Selection25
IF /I '%INPUT%'=='9' GOTO Selection29
IF /I '%INPUT%'=='Q' GOTO Quit

GOTO ERROR

CLS

:MENU3
CLS

ECHO ============= MENU NAME =============
ECHO -------------------------------------
ECHO 1.  360p
ECHO 2.  480p
ECHO 3.  720p
ECHO 4.  1080p
ECHO -------------------------------------
ECHO 5.  BEST (For twitch.tv only)
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection31
IF /I '%INPUT%'=='2' GOTO Selection32
IF /I '%INPUT%'=='3' GOTO Selection33
IF /I '%INPUT%'=='4' GOTO Selection34
IF /I '%INPUT%'=='5' GOTO Selection35
IF /I '%INPUT%'=='Q' GOTO Quit

GOTO ERROR


:Selection1

SET TO1=--player "C:\Program Files\VideoLAN\VLC\vlc.exe --sout=#transcode{vcodec=mp2v,vb=800,acodec=mpga,ab=128,channels=2,samplerate=44100}:http{mux=ts,dst=:8080/}"
GOTO MENU2

:Selection2

GOTO MENU2

:Selection21

SET FROM1=http://goodgame.ru/channel/SHIMORO/13/
GOTO MENU3

:Selection22

SET FROM1=http://www.youtube.com/watch?v=P8-yDTXnXAI
GOTO MENU3

:Selection23

SET FROM1=http://www.twitch.tv/darthclide
GOTO MENU3

:Selection24

SET FROM1=http://www.twitch.tv/sardcaid
GOTO MENU3

:Selection25

SET FROM1=http://www.twitch.tv/soaryn
GOTO MENU3


:Selection29

SET FROM1=
SET /P FROM1=Please enter URL:

GOTO MENU3

:Selection31

SET Q1=360p
GOTO PLAY

:Selection32

SET Q1=480p
GOTO PLAY

:Selection33

SET Q1=720p
GOTO PLAY

:Selection34

SET Q1=1080p
GOTO PLAY

:Selection35

SET Q1=best
GOTO PLAY

:PLAY
CLS

livestreamer %TO1% %FROM1% %Q1%
GOTO Quit

:ERROR

CLS

ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a number from the Main
echo Menu [1-9] or select 'Q' to quit.
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU

:Quit
CLS

ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE>NUL
EXIT