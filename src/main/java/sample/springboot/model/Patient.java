package sample.springboot.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

import sample.springboot.enums.Gender;

@Entity
@Table(name = "patient")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "patient_id")
    private long id;

    @Column(name = "date_of_birth")
    @NotEmpty(message = "*Please provide a date of birth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;

    @Column(name = "gender")
    @NotEmpty(message = "*Please provide a gender")
    private Gender gender;
    
    @OneToMany(mappedBy = "patient", cascade=CascadeType.ALL)
    private List<Cancer> cancers;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }
    
    @Transient
    public String getFormattedDateOfBirth() {
        return new SimpleDateFormat("dd/MM/yyyy").format(dateOfBirth);
    }

    public List<Cancer> getCancers() {
        return cancers;
    }

    public void setCancers(List<Cancer> cancers) {
        this.cancers = cancers;
    }

}
