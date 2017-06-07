package sample.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import sample.springboot.model.Patient;

public interface PatientRepository extends CrudRepository<Patient, Integer> {
    
}
