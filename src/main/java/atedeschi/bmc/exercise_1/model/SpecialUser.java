package atedeschi.bmc.exercise_1.model;

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

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "SPECIAL_USER")
public class SpecialUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "special_user_seq_generator")
	@SequenceGenerator(name="special_user_seq_generator", initialValue=1, sequenceName = "special_userid_seq", allocationSize=50)
	@Column(name = "id", updatable = false, nullable = false)
	private int id;
	private String username;
	private String password;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "ROLE_ID", foreignKey = @ForeignKey(name = "SPECIAL_USER_FK1"))
	private Role role;
}
