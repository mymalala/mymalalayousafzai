package com.malalayousafzai.malala.DAO;


import com.malalayousafzai.malala.model.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VideoDAO extends JpaRepository<Video, Integer> {
    @Query("from Video where concluido = true")
    public List<Video> findByConcluido();
}
