// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.receitas.domain;

import br.edu.ufpb.receitas.domain.Receita;
import br.edu.ufpb.receitas.domain.Usuario;
import java.util.Set;

privileged aspect Usuario_Roo_JavaBean {
    
    public String Usuario.getFotos() {
        return this.fotos;
    }
    
    public void Usuario.setFotos(String fotos) {
        this.fotos = fotos;
    }
    
    public String Usuario.getNome() {
        return this.nome;
    }
    
    public void Usuario.setNome(String nome) {
        this.nome = nome;
    }
    
    public String Usuario.getLogin() {
        return this.login;
    }
    
    public void Usuario.setLogin(String login) {
        this.login = login;
    }
    
    public String Usuario.getSenha() {
        return this.senha;
    }
    
    public void Usuario.setSenha(String senha) {
        this.senha = senha;
    }
    
    public Set<Receita> Usuario.getLikeReceitas() {
        return this.likeReceitas;
    }
    
    public void Usuario.setLikeReceitas(Set<Receita> likeReceitas) {
        this.likeReceitas = likeReceitas;
    }
    
}