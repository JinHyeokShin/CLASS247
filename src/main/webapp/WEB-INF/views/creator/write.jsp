<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>bootstrap4</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
  </head>
  <body>
  
           <div class="card">
             <div class="card-header">
                 <strong>Normal</strong> Form
             </div>
             <div class="card-body card-block">
                 <form action="" method="post" class="">
                     <div class="form-group">
                         <label for="nf-email" class=" form-control-label">Email</label>
                         <input type="email" id="nf-email" name="nf-email" placeholder="Enter Email.." class="form-control">
                         <span class="help-block">Please enter your email</span>
                     </div>
                     <div class="form-group">
                         <label for="nf-password" class=" form-control-label">Password</label>
                         <input type="password" id="nf-password" name="nf-password" placeholder="Enter Password.." class="form-control">
                         <span class="help-block">Please enter your password</span>
                     </div>
                 </form>
             </div>
             <div class="card-footer">
                 <button type="submit" class="btn btn-primary btn-sm">
                     <i class="fa fa-dot-circle-o"></i> Submit
                 </button>
                 <button type="reset" class="btn btn-danger btn-sm">
                     <i class="fa fa-ban"></i> Reset
                 </button>
             </div>
         </div>
  
  
    <div id="hi"></div>
    <script>
      $('#hi').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 100
      });
    </script>
  </body>
</html>
