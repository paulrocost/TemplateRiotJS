<riot-regra>
  <form class="ui form">
    <h4 class="ui dividing header">Cadastro de Regras</h4>
    <div class="field">
      <div class="two fields">
		  <div class="six wide field">
			<label>Operação</label>
			<su-dropdown items="{ dropdownItems }" multiple="true"></su-dropdown>
		  </div>
		  <div class="four wide field">
			<label>Nome</label>
			<input type="text" placeholder="Nome da regra"></input>
		  </div>
      </div>
    </div>

    <h4 class="ui dividing header">Condicionais</h4>    
      <div class="fields">
        <div class="four wide field">
          <label>Indicador</label>
          <su-dropdown items="{ indicadores }"></su-dropdown>
        </div>
        <div class="four wide field">
          <label>Operador</label>
          <su-dropdown items="{ operadores }" ></su-dropdown>
        </div>
        <div class="four wide field">
          <label>Valor</label>
          <input type="text"/>
        </div>
      </div>    
  </form>
 <script>
   this.dropdownItems =
   [
   {
   label: '- Selecione as Operações -',
   value: null,
   default: true
   },
   { value: '1', label: 'Cemig' },
   { value: '2', label: 'Oi' },
   { value: '3', label: 'Tim' },
   { value: '4', label: 'Claro' },
   { value: '5', label: 'Net' },
   { value: '6', label: 'Banco Inter' }
   ]

   this.indicadores =
   [
   {
   label: '- Selecione o indicador -',
   value: null,
   default: true
   },
   { value: '1', label: 'Tempo Logado' },
   { value: '2', label: 'Pausa' },
   { value: '3', label: 'Absenteismo' },

   ]

   this.operadores =
   [
   {
   label: '',
   value: null,
   default: true
   },
   { value: '1', label: '=' },
   { value: '2', label: '>' },
   { value: '3', label: '<' },

   ]
 </script>
</riot-regra>