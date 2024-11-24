### Проектная работа 2 спринта: Горизонтальное масштабирование

Результат:
- Итоговая схема с выполненными заданиями 1, 5, 6
- [Итоговая реализация с выполненными заданиями 2, 3, 4 (sharding-repl-cache)](04-sharding-repl-cache/README.md)

Как запустить:

```
git clone https://github.com/IgorBarbashov/sa-sprint-02-sharding-and-replication.git
```

```
git checkout sprint_2
```

```
cd 04-sharding-repl-cache
```

Запускаем все сервисы

```bash
docker compose up -d --build
```

Инициализация кластера MongoDB, настройка шардирования, реплик, кэша и наполнение БД

```bash
./scripts/mongo-init.sh
```

---

Шаги выполнения проектной работы:
- [Задание 1. Планирование этапов шардирование, репликация, кэширование](01-planing/README.md)
- [Задание 2. Реализация задания Шардирование](02-mongo-sharding/README.md)
- [Задание 3. Реализация задания Репликация](03-mongo-sharding-repl/README.md)
- [Задание 4. Реализация задания Кэширование (stand-alone)](04-sharding-repl-cache/README.md)
  - [Задание 4.1. Дополнительно - Кэширование на Cluster Redis](04-sharding-repl-cache-cluster/README.md) | [Диаграмма](https://cloud.mail.ru/public/wVyP/BKNKXczeX)
- Задание 5. Service Discovery и балансировка с API Gateway - проектирование
- Задание 6. CDN - проектирование

---

Дополнительно:
- Настройка с помощью Mongo Atlas
- Настройка в Yandex Cloud