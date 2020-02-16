<style>
.bg-purple { background-color: #6f42c1; }
</style>

<div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
  <img class="mr-3" src="/assets/img/ealogo.png" alt="" width="48" height="48">
  <img class="mr-3" src="/assets/img/kmpklogo.png" alt="" width="48" height="48">
  <div class="lh-100">
    <h6 class="mb-0 text-white lh-100">KMPk Fifa Cup</h6>
    <small>Organized by JPP & QM (2018/19)</small>
  </div>
</div>
$Error
<div class="card" style="margin-top: 10px;">
  <div class="card-body">
    <h5 class="card-title">KMPk Fifa Cup - Registration</h5>

    <form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="POST" id="eventForm">
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Full name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputFName" name="fullname" placeholder="Full Name (ALI BIN ABU)" value="<?php echo (isset($_POST['fullname']) ? 'gwgw' : ''); ?>" required autocomplete="off">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Username</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputUsername" name="username" placeholder="Username (eg. ejenali22)" required autocomplete="off">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Matric Number</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputMatric" name="matric" placeholder="Matric Number (eg. MS199999)" value="<?php echo (isset($_POST['matric']) ? '$Form_matric' : ''); ?>" required autocomplete="off">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Phone</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputPhone" name="phone" placeholder="Phone (eg. 0123456789)" value="<?php echo (isset($_POST['phone']) ? '$Form_phone' : ''); ?>" required autocomplete="off">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Platform</label>
        <div class="col-sm-10">
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="platformInput" id="inlineRadio1" value="xbox">
            <label class="form-check-label" for="inlineRadio1">XBOX</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="platformInput" id="inlineRadio2" value="ps3">
            <label class="form-check-label" for="inlineRadio2">PS3</label>
          </div>
        </div>
      </div>

      <button type="submit" class="btn btn-primary float-right">Submit</button>
    </form>
  </div>
</div>
