package br.edu.ufpb.receitas.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Ingrediente {

    @NotNull
    @Column(unique = true)
    private long id;

    @NotNull
    @Column(unique = true)
    private String nome;

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "ingredientes")
    private Set<Receita> receitas = new HashSet<Receita>();

    @ManyToOne
    private Usuario likes;
}
