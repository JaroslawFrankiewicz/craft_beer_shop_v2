package pl.coderslab.entity;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "beers")
public class Beer {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String type;

    @NotNull
    private Boolean inStock;

    @NotEmpty
    private String name;

    @NotEmpty
    private String description;

    @NotNull
    private Double alcohol;

    @NotEmpty
    private String country;

    @NotNull
    private Double price;

    @NotEmpty
    private String brewery;

    @NotNull
    @Column(name = "unit", nullable = false)
    @Min(value = 0, message = "*Quantity has to be non negative number")
    private Integer unitStock;
}
