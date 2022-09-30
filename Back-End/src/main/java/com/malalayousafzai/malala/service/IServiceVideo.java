package com.malalayousafzai.malala.service;

import com.malalayousafzai.malala.model.Video;
import java.util.List;
import java.util.Optional;

public interface IServiceVideo  {
    public List<Video> listar();
    public Optional<Video> detalhar(Integer id);
    public Video concluir(Integer id);
    public Video classificar(Integer id, Video dados);
}

