<?php
if(!isset($_SESSION['udata'])) {
  Site::Stop('/event/fifa');
}

?>
<div class="card" style="margin-top: 10px;">
  <div class="card-body">
    <h5 class="card-title">KMPk Fifa Cup - Registration</h5>
    <div class="text-center">
      <h2>Thank you for registering!!</h2>
      <p>
        We have received your form.<br />
        Please pay the registration fees (RM 2) before (<strong>Thursday, 23rd August 2018</strong>) to confirmed your seat.
      </p>

      This is your form detail. <br />
      Please screenshot and shows to the <b>fees collector</b> to efficient the work.
      <table class="table">
        <tbody>
          <tr>
            <th scope="row">ID</th>
            <td><?php echo $_SESSION['udata']['id']; ?></td>
          </tr>
          <tr>
            <th scope="row">Full Name</th>
            <td><?php echo $_SESSION['udata']['name']; ?></td>
          </tr>
          <tr>
            <th scope="row">Username</th>
            <td><?php echo $_SESSION['udata']['matricnumber']; ?></td>
          </tr>
          <tr>
            <th scope="row">Matric Number</th>
            <td><?php echo $_SESSION['udata']['phone']; ?></td>
          </tr>
          <tr>
            <th scope="row">Phone</th>
            <td><?php echo $_SESSION['udata']['platform']; ?></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
