# [Переменные](https://www.php.net/manual/ru/language.variables.php)

Переменные в PHP представлены знаком доллара с последующим именем переменной. 
Имя переменной чувствительно к регистру.

Имена переменных соответствуют тем же правилам, что и остальные наименования в PHP. 
Правильное имя переменной должно начинаться с буквы или символа подчеркивания и состоять из букв, 
цифр и символов подчеркивания в любом количестве.

```php
<?php 
$var = 1;
$VAR = 2;
$Var = 3;
$vaR = 4;
$vAr = 5;

$var = 10;

var_dump($var, $VAR, $Var, $vaR, $vAr);

$4site = 1;     // ошибка; начинается с цифры
$_4site = 1;    // верно; начинается с символа подчеркивания
?>
```

[Руководство по именованию](https://www.php.net/manual/ru/userlandnaming.php)

[Функции для работы с переменными](https://www.php.net/manual/ru/ref.var.php)

По умолчанию переменные всегда присваиваются по значению. То есть, когда вы присваиваете выражение переменной, 
все значение оригинального выражения копируется в эту переменную. Это означает, 
к примеру, что после того как одной переменной присвоено значение другой, изменение одной из них не влияет на другую.

PHP также предлагает иной способ присвоения значений переменным: присвоение по ссылке. 
Это означает, что новая переменная просто ссылается (иначе говоря, "становится псевдонимом" или "указывает") 
на оригинальную переменную. Изменения в новой переменной отражаются на оригинале, и наоборот.

Для присвоения по ссылке, просто добавьте амперсанд (&) к началу имени присваиваемой (исходной) переменной.

```php
<?php 
$name = 'John';               // Присваивает $foo значение 'John'
$fullName = &$name;           // Ссылка на $name через $fullName.
$fullName = "Doe ".$fullName; // Изменение $fullName...
var_dump($fullName);
var_dump($name);              // меняет и $name.
?>
```

## Предопределенные переменные

PHP предоставляет всем скриптам большое количество предопределённых переменных. 
Эти переменные содержат всё, от внешних данных до переменных среды окружения, 
от текста сообщений об ошибках до последних полученных заголовков.

* $GLOBALS — Ссылки на все переменные глобальной области видимости
* $_SERVER — Информация о сервере и среде исполнения
* $_GET — Переменные HTTP GET
* $_POST — Переменные HTTP POST
* $_FILES — Переменные файлов, загруженных по HTTP
* $_REQUEST — Переменные HTTP-запроса
* $_SESSION — Переменные сессии
* $_ENV — Переменные окружения
* $_COOKIE — HTTP Cookies

* $php_errormsg — Предыдущее сообщение об ошибке
* $HTTP_RAW_POST_DATA — Необработанные данные POST
* $http_response_header — Заголовки ответов HTTP
* $argc — Количество аргументов, переданных скрипту
* $argv — Массив переданных скрипту аргументов

## Область видимости переменной

Область видимости переменной - это контекст, в котором эта переменная определена. 
В большинстве случаев все переменные PHP имеют только одну область видимости. 
Эта единая область видимости охватывает также включаемые (include) и требуемые (require) файлы. 

Однако определение (тело) пользовательской функции задает локальную область видимости данной функции. 
Любая используемая внутри функции переменная по умолчанию ограничена локальной областью видимости функции.

```php
<?php
$a = 1; /* глобальная область видимости */ 

function test()
{ 
    $a = 5; /* локальная область видимости */
    echo $a . PHP_EOL;  
} 

test();
echo $a . PHP_EOL;

$a = 2;
echo $a . PHP_EOL;
test();
?>
```

## Использование статических (static) переменных

Статическая переменная существует только в локальной области видимости функции, 
но не теряет своего значения, когда выполнение программы выходит из этой области видимости. 

```php
<?php
function test()
{
    $a = 0;
    static $b = 0;

    echo 'a => ' . $a . PHP_EOL;
    $a++;

    echo 'b =>' .$b . PHP_EOL;
    $b++;

    echo PHP_EOL;
}
test();
test();
?>
```

Можно присвоить статическим переменным значения, являющиеся результатом выражения, 
но нельзя использовать для этого функцию, так это вызовет ошибку разбора.

```php
<?php
function foo() {
    static $int1 = 0;          // верно
    static $int2 = 1+2;        // верно
    static $int3 = sqrt(121);  // неверно (поскольку это функция)

    $int1++;
    echo $int1;
}
?>
```

## ~~Масло маслянное~~ Переменные переменных 

Иногда бывает удобно иметь переменными имена переменных. То есть, имя переменной, 
которое может быть определено и изменено динамически. 
Переменная переменной берет значение переменной и рассматривает его как имя переменной. :man_facepalming:

```php
<?php
$a = 'hello'; // обычная переменная
$$a = 'world'; // переменная переменной

?>
```
