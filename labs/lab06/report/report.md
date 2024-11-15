---
## Front matter
title: "Арифметические операции в NASM."
subtitle: "Простейший вариант"
author: "Гомес Лопес Теофания"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы
Освоить арифметических инструкций языка ассемблера NASM и написать
программы для вычисления арифметических выражений с неизвестной.

# Задание
Написать программы для решения выражений.


# Выполнение лабораторной работы

## Cимвольные и численные данные в NASM

 Создала каталог для программ ЛБ6, и в нем создаем файл (рис. [-@fig:001]).

![Создала каталог с помощью команды mkdir и файл с помощью команды touch](image/1.png){#fig:001 width=70%}

Открывала файл в Midnight Commander и заполняла его в соответствии с листингом 6.1 (рис. [-@fig:002]).

![Заполняла файл](image/2.png){#fig:002 width=70%}

Создала исполняемый файл и запускала его (рис. [-@fig:003]).

![Запускала файл и смотрим на его работу](image/3.png){#fig:003 width=70%}

Снова открывала файл для редактирования и убиравала кавычки с числовых значений (рис. [-@fig:004]).

![Изменяем файл](image/4.png){#fig:004 width=70%}

Создала исполняемый файл и запускала его (рис. [-@fig:005]).

![Запускала файл и смотрела на его работу](image/5.png){#fig:005 width=70%}

Создала новый файл в каталоге (рис. [-@fig:006]).

![Создала файл](image/6.png){#fig:006 width=70%}

Заполняла файл в соответствии с листингом 6.2 (рис. [-@fig:007]).

![Заполняла файл](image/7.png){#fig:007 width=70%}

Создала исполняемый файл и запускала его (рис. [-@fig:008]).

![Смотрела на работу программы](image/8.png){#fig:008 width=70%}

Снова открывала файл для редактирования и убиравала кавычки с числовых значений (рис. [-@fig:009])

![Изменяла файл](image/9.png){#fig:009 width=70%}

Создала исполняемый файл и запускала его (рис. [-@fig:010]).

![Смотрела на работу программы](image/10.png){#fig:010 width=70%}

Снова открывала файл для редактирования и меняла iprintLF на iprint (рис. [-@fig:011]).

![Изменяла файл](image/11.png){#fig:011 width=70%}

Создала исполняемый файл и запускала его (рис. [-@fig:012])

![Смотрела на работу программы](image/12.png){#fig:012 width=70%}

Вывод функций iprintLF и iprint отличаются только тем, что LF переносит на новую строку.

## Выполнение арифметических операций в NASM

Создала новый файл в каталоге (рис. [-@fig:013]).

![Создала файл](image/13.png){#fig:013 width=70%}

Открывала файл и редактировала в соответствии с листингом (рис. [-@fig:014]).

![Заполняла файл](image/14.png){#fig:014 width=70%}

Создала исполняемый файл и запускала его (рис. [-@fig:015]).

![Смотрим на результат работы программы](image/15.png){#fig:015 width=70%}

Открываем файл и редактируем его для вычисления выражения f(x)=(4x6+2)/5 (рис. [-@fig:016])

![Редактировала файл](image/16.png){#fig:016 width=70%}

Компилировала файл и запускаем программу (рис. [-@fig:017]).

![Смотрим на результат работы программы](image/17.png){#fig:017 width=70%}

Создала новый файл в каталоге (рис. [-@fig:018]).

![Создала файл](image/18.png){#fig:018 width=70%}

Открывала файл и редактировала в соответствии с листингом (рис. [-@fig:019]).

![Заполняла файл](image/19.png){#fig:019 width=70%}

Компилировала файл и запускала его (рис. [-@fig:020]).

![Проверяемс результат работы программы](image/20.png){#fig:020 width=70%}

## Ответы на вопросы по программе

1. Строка "mov eax,rem" и строка "call sprint" отвечают за вывод на экран сообщения ‘Ваш вариант:'.

2. Эти инструкции используются для чтения строки с вводом данных от пользователя. Начальный адрес строки сохраняется в регистре ecx, а количество символов в строке (максимальное количество символов, которое может быть считано) сохраняется в регистре edx. Затем вызывается процедура sread, которая выполняет чтение строки.

3. Инструкция "call atoi" используется для преобразования строки в целое число. Она принимает адрес строки в регистре eax и возвращает полученное число в регистре eax.

4. Строка "xor edx,edx" обнуляет регистр edx перед выполнением деления. Строка "mov ebx,20" загружает значение 20 в регистр ebx. Строка "div ebx" выполняет деление регистра eax на значение регистра ebx с сохранением частного в регистре eax и остатка в регистре edx.

5. Остаток от деления записывается в регистр edx.

6. Инструкция "inc edx" используется для увеличения значения в регистре edx на 1. В данном случае, она увеличивает остаток от деления на 1.

7. Строка "mov eax,edx" передает значение остатка от деления в регистр eax. Строка "call iprintLF" вызывает процедуру iprintLF для вывода значения на экран вместе с переводом строки.


## Задание для самостоятельной работы

Создала новый файл в каталоге (рис. [-@fig:021]).

![Создала файл](image/21.png){#fig:021 width=70%}

Открывала его и заполняла, чтобы решалось выражение f(x)=(8x-6)/2 (рис. [-@fig:022])

![Заполняем файл](image/22.png){#fig:022 width=70%}

Компилировала программу и проверяем для x=1 (рис. [-@fig:023])

![Проверяем работу программы](image/23.png){#fig:023 width=70%}

Компилировала программу и проверяем для x=5 (рис. [-@fig:024])

![Проверяем работу программы](image/24.png){#fig:024 width=70%}

# Выводы

Мы приобрели навыки создания исполнительных файлов для решения выражений и освоили арифметические инструкции в NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::
