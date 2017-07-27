# BashBot

Этой мой первый бот для телеграма написанный на Bash

Cписок команд:

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

## Запуск 

В директории с ботом вам понадобится создать директорию data с двумя файлами 
(в скором времени все планируется перенести в БД)

```
data/.locations
data/.pingers_json
```

В первый файл бот будет сохранять все данные о городах введенные через команду /wset (формат: username;sity)
Во втором файле должны быть регулярки (если вам это нужно) для автоматического вызова участников чата по `@username` при упоминании регулярки, пример:

```
{
    "users": [
    { "username": "@Cuttlerat", "regexp": [ "[Cc]uttlerat", "[Cc]uttle" ] }
    ]
}
```
Внимание! Используются самые простые регулярные выражения POSIX, не PCRE!

Для того чтобы просто запустить бота 

```
./bashbot <BOT_TOKEN> <WEATHER_TOKEN>
```

Для того чтобы собрать и запустить свой Docker контейнер, вам понадобится Docker Compose

Для начала нужно создать файл .tokens который содержит две строки вида

```
# Токены следует указывать без кавычек
BOT_TOKEN=<YOUR TOKEN>
WEATHER_TOKEN=<YOUR TOKEN>
```

Или же вы можете вписать их прямо в docker-compose.yml вместо этих же самых переменных в строке `command:` 

Затем просто запускаем Docker Compose

```
docker-compose up --build bashbot 
```

Также вы можете взять готовый контейнер с Dockerhub

```
docker run cuttlerat/bashbot -v ./data:/data <BOT_TOKEN> <WEATHER_TOKEN>
```

Токен для погоды брать здесь: https://www.worldweatheronline.com/ <br>
Зарегистрировать бота здесь: https://telegram.me/BotFather

