package com.example.retosophos.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.retosophos.repositories.GameCopyRepository;

@Service
public class GameCopyService {
    @Autowired
    GameCopyRepository gameCopyRepository;

}
