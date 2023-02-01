## Part 1. Готовый докер

Взять официальный докер образ с nginx и выкачать его при помощи __docker pull__

<dr>*Результат выполнения команды __docker pull nginx__*<dr>

![skrin1](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.05.25.png)

Проверить наличие докер образа через __docker images__

<dr>*Результат выполнения команды __docker images__*<dr>

![skrin2](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.26.27.png)

Запустить докер образ через docker __run -d [image_id|repository]__

<dr>*Результат выполнения команды __docker run -d nginx__*<dr>

![skrin3](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.28.33.png)


Проверить, что образ запустился через __docker ps__

<dr>*Результат выполнения команды __docker ps__*<dr>

![skrin5](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.32.04.png)

Посмотреть информацию о контейнере через __docker inspect -s [container_id|container_name]__

<dr>*Результат выполнения команды __docker inspect -s silly_feistel__*<dr>

![skrin6](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.33.43.png)

- Размер контейнера: 141779296 байт (142 MB)

<dr>*Отображение в терминале*<dr>

![skrin7](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.39.10.png)

- Список замапленных портов: 80 в null

<dr>*Отображение в терминале*<dr>

![skrin8](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.37.03.png)

- ip контейнера: 172.17.0.2

<dr>*Отображение в терминале*<dr>

![skrin9](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.35.57.png)


Остановить докер образ через __docker stop [container_id|container_name]__

<dr>*Результат выполнения команды __docker stop silly_feistel__*<dr>

![skrin10](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.41.54.png)


Проверить, что образ остановился через __docker ps__

<dr>*Результат выполнения команды __docker ps__*<dr>

![skrin11](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.43.25.png)

Запустить докер с замапленными портами 80 и 443 на локальную машину через команду __run__

<dr>*Используем команду __docker run -d -p 80:80 -p 443:443 nginx__ для запуска докера с замаплеными портами*<dr>

![skrin12](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.46.49.png)

<dr>Проверяем успешно ли произашел запуск с помощью команды __docker ps__<dr>

![skrin13](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.48.16.png)

Проверить, что в браузере по адресу __localhost:80__ доступна стартовая страница nginx

![skrin14](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.49.44.png)

Перезапустить докер контейнер через __docker restart [container_id|container_name]__

<dr>*Результат выполнения команды __docker restart compassionate_williams__*<dr>

![skrin15](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.52.08.png)

<dr>*Проверяем как сработал рестарт командой __docker ps__*<dr>

![skrin16](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2016.53.32.png)

## Part 2. Операции с контейнером

Прочитать конфигурационный файл nginx.conf внутри докер образа через команду __exec__

<dr>*Для чтения файла выполняем команду __docker exec -it compassionate_williams cat /etc/nginx/nginx.conf__*<dr>

![skrin17](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.06.46.png)

_Создаем папку __nginx_conf__ и в ней файл с помощью команды __touch nginx.conf___

<dr>*Смотрим результат*<dr>

![skrin18](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.27.52.png)

Настроить в нем по пути __/status__ отдачу страницы статуса сервера nginx

<dr>*Смотрем содержимое созданого конфига*<dr>

![skrin19](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.29.12.png)

Скопировать созданный файл __nginx.conf__ внутрь докер образа через команду docker cp

<dr>*Для этого используем команду __docker cp nginx/nginx.conf compassionate_williams:/etc/nginx/nginx.conf__*<dr>

<dr>*После сразу проверяем произошли ли изменения с помощю комадны __docker exec -it compassionate_williams cat /etc/nginx/nginx.conf__*<dr>

![skrin20](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.35.07.png)

Перезапустить __nginx__ внутри докер образа через команду exec

<dr>*Для этого используем команду __docker exec -it compassionate_williams nginx -s reload__*<dr>

![skrin21](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.36.51.png)

Проверить, что по адресу __localhost:80/status__ отдается страничка со статусом сервера nginx

![skrin22](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.40.06.png)

Экспортировать контейнер в файл __container.tar__ через команду export

<dr>*Для этого используем команду __docker export compassionate_williams > container.tar__*<dr>

![skrin23](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.43.00.png)

Остановить контейнер

<dr>*Используется команда docker stop compassionate_williams*<dr>

![skrin24](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.45.05.png)

Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры

<dr>*Используется команда __docker rmi -f nginx__*<dr>

![skrin25](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.46.55.png)

Все было удалено

Импортировать контейнер обратно через команду import

<dr>*Для этого приеняем команду __docker import container.tar zenaluth__*<dr>

![skrin26](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.50.34.png)

Запустить импортированный контейнер

<dr>*Применяем команду __docker run -d -p 80:80 -p 443:433 zenaluth /docker-entrypoint.sh nginx -g "daemon off;"__*<dr>

![skrin27](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.52.12.png)

Проверить, что по адресу __localhost:80/status__ отдается страничка со статусом сервера nginx

![skrin28](Skrin/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202022-11-15%20%D0%B2%2017.53.12.png)