package br.edu.ufpb.receitas.domain;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Usuario {

    @NotNull
    @Column(unique = true)
    private long id;

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
