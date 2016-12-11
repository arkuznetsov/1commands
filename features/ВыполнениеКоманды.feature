# language: ru

Функциональность: Выполнение команды

Как разработчик
Я хочу иметь возможность выполнять команды
Чтобы я мог проще автоматизировать больше действий на OneScript

Сценарий: Выполнение команды без параметров
    Допустим я включаю отладку библиотеки "commands"
    Когда Я выполняю команду "git"
    Тогда Вывод команды содержит "[--version]"
    И Код возврата команды равен 1

Сценарий: Выполнение команды с параметрами
    Допустим я выключаю отладку библиотеки "commands"
    Когда Я добавляю параметр "--version" для команды
    И Я выполняю команду "git"
    Тогда Я сообщаю вывод команды
    И Вывод команды содержит "version"
    И Код возврата команды равен 0
