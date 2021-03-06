// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas.service;

import br.edu.ufpb.receitas.domain.Ingrediente;
import br.edu.ufpb.receitas.service.IngredienteService;
import java.util.List;

privileged aspect IngredienteService_Roo_Service {
    
    public abstract long IngredienteService.countAllIngredientes();    
    public abstract void IngredienteService.deleteIngrediente(Ingrediente ingrediente);    
    public abstract Ingrediente IngredienteService.findIngrediente(Long id);    
    public abstract List<Ingrediente> IngredienteService.findAllIngredientes();    
    public abstract List<Ingrediente> IngredienteService.findIngredienteEntries(int firstResult, int maxResults);    
    public abstract void IngredienteService.saveIngrediente(Ingrediente ingrediente);    
    public abstract Ingrediente IngredienteService.updateIngrediente(Ingrediente ingrediente);    
}
