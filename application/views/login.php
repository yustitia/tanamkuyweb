<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Halaman Login</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="<?= base_url('assets/'); ?>dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
 
    
    <!-- Custom styles for this template -->
    <link href="<?= base_url('assets/'); ?>signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
  
    
  <form class="form-signin"  action="<?= base_url('login') ?>" method="POST">
    <div class="text-center mb-4">
    <?= $this->session->flashdata('pesan'); ?>
      <img class="mb-4" src="<?= base_url('assets/'); ?>brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h1 h1 class="h3 mb-3 fpnt-weight-normal">Halaman Login</h1>
      <p>silahkan masukan username dan password dengan benar !</p> 
    </div>
    
    <div class="form-label-group">
      <input type="text" class="form-control" 
      name="username" 
      placeholder="masukan ID anda !"
      required outofcus>
      
    </div>
    
    <div class="form-label-group">
      <input type="password" class="form-control" 
      name="password" placeholder="Password"
      required>
    
    </div>
        
    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>

    <p>Jika lupa password silahkan klik <a href="about.html">
    Lupa password</a></p> 
    <p>Jika belum memilki akun silahkan klik <a href="about.html">Daftar</a></p>
    
    
     <p class="mt-5 mb-3 text-muted">&copy; 2020-<?= date('Y')?></p>
  </form>



    
  </body>
</html>
