package com.malalayousafzai.malala.service;

import com.malalayousafzai.malala.DAO.ClienteDAO;
import com.malalayousafzai.malala.model.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ServiceClienteImpl implements IServiceCliente {

     @Autowired
    private ClienteDAO clienteDao;

     public Cliente findByNomeUsuarioAndSenha(String nomeUsuario, String senha){
        Cliente cliente = clienteDao.findByNomeUsuarioAndSenha(nomeUsuario, senha);
        return cliente;

     }

    @Override
    public Cliente criarNovo(Cliente novo){
        if(novo.getNome() != null){
            return clienteDao.save(novo);
        }
        return null;
    }

    @Override
    public Optional<Cliente> detalhar(Integer id){
        return clienteDao.findById(id);
    }

    @Override
    public List<Cliente> listar(){
        return clienteDao.findAll();
    }

    @Override
    public Cliente alterarDados(Integer id, Cliente dados){
        Optional<Cliente> clienteVerificacao = clienteDao.findById(id);
        if (clienteVerificacao.isPresent()){
            Cliente clienteAtualizado = clienteVerificacao.get();
            clienteAtualizado.setNome(dados.getNome());
            clienteAtualizado.setEmail(dados.getEmail());
            clienteAtualizado.setSenha(dados.getSenha());
            clienteAtualizado.setTelefone(dados.getTelefone());
            clienteAtualizado.setNomeUsuario(dados.getNomeUsuario());
            clienteAtualizado.setCpf(dados.getCpf());
            return clienteDao.save(clienteAtualizado);
        }
        return null;
    }

    public void remover(Integer id){
        clienteDao.deleteById(id);
    }

}
