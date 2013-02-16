// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas.domain;

import br.edu.ufpb.receitas.domain.Ingrediente;
import br.edu.ufpb.receitas.domain.IngredienteDataOnDemand;
import br.edu.ufpb.receitas.repository.IngredienteDAO;
import br.edu.ufpb.receitas.service.IngredienteService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect IngredienteDataOnDemand_Roo_DataOnDemand {
    
    declare @type: IngredienteDataOnDemand: @Component;
    
    private Random IngredienteDataOnDemand.rnd = new SecureRandom();
    
    private List<Ingrediente> IngredienteDataOnDemand.data;
    
    @Autowired
    IngredienteService IngredienteDataOnDemand.ingredienteService;
    
    @Autowired
    IngredienteDAO IngredienteDataOnDemand.ingredienteDAO;
    
    public Ingrediente IngredienteDataOnDemand.getNewTransientIngrediente(int index) {
        Ingrediente obj = new Ingrediente();
        setNome(obj, index);
        return obj;
    }
    
    public void IngredienteDataOnDemand.setNome(Ingrediente obj, int index) {
        String nome = "nome_" + index;
        obj.setNome(nome);
    }
    
    public Ingrediente IngredienteDataOnDemand.getSpecificIngrediente(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Ingrediente obj = data.get(index);
        Long id = obj.getId();
        return ingredienteService.findIngrediente(id);
    }
    
    public Ingrediente IngredienteDataOnDemand.getRandomIngrediente() {
        init();
        Ingrediente obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ingredienteService.findIngrediente(id);
    }
    
    public boolean IngredienteDataOnDemand.modifyIngrediente(Ingrediente obj) {
        return false;
    }
    
    public void IngredienteDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ingredienteService.findIngredienteEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Ingrediente' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Ingrediente>();
        for (int i = 0; i < 10; i++) {
            Ingrediente obj = getNewTransientIngrediente(i);
            try {
                ingredienteService.saveIngrediente(obj);
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            ingredienteDAO.flush();
            data.add(obj);
        }
    }
    
}
