<?php
/**
 *
 */
class Users
{
  public static $Session = false;

  public static function CheckSession() {
    if(isset($_SESSION['username'])) {
      //self::$Session = new Session($_SESSION['username']);
    }
  }
}

?>
