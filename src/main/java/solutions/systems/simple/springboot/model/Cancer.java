package solutions.systems.simple.springboot.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "cancer")
public class Cancer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "cancer_id")
	private int id;

	@Column(name = "type")
	@NotEmpty(message = "*Please provide a type")
	private String type;

	@Column(name = "date_diagnosed")
	private Date dateDiagnosed;

	@ManyToOne(optional = false)
	@JoinColumn(name = "patient_id", nullable = false)
	private Patient patient;
}
