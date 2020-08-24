package atedeschi.bmc.exercise_1.model;

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
@Table(name = "CUSTOMER")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "customer_seq_generator")
	@SequenceGenerator(name="customer_seq_generator", initialValue=1, sequenceName = "customerid_seq", allocationSize=50)
	@Column(name = "id", updatable = false, nullable = false)
	private int id;
	private String username;
	private String password;
	private String firstname;
	private String lastname;
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "SHIPPING_ADDRESS_ID", foreignKey = @ForeignKey(name = "SHIPPING_ADDRESS_FK1"))
	private ShippingAddress shipping_address;
	private String phone;
}
