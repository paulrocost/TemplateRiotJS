<riot-acao>
<form class="ui form" onsubmit={add_indicador}>
  <h4 class="ui dividing header">Cadastro de Ações</h4>
  <div class="field">    
    <div class="three fields">
      <div class="four wide field">
	      <label>Nome</label>
        <input type="text" name="shipping[Nome indicador]" ref="firstname" placeholder="Nome da ação"/>
      </div>  
	    <div class=" four wide field">
        <label>Tipo de Ação</label>
        <su-dropdown items="{ tipoacaoItems }" ref="tipoacaoselected"></su-dropdown>       
      </div>
      <div class=" four wide field">
        <label>Valor</label>
        <input type="text" name="api" ref="api" placeholder="https://"/>       
      </div>
      <div class="three wide field">      
        <button type="submit" class="ui button" tabindex="0" style="margin-top:23px;">Salvar</button>
      </div>
   </div>
  </div>     
</form>
  <h4 class="ui dividing header">Lista de Ações</h4>
  <table class="ui celled table">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Tipo Ação</th>
        <th>Valor</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody each={acoesList}>
      <tr>
        <td>
          <div class="ui ribbon label">{indicador}</div>
        </td>
        <td>{unidade}</td>
        <td>{tipo}</td>
        <td>
          <div class="ui mini red button" ref="index" onclick={delete}>Deletar</div>
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
  <script>
    this.acoesList = [
    {indicador:'Demissional', unidade:'Serviço API', tipo: 'https://aecrh/api/demissional'},
    {indicador:'Feedback 1', unidade:'Serviço API', tipo: 'https://aecfeedback/api/feedback1'},
    {indicador:'EAD', unidade:'Serviço API', tipo: 'https://aecead/api/eadtreinamento'}
    ]
    
    this.tipoacaoItems =
    [
    {
    label: '- Selecione o tipo de ação -',
    value: null,
    default: true
    },
    { value: 'Evento', label: 'Evento (Email, SMS, ...)' },
    { value: 'Servico API', label: 'Serviço API' },    
    ]
  </script>
</riot-acao>
