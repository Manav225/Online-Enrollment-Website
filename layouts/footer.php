<footer id="footer"> 
      <div class="bg"></div>  
      <div class="content"> 
        <div class="group"> 
          <div class="col span_1_of_3"> 
            <h2>Links</h2>  
            <div class="vmenu"> 
              <ul> 
                <li>
                  <a href="#">Home</a>
                </li>  
                <li>
                  <a href="#">About Us</a>
                </li>  
                <li>
                  <a href="#">Teachers</a>
                </li>
                <li>
                  <a href="#">Online Enrollment</a>
                </li>
                <?php
                  if(isset($_SESSION['admin_logged_in'])){
                    echo '<li><a href="admin_dashboard.php">Admin Dashboard</a></li>';
                  }
                ?>
              </ul> 
            </div> 
          </div>  
          <div class="col span_1_of_3"> 
            <h2>About Us</h2>  
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec.</p> 
          </div>  
          <div class="col span_1_of_3"> 
            <h2>Contact</h2>  
            <p><?php echo $websiteName; ?>
              <br /> <?php echo $websiteAddress; ?>
              <br /> <?php echo $websiteContact; ?>
            </p> 
          </div> 
        </div>  
        <div class="clear"></div>  
        <div class="baseline"> 
          <div style="float:left;margin-top:7px"> 
            <p> 
              <!-- Update your organization copyright --> Copyright - 2019 - <?php echo $websiteName; ?> | All Rights Reserved | 
              Online Portal for <?php echo $websiteName; ?> | A Project from STI College Global City
            </p> 
          </div>  
          
          <div class="clear"></div> 
        </div> 
      </div> 
</footer> 