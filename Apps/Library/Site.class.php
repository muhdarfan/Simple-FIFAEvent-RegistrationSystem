<?php
/**
 *
 */
class Site
{

  public static function Stop($Url = false) {
    if($Url) {
      header("LOCATION: {$Url}");
    }

    exit();
  }
}

?>
