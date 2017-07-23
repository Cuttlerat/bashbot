# BashBot

Этой мой первый бот для телеграма написанный на Bash

Пока все что он умеет это показывать прогноз погоды и информацию о себе <br>
Если вы знаете какой контейнер лучше использовать за основу вместо Debian (все что мне нужно это наличие jq и curl) просьба, дайте мне знать

```
/weather City   # Weather in city for now
/w City         # Short form of /w
/wset           # Set default city (information is stored in data/.locations)
/ibash          # Random quote from ibash.org.ru
/loglist        # Random quote from loglist.net
/google String  # Sending a link to google.com/String 
/reboot         # Rebooting a docker container
/md5 String     # Creacting a md5 sum of String
/info           # Information about bot
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
docker run bashbot -v ./data:/data <BOT_TOKEN> <WEATHER_TOKEN>
```

Также вы можете взять готовый контейнер с Dockerhub

```
docker run cuttlerat/bashbot -v ./data:/data <BOT_TOKEN> <WEATHER_TOKEN>
```

Токен для погоды брать здесь: https://www.worldweatheronline.com/ <br>
Зарегистрировать бота здесь: https://telegram.me/BotFather

Так же в директории с ботом вам понадобится создать директорию data с двумя файлами

```
data/.locations
data/.pingers_json
```

В первый файл бот будет сохранять все данные о городах введенные через команду /wset (формат: username;sity)
Во втором файле должны быть регулярки (если вам это нужно) для автоматического вызова участников чата по @username при упоминании регулярки, пример:

```
{
    "users": [
    { "username": "@Cuttlerat", "regexp": [ "[Cc]uttlerat", "[Cc]uttle" ] }
    ]
}
```
Внимание! Используются самые простые регулярные выражения POSIX, не PCRE!


