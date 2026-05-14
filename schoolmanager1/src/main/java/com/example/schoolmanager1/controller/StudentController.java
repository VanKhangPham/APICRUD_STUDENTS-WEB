package com.example.schoolmanager1.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.schoolmanager1.model.Student;
import com.example.schoolmanager1.service.StudentService;

@RestController
@RequestMapping("/api/students")
@CrossOrigin
public class StudentController {

    @Autowired
    private StudentService service;

    @PostMapping
    public Student addStudent(@RequestBody Student student) {
        return service.addStudent(student);
    }

    @PostMapping("/delete/{id}")
    public String deleteStudent(@PathVariable UUID id) {
        service.deleteStudent(id);
        return "Student with ID " + id + " has been deleted.";
    }

    @GetMapping("/search")
    public List<Student> searchByName(@RequestParam String name) {
        return service.findByName(name);
    }

    @GetMapping("/{id}")
    public Student getStudentById(@PathVariable UUID id) {
        return service.getStudentById(id);
    }

    @GetMapping
    public List<Student> getAllStudents() {
        return service.getAll();
    }

    @PostMapping("/update/{id}")
    public Student updateStudent(@PathVariable UUID id, @RequestParam String hoTen, @RequestParam String email) {
        Student existingStudent = service.getStudentById(id);
        if (existingStudent != null) {
            existingStudent.setHoTen(hoTen);
            existingStudent.setEmail(email);
            return service.addStudent(existingStudent);
        }
        return null;
    }
}
