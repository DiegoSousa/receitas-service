// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas;

import br.edu.ufpb.receitas.IngredienteController;
import br.edu.ufpb.receitas.domain.Ingrediente;
import br.edu.ufpb.receitas.service.IngredienteService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect IngredienteController_Roo_Controller_Json {
    
    @Autowired
    IngredienteService IngredienteController.ingredienteService;
    
    @RequestMapping(value = "/{id}", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> IngredienteController.showJson(@PathVariable("id") Long id) {
        Ingrediente ingrediente = ingredienteService.findIngrediente(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (ingrediente == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(ingrediente.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> IngredienteController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Ingrediente> result = ingredienteService.findAllIngredientes();
        return new ResponseEntity<String>(Ingrediente.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> IngredienteController.createFromJson(@RequestBody String json) {
        Ingrediente ingrediente = Ingrediente.fromJsonToIngrediente(json);
        ingredienteService.saveIngrediente(ingrediente);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> IngredienteController.createFromJsonArray(@RequestBody String json) {
        for (Ingrediente ingrediente: Ingrediente.fromJsonArrayToIngredientes(json)) {
            ingredienteService.saveIngrediente(ingrediente);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> IngredienteController.updateFromJson(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Ingrediente ingrediente = Ingrediente.fromJsonToIngrediente(json);
        if (ingredienteService.updateIngrediente(ingrediente) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> IngredienteController.updateFromJsonArray(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        for (Ingrediente ingrediente: Ingrediente.fromJsonArrayToIngredientes(json)) {
            if (ingredienteService.updateIngrediente(ingrediente) == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> IngredienteController.deleteFromJson(@PathVariable("id") Long id) {
        Ingrediente ingrediente = ingredienteService.findIngrediente(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (ingrediente == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        ingredienteService.deleteIngrediente(ingrediente);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}
