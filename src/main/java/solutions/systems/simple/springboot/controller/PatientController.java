package solutions.systems.simple.springboot.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import solutions.systems.simple.springboot.model.Patient;
import solutions.systems.simple.springboot.repository.PatientRepository;

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
