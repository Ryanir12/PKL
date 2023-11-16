<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>Signin Template · Bootstrap v5.2</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
  <link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="./assets/signin.css" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(45deg, #3498db, #e74c3c);
      font-family: 'Arial', sans-serif;
      /* Ganti 'Arial' dengan jenis font yang Anda inginkan */
    }

    .form-signin {
      background-color: rgba(255, 255, 255, 0.8);
      max-width: 350px;
      padding: 15px;
      margin: 0 auto;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .form-signin img {
      width: 100px;
      height: auto;
    }

    .form-signin h1 {
      font-size: 28px;
      margin-bottom: 20px;
      color: #333;
    }

    .form-signin h2 {
      font-size: 24px;
      margin-bottom: 20px;
      color: #007bff;
    }

    .form-signin .form-floating input {
      font-size: 16px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .form-signin .form-floating label {
      font-size: 14px;
      color: #555;
    }

    .form-signin .checkbox {
      font-size: 14px;
    }

    .form-signin .btn-primary {
      background-color: #007bff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      font-size: 18px;
      width: 100%;
    }

    .form-signin .btn-primary:hover {
      background-color: #0056b3;
    }

    .form-signin .text-muted {
      font-size: 12px;
    }
  </style>
</head>

<body class="text-center">
  <main class="form-signin">
    <form action="./actions/login.php" method="POST">
      <img class="mb-4" src="assets/Logo.png" alt="">
      <h1 class="h1 mb-3 fw-normal">Kelurahan Parak Karakah</h1>
      <h2 class="h2 mb-4 fw-normal">Login</h2>

      <?php
      if (isset($_GET['message'])) {
        echo "<p class='text-capitalize text-danger'>" . $_GET['message'] . "</p>";
      }
      ?>

      <div class="form-floating">
        <input name="username" type="text" class="form-control" id="floatingInput" placeholder="218738637">
        <label for="floatingInput">Email address</label>
      </div>

      <div class="form-floating">
        <input name="password" type="password" class="form-control" id="floatingPassword" placeholder="Password">
        <label for "floatingPassword">Password</label>
      </div>

      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>

      <input type="submit" value="Sign In" class="w-100 btn btn-primary">
      <p class="mt-3 text-muted">&copy; <?php echo date("Y"); ?> Ryan</p>
    </form>
  </main>
</body>

</html>