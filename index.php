<?php
require "Apps/Bootstrap.php";

$Route = CMS::$Router->Load($_SERVER['REQUEST_URI']);

CMS::$Template = new Template($Route['Package']);
CMS::$Template->Title = substr($Route['Page'],0, -4);

//CMS::$Template->Define('SiteName', CMS::$Config['cms.sitename']);

if(Users::$Session !== false) {
  CMS::$Template->Define('Username', Users::$Session->Name);
  CMS::$Template->Define('User', Users::$Session->Data);
}

CMS::$Template->Output($Route['Page'], 'index.htm');
?>
