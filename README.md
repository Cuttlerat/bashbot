# BashBot

This is my first telegram bot written on bash

## Commands

```
/weather <City>   - Weather in city for now
/w <City>         - Short form of /w
/info             - Information about this bot  
/wset <City>      - Set default city for /weather
/ibash <Number>   - Random quote from ibash.org.ru
/loglist <Number> - Random quote from loglist.net
/roll             - Rolling a random number from 0 to 99
/google <String>  - Sending a link to google.com/String 
/md5 <String>     - Creating a md5 sum of String 
```

## Starting

```
git clone https://github.com/Cuttlerat/bashbot.git
cd bashbot
```

Run a `first_start` for a database and token file creation 

```
./first_start
```

Add your tokens into `./tokens` file
```
# Tokens should be specified without any quotes
BOT_TOKEN=<YOUR TOKEN>
WEATHER_TOKEN=<YOUR TOKEN>
```

Then just launch a bot

```
./bashbot
```

### Starting in a docker container

For a build and create a docker container `docker-compose` must be installed in your system

```
docker-compose up --build bashbot 
```

Also you can take my container from a Dockerhub

```
docker run cuttlerat/bashbot -v ./database:/database <BOT_TOKEN> <WEATHER_TOKEN>
```

You can get a weather token here: https://www.worldweatheronline.com/ <br>
Register your bot here: https://t.me/BotFather
