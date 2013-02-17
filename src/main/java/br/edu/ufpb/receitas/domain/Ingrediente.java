package br.edu.ufpb.receitas.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.FetchType;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
@RooJson(deepSerialize = true)
public class Ingrediente {

    @NotNull
    @Column(unique = true)
    private String nome;

    //Usado para busca bidirecional.
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "ingredientes", fetch = FetchType.EAGER)
    private Set<Receita> receitas = new HashSet<Receita>();
}
