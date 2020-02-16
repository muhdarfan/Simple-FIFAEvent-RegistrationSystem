<?php
/**
*
*/
class CMS
{
  public static $Router, $MySql, $Packages, $Template;

  public static function LoadLibrary() {
    foreach(glob(APPS.'/Library/*.class.php') as $ClassName) {
      require $ClassName;
    }
  }

  public static function SetIPAddress() {
    $IP = $_SERVER['REMOTE_ADDR'];

    if (isset($_SERVER['HTTP_CF_CONNECTING_IP']))
    {
      $IP = $_SERVER['HTTP_CF_CONNECTING_IP'];
    }
    else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
    {
      $IP = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }

    define('RemoteIp', $IP);
  }

  public static function LoadPackages() {
    self::$Packages = scandir(APPS.'/Resources/', 0);
  }
}

?>
