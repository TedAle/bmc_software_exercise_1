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
@Table(name = "ROLE")
public class Role {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "role_seq_generator")
	@SequenceGenerator(name="role_seq_generator", initialValue=1, sequenceName = "roleid_seq", allocationSize=50)
	@Column(name = "id", updatable = false, nullable = false)
	private int id;
	private String catalog;
	private String warehouse;
	private String wine_order;
	
}
