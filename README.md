# BashBot

Этой мой первый бот для телеграма написанный на Bash

Пока все что он умеет это показывать прогноз погоды и информацию о себе <br>
Если вы знаете какой контейнер лучше использовать за основу вместо Debian (все что мне нужно это наличие jq и curl) просьба, дайте мне знать

```
/weather City   # Weather in city for now
/w City         # Short form of /w
/info           # Information about bot
/start          # Information about commands
```

Но список команд будет со временем расти

## Запуск 

Для того чтобы просто запустить бота (вам понадобится установить пакеты jq и curl)

```
./bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```

Для того чтобы собрать и запустить свой Docker контейнер

```
docker build -t bashbot .
docker run bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```

Также вы можете взять готовый контейнер с Dockerhub

```
docker run cuttlerat/bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```

Токен для погоды брать здесь: https://www.worldweatheronline.com/ <br>
Зарегистрировать бота здесь: https://telegram.me/BotFather
