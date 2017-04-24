package solutions.systems.simple.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import solutions.systems.simple.springboot.model.Patient;

public interface PatientRepository extends CrudRepository<Patient, Integer> {
    
}
