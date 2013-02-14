package br.edu.ufpb.receitas.repository;

import br.edu.ufpb.receitas.domain.Ingrediente;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Ingrediente.class)
public interface IngredienteDAO {
}
