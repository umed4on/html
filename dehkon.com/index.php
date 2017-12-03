<?php
  if(!empty($_POST['paswd'])){
     $pass = "123";
    if($_POST['paswd']==$pass){
      session_start();
      $_SESSION['access']=true;
      header("Location: index.html") ;
    }
    else {
       header("Location: 404.html") ;
    }
  }
  else
  {
    ?>
    <form method="POST">
      <input type="text" name="paswd">
      <input type="submit">
    </form>
    <?php
  }
?>