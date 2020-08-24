package atedeschi.bmc.exercise_1.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "CATALOG")
public class Catalog {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "catalog_seq_generator")
	@SequenceGenerator(name="catalog_seq_generator", initialValue=1, sequenceName = "catalogid_seq", allocationSize=50)
	@Column(name = "id", updatable = false, nullable = false)
	private int id;
	private String show;
	private BigDecimal discount;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date added;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "WINE_ID", foreignKey = @ForeignKey(name = "CATALOG_FK1"))
	private Wine wine;
}
