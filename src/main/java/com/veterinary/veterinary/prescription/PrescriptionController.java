package com.veterinary.veterinary.prescription;

import com.veterinary.veterinary.medicine.Medicine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping(path = "/prescriptions")
public class PrescriptionController {

    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @GetMapping
    public Iterable<Prescription> getPrescriptions() {
        return prescriptionRepository.findAll();
    }

    @GetMapping("/{prescriptionId}")
        public Optional<Prescription> getPrescription(@PathVariable("prescriptionId") int prescriptionId) {
            return prescriptionRepository.findById(prescriptionId);
    }

    @GetMapping("/name/{name}")
    public Iterable<Prescription> getPrescription(@PathVariable("name") String name) {
        return prescriptionRepository.findPrescriptionByNameIsContaining(name);
    }

    @PostMapping
    public Prescription addPrescription(@RequestBody Prescription newPrescription) {
        return prescriptionRepository.save(newPrescription);
    }

    @DeleteMapping("/{id}")
    public void deletePrescription(@PathVariable int id) {
        prescriptionRepository.deleteById(id);
    }

    @PutMapping("/{id}")
    public Prescription updatePrescription(@PathVariable("id") int id, @RequestBody Prescription prescription) {
        prescription.setId(id);
        return prescriptionRepository.save(prescription);
    }
}
