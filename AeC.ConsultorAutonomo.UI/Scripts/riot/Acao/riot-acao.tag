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
        <label>Tipo indicador</label>
        <su-dropdown items="{ tipoItems }" ref="tiposelected"></su-dropdown>        
      </div>
      <div class="three wide field">      
        <button type="submit" class="ui button" tabindex="0" style="margin-top:23px;">Salvar</button>
      </div>
   </div>
  </div>     
</form>
  <script>
    this.tipoacaoItems =
    [
    {
    label: '- Selecione o tipo de ação -',
    value: null,
    default: true
    },
    { value: 'Evento', label: 'Evento' },
    { value: 'Servico', label: 'Serviço' },    
    ]
  </script>
</riot-acao>
