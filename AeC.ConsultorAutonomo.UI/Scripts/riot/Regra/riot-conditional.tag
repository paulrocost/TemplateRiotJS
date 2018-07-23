<riot-conditional>
  <div class="ui raised segments customized">
    <div class="ui segment">
    <div class="ui tiny form">
      <div class="field">
        <div class="four fields">
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
          <div class="four wide field">
            
            <button class="ui tiny button red" style="margin-top:23px;">
              <i class="icon minus"></i>Remover
            </button>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
  <style>
    .ui.customized {
      margin-bottom:10px !important;
    }
  </style>
  <script>           
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
</riot-conditional>
