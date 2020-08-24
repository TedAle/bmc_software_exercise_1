package atedeschi.bmc.exercise_1.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "WINE")
public class Wine {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "wine_seq_generator")
	@SequenceGenerator(name="wine_seq_generator", initialValue=1, sequenceName = "wineid_seq", allocationSize=50)
	@Column(name = "id", updatable = false, nullable = false)
	private int id;
	private String name;
	private String description;
	private BigDecimal abv;
	private String kind;
	private String brand;
	private String origin;
	private Integer year;
	private BigDecimal price;
	private String image_data_uri;
	private String currency;
}
