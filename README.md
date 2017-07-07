# BashBot

Этой мой первый бот для телеграма написанный на Bash

Пока все что он умеет это показывать прогноз погоды и информацию о себе

```
/weather
/info
/start
```

Но список команд будет со временем расти

Для того чтобы просто запустить бота

```
./bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```

Для того чтобы собрать и запустить свой Docker контейнер

```
docker build -t bashbot .
docker run bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```


Токен для погоды брать здесь: https://www.worldweatheronline.com/

Зарегестрировать бота здесь: https://telegram.me/BotFather
