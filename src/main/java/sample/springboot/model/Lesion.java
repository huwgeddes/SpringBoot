package sample.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "lesison")
public class Lesion {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "lesion_id")
    private long id;

    @NotNull
    @Column(name = "her2_status")
    private Boolean her2Status;

    @NotNull
    @Column(name = "pgr_status")
    private Boolean pgrStatus;

    @NotNull
    @Column(name = "er_status")
    private Boolean erStatus;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cancer_id")
    private Cancer cancer;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Boolean getHer2Status() {
        return her2Status;
    }

    public void setHer2Status(Boolean her2Status) {
        this.her2Status = her2Status;
    }

    public Boolean getPgrStatus() {
        return pgrStatus;
    }

    public void setPgrStatus(Boolean pgrStatus) {
        this.pgrStatus = pgrStatus;
    }

    public Boolean getErStatus() {
        return erStatus;
    }

    public void setErStatus(Boolean erStatus) {
        this.erStatus = erStatus;
    }

    public Cancer getCancer() {
        return cancer;
    }

    public void setCancer(Cancer cancer) {
        this.cancer = cancer;
    }

}
