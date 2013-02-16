// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas;

import br.edu.ufpb.receitas.UsuarioController;
import br.edu.ufpb.receitas.domain.Usuario;
import br.edu.ufpb.receitas.service.UsuarioService;
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

privileged aspect UsuarioController_Roo_Controller_Json {
    
    @Autowired
    UsuarioService UsuarioController.usuarioService;
    
    @RequestMapping(value = "/{id}", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> UsuarioController.showJson(@PathVariable("id") Long id) {
        Usuario usuario = usuarioService.findUsuario(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (usuario == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(usuario.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> UsuarioController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Usuario> result = usuarioService.findAllUsuarios();
        return new ResponseEntity<String>(Usuario.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> UsuarioController.createFromJson(@RequestBody String json) {
        Usuario usuario = Usuario.fromJsonToUsuario(json);
        usuarioService.saveUsuario(usuario);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> UsuarioController.createFromJsonArray(@RequestBody String json) {
        for (Usuario usuario: Usuario.fromJsonArrayToUsuarios(json)) {
            usuarioService.saveUsuario(usuario);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> UsuarioController.updateFromJson(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Usuario usuario = Usuario.fromJsonToUsuario(json);
        if (usuarioService.updateUsuario(usuario) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> UsuarioController.updateFromJsonArray(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        for (Usuario usuario: Usuario.fromJsonArrayToUsuarios(json)) {
            if (usuarioService.updateUsuario(usuario) == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> UsuarioController.deleteFromJson(@PathVariable("id") Long id) {
        Usuario usuario = usuarioService.findUsuario(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (usuario == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        usuarioService.deleteUsuario(usuario);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}
