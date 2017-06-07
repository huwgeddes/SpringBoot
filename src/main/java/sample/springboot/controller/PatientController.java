package sample.springboot.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sample.springboot.model.Patient;
import sample.springboot.repository.PatientRepository;

@Controller
@RequestMapping(path = "/patient")
public class PatientController {

    @Autowired
    private PatientRepository patientRepository;

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping(path = "/add")
    public @ResponseBody String addNewUser(@Valid Patient patient, BindingResult bindingResult) {
        patientRepository.save(patient);
        return "Saved";
    }
    
    @GetMapping(path = "findById")
    @ResponseBody
    public Patient findPatientById(@RequestParam Long patientId) {
        Patient patient = new Patient();
        
        patient.setDateOfBirth(new Date());
        patient.setGender("M");
        patient.setNationality("AUS");
        patient.setId(patientId);
        
        return patient;
    }

    @GetMapping(path = "/all")
    public @ResponseBody Iterable<Patient> getAllPatients() {
        Iterable<Patient> patients = patientRepository.findAll();
        return patients;
    }
    
    @GetMapping(path = "/")
    public ModelAndView getPatientPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("patient");
        return modelAndView;
    }

}
