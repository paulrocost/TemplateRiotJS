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

    <h4 class="ui dividing header">Condicionais 
      <button class="ui tiny button green right floated" onclick={add_conditional} style="margin-bottom:10px;">
        <i class="icon plus"></i>
        Adicionar
      </button>
    </h4>    
      <div each={conditionals}>
        <riot-conditional></riot-conditional>
      </div>
  </form>
  <style>
    .ui.header{
      line-height: 2.285714em !important;
    }
  </style>
 <script>
   this.conditionals = [{}];
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

   this.add_conditional = function(e){
      e.preventDefault();
      this.conditionals.push({});
   }
 </script>
</riot-regra>