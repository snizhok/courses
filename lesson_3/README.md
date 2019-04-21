# Основы синтаксиса и типы

## Синтаксис

Когда PHP обрабатывает файл, он ищет открывающие и закрывающие теги `<?php ... ?>`, которые указывают PHP, когда начинать и заканчивать обработку кода между ними. Подобный способ обработки позволяет PHP внедряться во все виды различных документов, так как всё, что находится вне пары открывающих и закрывающих тегов, будет проигнорировано парсером PHP.

Если файл содержит только код PHP, предпочтительно опустить закрывающий тег в конце файла. Это помогает избежать добавления случайных символов пробела или перевода строки после закрывающего тега PHP, которые могут послужить причиной нежелательных эффектов, так как PHP начинает выводить данные в буфер при отсутствии намерения у программиста выводить какие-либо данные в этой точке скрипта.

```
<?php 
    echo 'если вы хотите хранить код PHP в документах HTML или XML, то используйте эти теги'; 
?>
```

Вы также можете встретить короткие теги  `<? ... ?>`, которые лучше не использовать, так как для этого необходимо дополнительно настраивать php. По умолчанию они отключены.

Кроме того очень удобно использовать комбинорование тега открытия `<?php` и тега вывода `echo`:

```
<?= 'напечатать эту строку' ?>
или
<?php echo 'напечатать эту строку' ?>
```

PHP требует окончания инструкций точкой запятой в конце каждой инструкции. 

Закрывающий тег блока PHP-кода автоматически применяет точку с запятой; т.е. нет необходимости ставить точку с запятой в конце последней строки блока с PHP-кодом.

PHP поддерживает комментарии в стиле 'C', 'C++' и оболочки Unix (стиль Perl). Например:

```
<?php
    echo "..."; // Это однострочный комментарий в стиле C++
    /* Это многострочный комментарий,
       еще одна строка комментария */
    echo "..."; # Это комментарий в стиле оболочки Unix
?>
```

Многострочные комментарии нельзя вкладывать друг в друга, так как комментарий заканчивается при первом же закрывающем символе `*/`

```
<?php
 /*
    echo "Это тест"; /* Этот комментарий вызовет проблему */
 */
?>
```

## Типы

PHP - нестрого типизированный язык. 

Как правило, программист не устанавливает тип переменной; обычно это делает PHP во время выполнения программы в зависимости от контекста, в котором используется переменная.

Это означает, что мы можем использовать одну и ту же переменную для присвоения значений разных типов.

Например, сначала присвоили строковое значение, затем перезаписали его массивом, а затем целым числом.

PHP поддерживает десять простых типов.

Четыре скалярных типа:

* boolean
* integer
* float (число с плавающей точкой)
* string

Четыре смешанных типа:

* array
* object
* callable
* iterable

И два специальных типа:

* resource
* NULL

