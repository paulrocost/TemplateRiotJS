<riot-indicador>
<form class="ui form">
  <h4 class="ui dividing header">Cadastro Indicadores</h4>
  <div class="field">    
    <div class="three fields">
      <div class="four wide field">
	      <label>Nome</label>
        <input type="text" name="shipping[Nome indicador]" placeholder="First Name"/>
      </div>  
	    <div class=" four wide field">
        <label>Unidade do indicador</label>
        <select class="ui fluid dropdown">
		      <option value="">- Seleciona a unidade -</option>
		      <option value="1">Número [int]</option>
		      <option value="2">Texto [string]</option>
		      <option value="3">Decimal [0,00]</option>
		      <option value="4">Percentual [%]</option>
        </select>
      </div>
      <div class=" four wide field">
        <label>Tipo indicador</label>
        <select class="ui fluid dropdown">
          <option value="">- Tipo indicador -</option>
          <option value="1">Querência</option>
          <option value="2">Negócio</option>
        </select>
      </div>
      <div class="three wide field">
        <label> .</label>
        <div class="ui button" tabindex="0">Salvar</div>
      </div>
   </div>
  </div>     
</form>
  <h4 class="ui dividing header">Lista de Indicadores</h4>
  <table class="ui celled table">
    <thead>
      <tr>
        <th>Indicador</th>
        <th>Unidade</th>
        <th>Tipo</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <div class="ui ribbon label">Tempo Logado</div>
        </td>
        <td>Número</td>
        <td>Querência</td>
        <td>
          <div class="ui mini red button">Deletar</div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="ui ribbon label">Pausa</div>
        </td>
        <td>Número</td>
        <td>Querência</td>
        <td>
          <div class="ui mini red button">Deletar</div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="ui ribbon label">Absenteísmo</div>
        </td>
        <td>Número</td>
        <td>Querência</td>
        <td>
          <div class="ui mini red button">Deletar</div>
        </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <th colspan="4">
          <div class="ui right floated pagination menu">
            <a class="icon item">
              <i class="left chevron icon"></i>
            </a>
            <a class="item">1</a>            
            <a class="icon item">
              <i class="right chevron icon"></i>
            </a>
          </div>
        </th>
      </tr>
    </tfoot>
  </table>
</riot-indicador>
