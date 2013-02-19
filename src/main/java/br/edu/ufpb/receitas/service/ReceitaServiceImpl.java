package br.edu.ufpb.receitas.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import br.edu.ufpb.receitas.domain.Ingrediente;
import br.edu.ufpb.receitas.domain.Receita;
import br.edu.ufpb.receitas.repository.IngredienteDAO;

public class ReceitaServiceImpl implements ReceitaService {
	
	@Autowired
	private IngredienteDAO ingredienteDAO;
	
	public void saveReceita(Receita receita) {
		
		Set<Ingrediente> ingredientesAux = new HashSet<Ingrediente>();
		for (Ingrediente ingrediente : receita.getIngredientes()) {
			ingredientesAux.add(ingredienteDAO.save(ingrediente));
		}
		receita.setIngredientes(ingredientesAux);
		receitaDAO.save(receita);
	}
}
