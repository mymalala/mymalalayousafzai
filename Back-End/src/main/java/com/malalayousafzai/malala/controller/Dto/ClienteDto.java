package com.malalayousafzai.malala.controller.Dto;

import com.malalayousafzai.malala.model.Cliente;

import java.util.List;
import java.util.stream.Collectors;

public class ClienteDto {

    private Integer id;
    private String nome;
    private String email;
    private String nomeUsuario;

    public ClienteDto(Cliente cliente){
        this.id = cliente.getId();
        this.nome = cliente.getNome();
        this.email = cliente.getEmail();
        this.nomeUsuario = cliente.getNomeUsuario();
    }

    public static List<ClienteDto> converter(List<Cliente> clientes) {
        return clientes.stream().map(ClienteDto::new).collect(Collectors.toList());
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
    public String getNomeUsuario() {
        return nomeUsuario;
    }


}
