sgt.viewModel.AgendamentoViewModel = function () {
    var self = this;

    self.agendamentoModel = ko.observable(new sgt.model.AgendamentoModel());
    self.listaAgendamento = ko.observableArray();
    self.agendamentoService = new sgt.service.AgendamentoService();

    self.adicionarAgendamento = function () {
        self.agendamentoService.calcularTaxa( self.agendamentoModel(), function (resultado) {
            self.agendamentoModel().taxa = resultado;
        });
    }

    self.listarAgendamentos = function () {
        self.agendamentoService.listarAgendamentos( function (resultado) {
            console.log(resultado);
            if (resultado) {
                self.listaAgendamento(resultado);
            }
        });        
    } 

    self.confirmarAgendamento = function () {
        self.agendamentoService.salvarAgendamento( self.agendamentoModel(), function (resultado) {
            if (resultado) {
                console.log('SALVOU');
                self.listarAgendamentos();
            } else {
                console.log('NAO SALVOU');
            }
        });
    }

    <!-- CONSTRUTOR -->
        self.listarAgendamentos();
    <!-- CONSTRUTOR -->

};

$( document ).ready(function() {
    window.__agendamentoViewModel = new sgt.viewModel.AgendamentoViewModel();
    ko.applyBindings(__agendamentoViewModel);
});