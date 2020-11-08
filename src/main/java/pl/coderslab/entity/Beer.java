package pl.coderslab.entity;

import lombok.*;
//import org.springframework.data.annotation.Id;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "beers")
public class Beer {


//    @javax.persistence.Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String type;

    private Boolean inStock;

    private String name;

    private String description;

    private Double alcohol;

    private String country;

    private Double price;

    private String brewery;
}
