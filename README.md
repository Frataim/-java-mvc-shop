# Интернет-магазин на Java

Это учебный проект интернет-магазина на Java.  
В проекте используется MVC-структура, база данных MySQL, сервлеты, JSP, Maven и Tomcat.

## Функции приложения

- Регистрация пользователя
- Вход в аккаунт
- Выход из аккаунта
- Просмотр каталога товаров
- Просмотр категорий товаров
- Просмотр товаров по выбранной категории
- Просмотр подробной информации о товаре
- Добавление товара в корзину
- Просмотр корзины
- Удаление товара из корзины
- Оформление заказа
- Просмотр истории заказов

## Технологии

- Java 11+
- Maven
- Servlet API
- JSP
- JSTL
- MySQL 8
- Apache Tomcat 9
- HTML, CSS
- BCrypt

## Структура проекта

```text
src/main/java/com/example/
├── beans/      # классы сущностей
├── dao/        # работа с базой данных
├── servlets/   # сервлеты
└── util/       # дополнительные классы

src/main/webapp/
├── WEB-INF/views/  # общие части страниц
├── css/            # стили
└── *.jsp           # JSP-страницы

database/init.sql   # SQL-файл для создания базы и тестовых данных
```

## Как запустить

### 1. Запуск базы данных

Если MySQL установлен локально, можно выполнить:

```bash
mysql -u root -p < database/init.sql
```

Если MySQL не установлен, можно использовать Docker:

```bash
docker compose up -d mysql
```

В Docker используется:

```text
database: online_shop
user: root
password: password
```

### 2. Настроить подключение к MySQL

По умолчанию в проекте указаны такие настройки:

```text
jdbc:mysql://localhost:3306/online_shop
user: root
password: password
```

Если используются другие данные для подключения, их можно изменить в файле:

```text
src/main/java/com/example/dao/DBConnection.java
```

Также можно передать параметры при запуске:

```bash
-Ddb.user=root -Ddb.password=ВАШ_ПАРОЛЬ
```

### 3. Сборка проекта

```bash
./mvnw clean package
```

После сборки WAR-файл будет здесь:

```text
target/online-shop.war
```

Для Windows:

```bat
mvnw.cmd clean package
```

### 4. Запустить в Tomcat

Можно скопировать файл `target/online-shop.war` в папку `webapps` Apache Tomcat.

Также для проверки можно запустить проект через Maven:

```bash
./mvnw cargo:run
```

После запуска приложение будет доступно по адресу:

```text
http://localhost:8080/online-shop/products
```

Остановить запуск через Maven можно сочетанием клавиш `Ctrl + C`.

## Остановка Docker MySQL

Остановить контейнер:

```bash
docker compose stop mysql
```

Удалить контейнер и тестовые данные:

```bash
docker compose down -v
```
