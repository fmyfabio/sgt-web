package br.com.fmyfabio.sgt.service.impl;

import org.springframework.stereotype.Service;

import br.com.fmyfabio.sgt.exception.NegocioException;
import br.com.fmyfabio.sgt.model.AgendamentoModel;
import br.com.fmyfabio.sgt.service.AgendamentoService;

@Service
public class AgendamentoServiceImpl implements AgendamentoService {

	public Double calcularTaxaAgendamento(AgendamentoModel agendamentoModel) {
		return null;
	}
	
	public void validarTaxaAgendamento(AgendamentoModel agendamentoModel) throws NegocioException {
		throw new NegocioException("");
	}

}
