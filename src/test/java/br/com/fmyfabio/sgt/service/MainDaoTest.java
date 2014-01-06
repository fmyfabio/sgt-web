package br.com.fmyfabio.sgt.service;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext-test.xml" })
public class MainDaoTest {
	
	@Autowired
	private AgendamentoService agendamentoService;
	
	@Test
	public void teste() {
		Assert.assertEquals(true, true);
	}
	
	@Test
	public void teste1() {
		String resultadoTeste = this.agendamentoService.teste();
		Assert.assertEquals("Teste 1", resultadoTeste);
	}
}
