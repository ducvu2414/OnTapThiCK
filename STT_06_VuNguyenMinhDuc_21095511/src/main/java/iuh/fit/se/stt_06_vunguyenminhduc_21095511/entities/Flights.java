package iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@Setter
@Entity
public class Flights {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank(message = "Airplane name is required")
    private String airplaneName;

    @NotBlank(message = "Departure airport is required")
    private String departureAirport;

    @NotBlank(message = "Arrival airport is required")
    private String arrivalAirport;

    @NotNull(message = "Departure date is required")
    @Future(message = "Departure date must be in the future")
    private LocalDate departureDate;

    @NotNull(message = "Arrival date is required")
    @Future(message = "Arrival date must be in the future")
    private LocalDate arrivalDate;

    @NotNull(message = "Seat fare is required")
    @Positive(message = "Seat fare must be greater than 0")
    private Double seatFare;


    private byte flightStatus;
}
