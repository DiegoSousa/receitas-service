package br.edu.ufpb.receitas.domain;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
@RooJson(deepSerialize = true)
public class Usuario {

    @Column(unique = true)
    private String fotos;

    @NotNull
    private String nome;

    @NotNull
    @Column(unique = true)
    private String login;

    @NotNull
    private String senha;
}
