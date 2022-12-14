package com.example.retosophos.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "game_copy")
public class GameCopyModel {

    @Id
    private Long id;
    @Column(name = "platform_game_id")
    private Long platformGameId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPlatformGameId() {
        return platformGameId;
    }

    public void setPlatformGameId(Long platformGameId) {
        this.platformGameId = platformGameId;
    }

}
