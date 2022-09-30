package com.malalayousafzai.malala.controller;

import com.malalayousafzai.malala.controller.Dto.ClienteDto;
import com.malalayousafzai.malala.controller.Dto.DetalhesClienteDto;
import com.malalayousafzai.malala.model.Cliente;
import com.malalayousafzai.malala.service.ServiceClienteImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/clientes")

public class ClienteController {

    @Autowired
    private ServiceClienteImpl serviceClienteImpl;

    @GetMapping
    public List<ClienteDto> listar(){
       return ClienteDto.converter(serviceClienteImpl.listar());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional> detalhar(@PathVariable Integer id){
        Optional<Cliente> resp = serviceClienteImpl.detalhar(id);
        if(resp.isPresent()){
            return  ResponseEntity.ok(resp.map(DetalhesClienteDto::new));
        }
        return ResponseEntity.badRequest().build();
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(Cliente dados){
        String nomeUsuarioProcurar = dados.getNomeUsuario();
        String senhaProcurar = dados.getSenha();
        Cliente resp = serviceClienteImpl.findByNomeUsuarioAndSenha(nomeUsuarioProcurar, senhaProcurar);
        if(resp != null){
            return ResponseEntity.ok("Logado com sucesso!");
        }
        return ResponseEntity.badRequest().build();
    }

    @PostMapping(value = "/cadastrar",
            consumes = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE},
            produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE}
    )
    public ResponseEntity<String> cadastrar(@RequestBody Cliente novo){
        Cliente resp = serviceClienteImpl.criarNovo(novo);
        if(resp != null){
            return ResponseEntity.ok("Cadastrado com sucesso!");
        }
        return ResponseEntity.badRequest().build();
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> alterar(@PathVariable Integer id, @RequestBody Cliente dados){
        Cliente resp = serviceClienteImpl.alterarDados(id, dados);
        if(resp != null){
            return ResponseEntity.ok("Atualizado com sucesso!");
        }
        return ResponseEntity.badRequest().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> remover(@PathVariable Integer id){
        serviceClienteImpl.remover(id);
        return ResponseEntity.ok().build();
    }
}