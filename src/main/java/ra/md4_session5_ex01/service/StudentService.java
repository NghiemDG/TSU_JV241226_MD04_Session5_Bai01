package ra.md4_session5_ex01.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.md4_session5_ex01.model.Student;
import ra.md4_session5_ex01.repository.StudentRepository;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;
public List<Student> getStudents() {
    return studentRepository.findAll();
}
}
