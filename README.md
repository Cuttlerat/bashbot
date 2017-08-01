# BashBot

Этой мой первый бот для телеграма написанный на Bash

Cписок команд:

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

## Запуск 

```
git clone git@github.com:Cuttlerat/bashbot.git
cd bashbot
```

Запустите скрипт `first_start` для создания базы данных и файла где будут храниться ваши токены 

```
./first_start
```

Добавьте токены в файл `tokens`
```
# Токены следует указывать без каких-либо кавычек
BOT_TOKEN=<YOUR TOKEN>
WEATHER_TOKEN=<YOUR TOKEN>
```

Для того чтобы просто запустить бота 

```
./bashbot
```

Для того чтобы собрать и запустить свой Docker контейнер, вам понадобится Docker Compose

```
docker-compose up --build bashbot 
```

Также вы можете взять готовый контейнер с Dockerhub

```
docker run cuttlerat/bashbot -v ./data:/data <BOT_TOKEN> <WEATHER_TOKEN>
```

Токен для погоды брать здесь: https://www.worldweatheronline.com/ <br>
Зарегистрировать бота здесь: https://telegram.me/BotFather
