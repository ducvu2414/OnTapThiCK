package iuh.fit.se.stt_06_vunguyenminhduc_21095511.services;

import iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities.Flights;

import java.util.List;

public interface FlightsSerivce {
    public List<Flights> findAllByOrderByDepartureDateDescAirplaneNameAsc();

    public Flights saveFlight(Flights flight);

    public Flights findFlightById(int id);

    public void deleteFlightById(int id);
}
