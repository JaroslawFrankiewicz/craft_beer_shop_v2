package pl.coderslab.entity;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "beers")
public class Beer {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String type;

//    @Column(name = "quantity", nullable = false)
//    @Min(value = 0, message = "*Quantity has to be non negative number")
//    private Integer quantity;
//
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
