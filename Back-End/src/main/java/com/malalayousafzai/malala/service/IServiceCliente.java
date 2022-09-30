package com.malalayousafzai.malala.service;


import com.malalayousafzai.malala.model.Cliente;
import java.util.List;
import java.util.Optional;

public interface IServiceCliente {
    public Cliente criarNovo(Cliente novo);
    public List<Cliente> listar();
    public Optional<Cliente> detalhar(Integer id);
    public Cliente alterarDados(Integer id, Cliente dados);

}
