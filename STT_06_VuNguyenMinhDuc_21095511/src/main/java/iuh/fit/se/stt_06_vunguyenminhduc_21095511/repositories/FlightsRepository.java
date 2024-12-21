package iuh.fit.se.stt_06_vunguyenminhduc_21095511.repositories;

import iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities.Flights;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FlightsRepository extends JpaRepository<Flights, Integer>{

    public List<Flights> findAllByOrderByDepartureDateDescAirplaneNameAsc();
}
