// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas.service;

import br.edu.ufpb.receitas.domain.Receita;
import br.edu.ufpb.receitas.repository.ReceitaDAO;
import br.edu.ufpb.receitas.service.ReceitaServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ReceitaServiceImpl_Roo_Service {
    
    declare @type: ReceitaServiceImpl: @Service;
    
    declare @type: ReceitaServiceImpl: @Transactional;
    
    @Autowired
    ReceitaDAO ReceitaServiceImpl.receitaDAO;
    
    public long ReceitaServiceImpl.countAllReceitas() {
        return receitaDAO.count();
    }
    
    public void ReceitaServiceImpl.deleteReceita(Receita receita) {
        receitaDAO.delete(receita);
    }
    
    public Receita ReceitaServiceImpl.findReceita(Long id) {
        return receitaDAO.findOne(id);
    }
    
    public List<Receita> ReceitaServiceImpl.findAllReceitas() {
        return receitaDAO.findAll();
    }
    
    public List<Receita> ReceitaServiceImpl.findReceitaEntries(int firstResult, int maxResults) {
        return receitaDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public Receita ReceitaServiceImpl.updateReceita(Receita receita) {
        return receitaDAO.save(receita);
    }
    
}
