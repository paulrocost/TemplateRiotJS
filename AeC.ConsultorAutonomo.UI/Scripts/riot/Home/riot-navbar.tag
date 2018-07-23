<riot-navbar>
  <div class="ui blue inverted attached stackable menu">
    <div class="ui container">
      <a class="item" onclick={opensidebar}>
        <i class="align justify icon" ></i> 
      </a>
      <a href="/Dashboard/Index" class="item">
        <i class="chart bar icon"></i> Dashboard
      </a>
      <!--<a class="item">
        <i class="grid layout icon"></i> Browse
      </a>
      <a class="item">
        <i class="mail icon"></i> Messages
      </a>-->
      <div class="ui simple dropdown item">
        <i class="edit icon"></i>
        Cadastro
        <i class="dropdown icon"></i>
        <div class="menu">
          <a href="/Indicador/Index" class="item">
            <i class="chart line icon"></i> Indicadores
          </a>
          <a href="/Acao/Index" class="item">
            <i class="bolt icon"></i> Ações
          </a>
          <a href="/Regra/Index" class="item">
            <i class="globe icon"></i> Regras
          </a>
          <!--<a class="item">
            <i class="settings icon"></i> Account Settings
          </a>-->
        </div>
      </div>
      <!--<div class="right item">
        <div class="ui icon input">
          <input type="text" class="prompt" placeholder="Search..."/>
          <i class="search icon"></i>
        </div>        
      </div>      
    </div>-->
  </div>
  <script>   
     

  </script>
</riot-navbar>