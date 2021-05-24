<?php

use Proto\Test\SearchResult;

require __DIR__ . '/../vendor/autoload.php';

$item = new SearchResult();
$item->setQuery(http_build_query(['name' => 'test']));
$item->setResultPerPage(3);
$item->setPageNumber(2);

$string = $item->serializeToString();
var_dump($string);

$m2 = new SearchResult();
$m2->mergeFromString($string);
var_dump($m2->getQuery());