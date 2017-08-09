# BashBot

This is my first telegram bot written in bash

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

## How to /manage database

If you want that your bot triggers on a some type of messages, there some options here.

### Google

If you want your bot triggers on a messages like this
```
Cuttlerat: What is Jenkins?
Cuttlebot: https://www.google.ru/search?q=Jenkins
```

You will need to add a note in your database like this:

```
/manage INSERT INTO google(match) VALUES("what is")
```

All matches must be in a low case! It's important (I will do something with it later)

If you want to ignore some words to trigger this function

```
/manage INSERT INTO google_ignore(ignore) VALUES("Jenkins")
Cuttlerat: What is Jenkins?
*no answer*
```

### Simple trigger

If you want a simple trigger on a message with your specified string

```
/manage INSERT INTO answers(match,string) VALUES("hello!", "Hi!")
Cuttlerat: Hello!
Cutltebot: Hi!
```

### Ping

If you want to summon someone with just mentioning of his name or nickname

```
/manage INSERT INTO pingers(username,match) VALUES("Cuttlerat", "rat")
Cuttlerat: rat!
*nothing*
```

Why? Because we didnt set a ping phrase

```
/manage INSERT INTO ping_phrases(phrase) VALUES("ping")
Cuttlerat: ping rat
Cuttlebot: @Cuttlerat
```

There is a little trick to summon all persons in the pingers table

```
/manage INSERT INTO pingers(username,match) VALUES("hotkosc", "kosc")
/manage INSERT INTO pingers(username,match) VALUES("EVERYONE GET IN HERE", "all")
Cuttlerat: ping all
Cuttlebot: @Cuttlerat @hotkosc
```

But if you want to call all except one guy?

You will need to add a ping exclude phrase

```
/manage INSERT INTO ping_exclude(match) VALUES("excpet")
Cuttlerat: ping all except kosc
Cuttlebot: @Cuttlerat
```

And is it! Enjoy your bot!
