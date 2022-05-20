<?php
$ultraDebug = true;
if($ultraDebug){
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);
}
include(__DIR__ . "/functions/index.php");
// include("db_info.php");

?>