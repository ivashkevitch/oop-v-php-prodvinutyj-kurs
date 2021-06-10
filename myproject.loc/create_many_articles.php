<?php

spl_autoload_register(function (string $className) {
    require_once __DIR__ . '/src/' . str_replace('\\', '/', $className) . '.php';
});

$db = \MyProject\Services\Db::getInstance();

$query = '';
for ($i = 1; $i <= 1000000; $i++) {
    $query .= sprintf(
        'INSERT INTO articles (`author_id`, `name`, `text`) VALUES (1, \'%s\', \'%s\');',
        'Статья #' . $i,
        'Текст статьи ' . $i
    );

    if ($i % 1000 === 0) {
        $db->query($query);
        $query = '';
        echo $i . PHP_EOL;
    }
}
