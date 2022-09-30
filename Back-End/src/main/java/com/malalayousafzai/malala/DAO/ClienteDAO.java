package com.malalayousafzai.malala.DAO;


import com.malalayousafzai.malala.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteDAO extends JpaRepository<Cliente, Integer> {

    @Query("from Cliente where nomeUsuario = :nomeUsuario and senha = :senha")
    public Cliente findByNomeUsuarioAndSenha(String nomeUsuario, String senha);
}
