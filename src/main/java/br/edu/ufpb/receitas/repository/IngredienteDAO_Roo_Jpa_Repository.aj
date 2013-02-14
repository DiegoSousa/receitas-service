// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas.repository;

import br.edu.ufpb.receitas.domain.Ingrediente;
import br.edu.ufpb.receitas.repository.IngredienteDAO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect IngredienteDAO_Roo_Jpa_Repository {
    
    declare parents: IngredienteDAO extends JpaRepository<Ingrediente, Long>;
    
    declare parents: IngredienteDAO extends JpaSpecificationExecutor<Ingrediente>;
    
    declare @type: IngredienteDAO: @Repository;
    
}