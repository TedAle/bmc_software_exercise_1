package atedeschi.bmc.exercise_1.model;

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
@Table(name = "SHIPPING_ADDRESS")
public class ShippingAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "shipping_address_generator")
	@SequenceGenerator(name="shipping_address_generator", initialValue=1, sequenceName = "shipping_addressid_seq", allocationSize=50)
	@Column(name = "id", updatable = false, nullable = false)
	private int id;
	private String street;
	private String city;
	private String region;
	private String nation;
	private String province;
	private String cap;

}
