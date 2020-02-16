<?php
session_start();

define('APPS', dirname(__FILE__));
define('HTDOCS', dirname(APPS));

require APPS.'/CMS.php';

CMS::SetIPAddress();

CMS::LoadLibrary();


CMS::$MySql = new MySqliDb('localhost', 'root', '', 'kmpk');
CMS::$Router = new Router();

CMS::LoadPackages();

foreach(CMS::$Packages as $Package) {
  CMS::$Router->MapPackage($Package);
}
?>
