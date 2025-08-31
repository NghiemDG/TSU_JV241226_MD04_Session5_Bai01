package ra.md4_session5_ex01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.md4_session5_ex01.model.Student;
import ra.md4_session5_ex01.service.StudentService;

@Controller
@RequestMapping("/student")

public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("students", studentService.getStudents());
        return "list";
    }
}
