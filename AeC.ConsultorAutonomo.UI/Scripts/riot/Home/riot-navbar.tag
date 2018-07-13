<riot-navbar>
  <div class="ui attached stackable menu">
    <div class="ui container">
      <a class="item">
        <i class="align justify icon" onclick={opensidebar}></i> 
      </a>
      <a class="item">
        <i class="home icon"></i> Home
      </a>
      <a class="item">
        <i class="grid layout icon"></i> Browse
      </a>
      <a class="item">
        <i class="mail icon"></i> Messages
      </a>
      <div class="ui simple dropdown item">
        More
        <i class="dropdown icon"></i>
        <div class="menu">
          <a class="item">
            <i class="edit icon"></i> Edit Profile
          </a>
          <a class="item">
            <i class="globe icon"></i> Choose Language
          </a>
          <a class="item">
            <i class="settings icon"></i> Account Settings
          </a>
        </div>
      </div>
      <div class="right item">
        <div class="ui input">
          <input type="text" placeholder="Search...">
        </div>
        <div class="ui input">
          <a class="item">
            <i class="align justify icon" onclick={openasidebar}></i>
          </a>  
        </div>        
      </div>
    </div>
  </div>
  <script>
    this.openasidebar = function(){
    $('.ui.sidebar .right')
    .sidebar('hide');
    };

    this.opensidebar = function(){
    $('.ui.sidebar')
    .sidebar({
    context: '.bottom.segment'
    })
    .sidebar('toggle');
    };

  </script>
</riot-navbar>