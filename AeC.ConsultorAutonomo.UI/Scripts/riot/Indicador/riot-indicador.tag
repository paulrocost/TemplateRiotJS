<riot-indicador>
<form class="ui form" onsubmit={add_indicador}>
  <h4 class="ui dividing header">Cadastro Indicadores</h4>
  <div class="field">    
    <div class="three fields">
      <div class="four wide field">
	      <label>Nome</label>
        <input type="text" name="shipping[Nome indicador]" ref="firstname" placeholder="First Name"/>
      </div>  
	    <div class=" four wide field">
        <label>Unidade do indicador</label>
        <su-dropdown items="{ unidadeItems }" ref="unidadeselected"></su-dropdown>       
      </div>
      <div class=" four wide field">
        <label>Tipo indicador</label>
        <su-dropdown items="{ tipoItems }" ref="tiposelected"></su-dropdown>        
      </div>
      <div class="three wide field">
        <label> .</label>
        <button type="submit" class="ui button" tabindex="0" >Salvar</button>
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
    <tbody each={indicadoresList}>
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
    this.unidadeItems =
    [
    {
    label: '- Selecione a Unidade -',
    value: null,
    default: true
    },
    { value: 'Número [int]', label: 'Número [int]' },
    { value: 'Texto [string]', label: 'Texto [string]' },
    { value: 'Decimal [0,00]', label: 'Decimal [0,00]' },
    { value: 'Percentual [%]', label: 'Percentual [%]' },
    ]

    this.tipoItems =
    [
    {
    label: '- Selecione o Tipo -',
    value: null,
    default: true
    },
    { value: 'Querência', label: 'Querência' },
    { value: 'Negócio', label: 'Negócio' },
    ]

    this.indicadoresList = [
    {indicador:'Tempo Logado', unidade:'Número', tipo: 'Querência'},
    {indicador:'Pausa', unidade:'Número', tipo: 'Querência'},
    {indicador:'Absenteísmo', unidade:'Número', tipo: 'Querência'}
    ]

    this.on('mount', () => {
    this.refs.unidadeselected.on('change', target => {
    //this.indicadoresList.push(`Changed. label: ${target.label}, value: ${target.value}`)
    });
    this.refs.tiposelected.on('change', target => {
    //this.indicadoresList.push(`Changed. label: ${target.label}, value: ${target.value}`)
    });
    });

    this.add_indicador = function(e){
    e.preventDefault();   
    this.indicadoresList.push(
    {
    indicador: this.refs.firstname.value,
    unidade: this.refs.unidadeselected.value,
    tipo: this.refs.tiposelected.value
    });
    }
    this.delete = function(e){      
      this.indicadoresList.splice(e.item,1);
    }

  </script>
</riot-indicador>
