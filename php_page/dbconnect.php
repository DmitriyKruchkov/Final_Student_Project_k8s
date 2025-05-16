<?php
$host = getenv('PGHOST') ?: 'pghost';
$port = getenv('PGPORT') ?: '5432';
$user = getenv('PGUSER') ?: 'postgres';
$password = getenv('PGPASSWORD') ?: '1234';
$dbname = getenv('PGDATABASE') ?: 'postgres';

$connection_string = "host=$host port=$port dbname=$dbname user=$user password=$password";
$postgre = pg_connect($connection_string);

if (!$postgre) {
    die("<p><strong>Ошибка подключения к БД</strong></p>");
}

$server_ip = gethostbyname($_SERVER['SERVER_NAME']);
$server_port = $_SERVER['SERVER_PORT'];
$address_site = "http://$server_ip:$server_port";
?>
