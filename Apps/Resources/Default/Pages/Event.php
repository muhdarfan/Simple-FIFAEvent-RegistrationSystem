<?php
$Error = "";

switch (CMS::$Router->Request->SubUrls[0]) {
  case '/fifa': {
    if(isset($_POST['fullname'], $_POST['username'], $_POST['matric'], $_POST['phone'])) {
      $Name = $_POST['fullname'];
      $Username = $_POST['username'];
      $Matric = $_POST['matric'];
      $Phone = $_POST['phone'];
      $Platform = 'none';

      if(isset($_POST['platformInput'])) {
        if($_POST['platformInput'] == 'xbox') {
          $Platform = 'xbox';
        } elseif($_POST['platformInput'] == 'ps3') {
          $Platform = 'ps3';
        }
      }

      $this->DefineArray('Form', Array(
        'FullName' => $Name,
        'username' => $Username,
        'matric' => $Matric,
        'phone' => $Phone
      ));

      CMS::$MySql->where('username', $Username);
      $CheckStmt = CMS::$MySql->has('participant');

      if(!$CheckStmt) {
        $Data = Array(
          'name' => strtoupper($Name),
          'matricnumber' => $Matric,
          'platform' => $Platform,
          'username' => $Username,
          'phone' => $Phone
        );

        $ID = CMS::$MySql->Insert('participant', $Data);

        if($ID) {
          $_SESSION['udata'] = $Data;
          $_SESSION['udata']['id'] = $ID;

          Site::Stop('/event/fifa/success');
        } else {
          $Error = "<div class='alert alert-danger'>Error ! Contact administrator</div>";;
        }
      } else {
        $Error = "<div class='alert alert-danger'>Username already exists!</div>";
      }
    }

    if(isset(CMS::$Router->Request->SubUrls[1]) && CMS::$Router->Request->SubUrls[1] == '/success') {
      if(isset($_SESSION['udata'])) {
        $this->LoadTpl('Fifa-Success');
        unset($_SESSION['udata']);
      } else {
        Site::Stop('/event/fifa');
      }
    } else {
      $this->LoadTpl('Fifa-Registration');
    }
    break;
  }
}

$this->Define('Error', $Error);
?>
