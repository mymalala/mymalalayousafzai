package com.malalayousafzai.malala.controller;


import com.malalayousafzai.malala.model.Video;
import com.malalayousafzai.malala.service.ServiceVideoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/videos")

public class VideoController {

    @Autowired
    private ServiceVideoImpl serviceVideoImpl;

    @GetMapping
    public List<Video> listar(){
        return serviceVideoImpl.listar();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional> detalhar(@PathVariable Integer id){
        Optional<Video> resp = serviceVideoImpl.detalhar(id);
        if(resp.isPresent()){
            return ResponseEntity.ok(resp);
        }
        return ResponseEntity.badRequest().build();
    }

    @GetMapping("/concluidos")
    public List<Video> listarVideosConcluidos(){
        return serviceVideoImpl.listarVideosConcluidos();
    }


    @PutMapping("/{id}/concluido")
    public ResponseEntity<String> concluir(@PathVariable Integer id){
        Video resp = serviceVideoImpl.concluir(id);
        if(resp != null){
            return ResponseEntity.ok("Parabéns! Você concluiu este curso!");
        }
        return ResponseEntity.badRequest().build();
    }
    @PutMapping ("/{id}/classificado")
    public ResponseEntity<String> classificar(@PathVariable Integer id, @RequestBody Video dados){
       Video resp = serviceVideoImpl.classificar(id, dados);
        if(resp != null){
            return ResponseEntity.ok("Video classificado com sucesso!");
        }
        return ResponseEntity.badRequest().build();
    }
}
