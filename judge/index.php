 

<!DOCTYPE html>
<html lang="en">
  
  <?php
  include('header2.php');
  ?>

  <body>
    
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
 
               <a href="#" data-toggle="modal" data-target="#about-modal" class="brand"> <font size="2"style="color: white;">ABOUT</font></a> 
 
        </div>
      </div>
    </div>
    
    
<header class="jumbotron subhead" id="overview">
  <div class="container">
    <h1>Result Generation</h1>
    <p class="lead">Ready to serve you...</p>
  </div>
</header>




    <div class="container">
    
      
      
    <!-- About EJS Modal -->
    <div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">WellCome Judges</h4>
                    </div>
                    <div class="modal-body">
                    
                  
                    
           
                    <br />
                    <p><a href="https://aactni.edu.in"></a> Arul Anandar College</p>

                        <hr />
                        <p class="text-center text-muted"><button class="btn btn-default" data-dismiss="modal" aria-hidden="true"><strong>Close</strong></button></p>

                    </div>
                </div>
            </div>
        </div>
        
        
        
              
   <form method="POST" action="login.php" >
 <br />  
 <table cellpadding="10" cellspacing="0" border="0" align="center">
 <thead>
 <th align="center" style="background-color: #6A8CAF; text-indent: 7px; color: white; "><h4>USER LOGIN</h4></th>
 </thead>
 
 <tr style="background-color: #b0c7de;">
 
 <td>
 
 
  <h5><i class="icon-user"></i>  USERNAME:</h5>
  <input style="font-size: large; height: 35px !important; text-indent: 7px !important;" class="form-control btn-block" type="text" name="username" placeholder="Username" required="true" autofocus="true" />
 
 <h5><i class="icon-lock"></i>  PASSWORD:</h5>
  <input style="font-size: large; height: 35px !important; text-indent: 7px !important;" class="form-control btn-block" type="password"  name="password" placeholder="Password" required="true" autofocus="true" />
<br /><br />
 
  <button style="width: 160px !important;" type="submit" class="btn btn-primary pull-right"><i class="icon-ok"></i> <strong>LOGIN</strong></button>
  <strong>Register <a href="create_account.php">here &raquo;</a></strong> &nbsp;&nbsp;&nbsp; 
  
 </td>
 </tr>
 
 
 </table>
 
 

   </form>
 
 
    
            </div>
 
   


    <!-- Footer
    ================================================== -->
    


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
 
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script src="assets/js/bootstrap-affix.js"></script>
    <script src="assets/js/holder/holder.js"></script>
    <script src="assets/js/google-code-prettify/prettify.js"></script>
    <script src="assets/js/application.js"></script>
    
  </body>
</html>
