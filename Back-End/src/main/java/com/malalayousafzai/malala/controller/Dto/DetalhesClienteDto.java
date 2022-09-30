package com.malalayousafzai.malala.controller.Dto;


import com.malalayousafzai.malala.model.Cliente;

public class DetalhesClienteDto {

    private Integer id;
    private String nome;
    private String email;
    private String senha;
    private String telefone;
    private String nomeUsuario;


    public DetalhesClienteDto(Cliente cliente){
        this.id = cliente.getId();
        this.nome = cliente.getNome();
        this.email = cliente.getEmail();
        this.senha = cliente.getSenha();
        this.telefone = cliente.getTelefone();
        this.nomeUsuario = cliente.getNomeUsuario();

    }

    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

}
