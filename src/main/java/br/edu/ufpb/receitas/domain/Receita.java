package br.edu.ufpb.receitas.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
@RooJson(deepSerialize = true)
public class Receita {

    @NotNull
    @Column(unique = true)
    private String nome;

    @Column(unique = true)
    private String descricao;

    @NotNull
    @Column(unique = true)
    private String preparo;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Ingrediente> ingredientes = new HashSet<Ingrediente>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Usuario> likes = new HashSet<Usuario>();
}
