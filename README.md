# BashBot

Этой мой первый бот для телеграма написанный на Bash

Пока все что он умеет это показывать прогноз погоды и информацию о себе <br>
Если вы знаете какой контейнер лучше использовать за основу вместо Debian (все что мне нужно это наличие jq и curl) просьба, дайте мне знать

```
/weather
/info
/start
```

Но список команд будет со временем расти

##HOWTO

Для того чтобы просто запустить бота (вам понадобится установить пакеты jq и curl)

```
./bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```

Для того чтобы собрать и запустить свой Docker контейнер

```
docker build -t bashbot .
docker run bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```


Токен для погоды брать здесь: https://www.worldweatheronline.com/ <br>
Зарегистрировать бота здесь: https://telegram.me/BotFather
