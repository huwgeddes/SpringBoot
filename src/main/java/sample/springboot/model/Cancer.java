package sample.springboot.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import sample.springboot.enums.CancerType;

@Entity
@Table(name = "cancer")
public class Cancer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "cancer_id")
    private long id;

    @NotNull
    @Column(name = "date_diagnosed")
    private Date dateDiagnosed;

    @NotNull
    @Column(name = "cancer_type")
    private CancerType cancerType;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "patient_id")
    private Patient patient;
    
    @OneToMany(mappedBy = "cancer", cascade=CascadeType.ALL)
    private List<Lesion> lesions;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getDateDiagnosed() {
        return dateDiagnosed;
    }

    public void setDateDiagnosed(Date dateDiagnosed) {
        this.dateDiagnosed = dateDiagnosed;
    }

    public CancerType getCancerType() {
        return cancerType;
    }

    public void setCancerType(CancerType cancerType) {
        this.cancerType = cancerType;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public List<Lesion> getLesions() {
        return lesions;
    }

    public void setLesions(List<Lesion> lesions) {
        this.lesions = lesions;
    }

}
