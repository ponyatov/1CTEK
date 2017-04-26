# 1CTEK
## стек технологий 1С (объектная модель вирутальной машины)

(c) Dmitry Ponyatov <<dponyatov@gmail.com>> , GNU LesserGPL

github: https://github.com/ponyatov/1CTEK

### NDA disclaimer

* при разработке используются только сведения из открытых источников
* инасайдерская информация не раскрывается
* система является исключительно исследовательским проектом, 
  * не предназначена для распространения
  * запрещено любое использование в production и коммерческой разработке
* все права на торговые марки принадлежат компании [1С](https://1c.ru/)

в гипотетическом случае коммерческого применения предполагается
* двойное лицензиование:
  * opensource платформа
  * коммерческие конфигурации, модули, консалтинг и сопровождение

### экспериментальная облачная платформа

исследование по решению основных проблем коммерческой реализации платформы 1С:

* отвязка от Windows-технологий, адаптация для запуска на UNIX и JVM кластерах
* полная поддержка многозадачности (на архитектуре передачи сообщений)
* распределенная виртуальная машина
предназначена для запуска на кластерах типа Beowulf:
  * сетях рабочих станций (от одной штуки) на современных многоядерных процессорах,
  * корпоративных кластерах выделенных или виртуальных серверов,
  * облачных сервисах.
* объектная распределенная БД
* поддержка mainstream RDBMS (SQLite, MySQL, Postgres, Oracle, MS/SQL,..)
в качестве хранилища данных
* подключение любых сторонних библиотек
* импорт/экспорт конфигураций в текстовые файлы:
совместимость с любыми системами контроля версий (git, mercurial,...)
* расширенная поддержка мобильных устройств

### динамический отладчик

может быть использовано в качестве средства отладки production конфигураций

### реализация

разработка и runtime обеспечивается системой программирования
на динамическом объектном языке Smalltalk: [Pharo](http://pharo.org/)

к сожалению есть большие проблемы с поддержкой кириллицы,
поэтому вся разработка ведется на английском

### установка

* установить git-клиент, настроить подключение к GitHub (создать SSH ключи)
* создать локальный репозиторий
```
cd D:\w
git clone -o gh git clone -o gh git@github.com:ponyatov/1CTEK.git
```

* распаковать виртуальную машину, образ системы и исходный код ядра Pharo в один каталог (D:\SmallTalk\Pharo6)
* запустить Pharo, World/Tools/Catalog Browser, установить пакеты:
  * GitFileTree (интерфейс к git-клиенту)
  * PetitParser (генератор PEG-парсеров текстовых форматов)
* World/Monticello Browser
  * создать пакет +Package `_CTEK`
  * прописать для созданного пакета репозиторий
```
+Repository
Reposytory type/ gitfiletree:// D:\w\1CTEK
```
  * открыть репозиторий, и сделать `Load`

### источники информации

* документация по системе 1С 8.3
* М.Г. Радченко, Е.Ю. Хрусталева
[1C:Предприятие 8.3. Практическое пособие разработчика. Примеры и типовые приемы](http://buh.ru/books/detail.php?ID=42714)
* Андрей Михайлов
[1С:Предприятие 7.7/8.0. Системное программирование](https://www.ozon.ru/context/detail/id/3090484/)
* структура файлов
  * Андрей Овсянкин (Evil Beaver)
[Описание формата файлов конфигурации (CF, EPF, ERF)](http://infostart.ru/public/250142/)
  * Валерий Агеев (awa)
[Файловые базы \*.1CD. Физическая структура. Восстановление.](http://infostart.ru/public/187832/)
