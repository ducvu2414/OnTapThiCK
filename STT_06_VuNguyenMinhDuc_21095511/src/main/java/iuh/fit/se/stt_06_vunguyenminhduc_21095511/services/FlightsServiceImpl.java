package iuh.fit.se.stt_06_vunguyenminhduc_21095511.services;

import iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities.Flights;
import iuh.fit.se.stt_06_vunguyenminhduc_21095511.repositories.FlightsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlightsServiceImpl implements FlightsSerivce{

    private final FlightsRepository flightsRepository;

    @Autowired
    public FlightsServiceImpl(FlightsRepository flightsRepository) {
        this.flightsRepository = flightsRepository;
    }

    @Override
    public List<Flights> findAllByOrderByDepartureDateDescAirplaneNameAsc() {
        return flightsRepository.findAllByOrderByDepartureDateDescAirplaneNameAsc();
    }

    @Override
    public Flights saveFlight(Flights flight) {
        return flightsRepository.save(flight);
    }

    @Override
    public Flights findFlightById(int id) {
        return flightsRepository.findById(id).orElse(null);
    }

    @Override
    public void deleteFlightById(int id) {
        flightsRepository.deleteById(id);
    }
}
