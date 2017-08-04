# BashBot

This is my first telegram bot written on bash

## Commands

```
/weather <City>     - Weather in a city for now
/w <City>           - Short form of /w
/info               - Information about this bot  
/wset <City>        - Set default city for /weather
/ibash <Number>     - Random quote from ibash.org.ru
/loglist <Number>   - Random quote from loglist.net
/roll               - Rolling a random number from 0 to 99
/google <String>    - Send a link to google.com/String 
/md5 <String>       - Creating a md5 sum of String 
/manage <SQL query> - Manage your database (Only for admins)
```

## Starting

```
git clone https://github.com/Cuttlerat/bashbot.git
cd bashbot
```

Run `first_start` for a database and token file creation 

```
./first_start
```

Add your telegram username and tokens into `./tokens` file
```
# Tokens should be specified without any quotes
BOT_TOKEN=<YOUR TOKEN>
WEATHER_TOKEN=<YOUR TOKEN>
ADMINS=( "YOUR TELEGRAM USERNAME WITHOUT @" )
```

Then just launch the bot

```
./bashbot
```

### Starting in a docker container

In order to build and create a docker container, `docker-compose` must be installed in your system

```
docker-compose up --build bashbot 
```

Also you can take my container from Dockerhub

```
docker run cuttlerat/bashbot -v ./database:/database <BOT_TOKEN> <WEATHER_TOKEN>
```

You can get a weather token here: https://www.worldweatheronline.com/ <br>
Register your bot here: https://t.me/BotFather
