package pl.coderslab.entity;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;
import javax.validation.constraints.NotBlank;
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

    private String type;

    @NotNull
    private Boolean inStock;

    private String name;

    private String description;

    private Double alcohol;

    private String country;

    private Double price;

    private String brewery;
}
