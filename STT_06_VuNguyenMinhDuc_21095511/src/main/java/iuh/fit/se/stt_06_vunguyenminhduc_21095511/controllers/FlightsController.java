package iuh.fit.se.stt_06_vunguyenminhduc_21095511.controllers;

import iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities.FlightStatus;
import iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities.Flights;
import iuh.fit.se.stt_06_vunguyenminhduc_21095511.services.FlightsServiceImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Arrays;
import java.util.List;

@Controller
public class FlightsController {

    private final FlightsServiceImpl flightsService;

    @Autowired
    public FlightsController(FlightsServiceImpl flightsService) {
        this.flightsService = flightsService;
    }

    @GetMapping("/flights")
    public String showFlights(Model model) {
        List<Flights> flightsList = flightsService.findAllByOrderByDepartureDateDescAirplaneNameAsc();
        model.addAttribute("flights", flightsList);
        return "flights";
    }

    @GetMapping("/flights/add")
    public String showFlightsAdd(Model model) {
        Flights flight = new Flights();
        model.addAttribute("flight", flight);
        model.addAttribute("flightStatus", Arrays.asList(FlightStatus.values()));
        return "flights-add";
    }

    @PostMapping("/flights/add")
    public String addFlight(@ModelAttribute("flight") @Valid Flights flight, BindingResult result, Model model) {
        if (result.hasErrors()) {
            for (var error : result.getAllErrors()) {
                System.out.println(error.getDefaultMessage());
            }
            return "flights-add";
        }

        flightsService.saveFlight(flight);
        return "redirect:/flights";
    }

    @GetMapping("/flights/delete/{id}")
    public String deleteFlight(@ModelAttribute("id") int id, RedirectAttributes redirectAttributes) {
        flightsService.deleteFlightById(id);

        redirectAttributes.addFlashAttribute("message", "Flight deleted successfully");
        return "redirect:/flights";
    }
}
