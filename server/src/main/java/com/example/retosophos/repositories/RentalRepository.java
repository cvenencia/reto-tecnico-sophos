package com.example.retosophos.repositories;

import java.sql.Timestamp;
import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.retosophos.models.RentalModel;

public interface RentalRepository extends CrudRepository<RentalModel, Long> {
    public interface ClientRentGame {
        public Long getId();

        public String getFullName();

        public Timestamp getRentalDate();

        public String getTitle();

        public String getPlatform();
    }

    public interface FrequentClient {
        public Long getClientId();

        public Long getCount();
    }

    public interface RentedGameCount {
        public Long getGameId();

        public Long getCount();
    }

    public interface SalesOfDay {
        public String getFullName();

        public String getTitle();

        public int getPrice();
    }

    @Query(value = "SELECT r.id, c.first_name || ' ' || c.last_name fullName, r.rental_date rentalDate, g.title, p.platform FROM rental r JOIN client c ON c.id=r.client_id JOIN game_copy gc ON gc.id=r.game_copy_id JOIN platform_game pg ON gc.platform_game_id=pg.id JOIN platform p ON pg.platform_id=p.id JOIN game g ON pg.game_id=g.id WHERE returned=0 AND rental_date + ?1 < ?2", nativeQuery = true)
    public Collection<ClientRentGame> getOverdueClients(int rentalDays, String currentDate);

    @Query(value = "SELECT client_id clientId, count(*) count FROM rental GROUP BY client_id FETCH FIRST 1 ROWS ONLY", nativeQuery = true)
    public FrequentClient getMostFrequentClient();

    @Query(value = "SELECT g.id gameId, COUNT(g.id) count FROM rental r JOIN game_copy gc ON gc.id=r.game_copy_id JOIN platform_game pg ON gc.platform_game_id=pg.id JOIN game g ON pg.game_id=g.id GROUP BY g.id ORDER BY count DESC FETCH FIRST 1 ROWS ONLY", nativeQuery = true)
    public RentedGameCount getMostRentedGame();

    @Query(value = "SELECT r.price, g.title, c.first_name || ' ' || c.last_name fullName  FROM rental r JOIN game_copy gc ON gc.id=r.game_copy_id JOIN platform_game pg ON gc.platform_game_id=pg.id JOIN game g ON pg.game_id=g.id JOIN client c ON c.id=r.client_id WHERE r.rental_date = ?1", nativeQuery = true)
    public Collection<SalesOfDay> getSalesOfDay(String date);

    @Query(value = "SELECT id gameId, count(*) count FROM (SELECT g.id, g.title, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM c.birthdate) edad FROM rental r JOIN game_copy gc ON gc.id=r.game_copy_id JOIN platform_game pg ON gc.platform_game_id=pg.id JOIN game g ON pg.game_id=g.id JOIN client c ON c.id=r.client_id) WHERE edad >= ?1 AND edad < ?2 GROUP BY id ORDER BY count ASC FETCH FIRST 1 ROWS ONLY", nativeQuery = true)
    public RentedGameCount getLeastRentedGameByAge(int startAge, int finishAge);

}
