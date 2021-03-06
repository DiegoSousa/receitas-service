// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas.repository;

import br.edu.ufpb.receitas.domain.Receita;
import br.edu.ufpb.receitas.repository.ReceitaDAO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect ReceitaDAO_Roo_Jpa_Repository {
    
    declare parents: ReceitaDAO extends JpaRepository<Receita, Long>;
    
    declare parents: ReceitaDAO extends JpaSpecificationExecutor<Receita>;
    
    declare @type: ReceitaDAO: @Repository;
    
}
