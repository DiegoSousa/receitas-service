package br.edu.ufpb.receitas.repository;

import br.edu.ufpb.receitas.domain.Usuario;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Usuario.class)
public interface UsuarioDAO {
}
