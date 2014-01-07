package br.com.fmyfabio.sgt.service;

import br.com.fmyfabio.sgt.exception.NegocioException;
import br.com.fmyfabio.sgt.model.AgendamentoModel;

public interface AgendamentoService {

	public Double calcularTaxaAgendamento(AgendamentoModel agendamentoModel);

	public void validarTaxaAgendamento(AgendamentoModel agendamentoModel)
			throws NegocioException;
	
}
