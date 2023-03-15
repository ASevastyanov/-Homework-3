# -Homework-3

Базовая задача
Вам нужно создать приложение-счётчик. Его идея проста: в приложении должна быть одна большая кнопка. Сколько раз на неё нажали — такая цифра и отображается на счётчике.
В повседневной жизни нам часто приходится что-то считать — например, количество книг в домашней библиотеке. Чтобы случайно не сбиться и учесть каждую книгу, 
было бы удобно просто нажимать на кнопку.
Чтобы вывести результат, добавьте над вашей кнопкой лейбл со значением счётчика. По нажатию на кнопку значение счётчика меняется — и текст в лейбле тоже должен поменяться.
В результате у вас должно получиться приложение, на экране которого есть лейбл (UILabel) и кнопка (UIButton). 
При запуске приложения у лейбла текст должен быть 0; при каждом нажатии на кнопку это число должно увеличиваться на 1. 
Лейбл со значением счётчика должен выглядеть как «Значение счётчика: 42».

Усложнённая задача
Усовершенствуйте счётчик, добавив несколько новых функций:
1. Создайте две кнопки:
 - с икнокой «+» — красного цвета,
 - с иконкой «-» — синего цвета.
2. Создайте кнопку обнуления с подходящей иконкой, которая при нажатии обнуляет значение счётчика.
3. Создайте текстовое поле UITextView, в котором будет отражена история изменения значения счётчика следующего формата:
 - при старте приложения — «История изменений:»
 - при успешном нажатии на кнопку «+» или «-» — «[дата и время]: значение изменено на -1/+1»
 - при сбросе: — «[дата и время]: значение сброшено»
 - при попытке уменьшить значение счётчика ниже 0 — «[дата и время]: попытка уменьшить значение счётчика ниже 0»
