package atedeschi.bmc.exercise_1.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
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
@Table(name = "WAREHOUSE")
public class Warehouse {
	@Id
	private String id;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "WINE_ID", foreignKey = @ForeignKey(name = "WAREHOUSE_FK1"))
	private Wine wine;
	private BigDecimal amount;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date last_update;
}
