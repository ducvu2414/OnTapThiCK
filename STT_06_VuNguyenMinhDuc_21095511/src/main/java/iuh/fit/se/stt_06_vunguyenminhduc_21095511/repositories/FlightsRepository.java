package iuh.fit.se.stt_06_vunguyenminhduc_21095511.repositories;

import iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities.Flights;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface FlightsRepository extends JpaRepository<Flights, Integer>{

    public List<Flights> findAllByOrderByDepartureDateDescAirplaneNameAsc();

    @Query("SELECT f FROM Flights f WHERE f.airplaneName = :airplaneName " +
            "AND f.departureDate <= :newDepartureDate " +
            "AND f.arrivalDate >= :newDepartureDate")
    List<Flights> findOverlappingFlights(
            @Param("airplaneName") String airplaneName,
            @Param("newDepartureDate") LocalDate newDepartureDate
    );
}
