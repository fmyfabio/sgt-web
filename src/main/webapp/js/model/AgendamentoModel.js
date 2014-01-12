sgt.model.AgendamentoModel = function(obj) {
 	var self = this;

	self.contaOrigem = obj ? obj.contaOrigem : '';
    self.contaDestino = obj ? obj.contaDestino : '';
    self.valorTransferencia = obj ? obj.valorTransferencia : 0;
    self.taxa = obj ? obj.taxa : 0;
    self.dataAgendamento = obj ? obj.dataAgendamento : new Date();
    self.tipoAgendamento = obj ? obj.tipoAgendamento : '';
};

sgt.model.AgendamentoModel.constructor = sgt.model.AgendamentoModel;

