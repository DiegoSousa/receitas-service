package br.edu.ufpb.receitas.repository;

import br.edu.ufpb.receitas.domain.Receita;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Receita.class)
public interface ReceitaDAO {
}
