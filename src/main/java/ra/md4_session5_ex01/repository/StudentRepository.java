package ra.md4_session5_ex01.repository;

import org.springframework.stereotype.Repository;
import ra.md4_session5_ex01.model.Student;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentRepository {

    public List<Student> findAll() {
        List<Student> students = new ArrayList<>();
        Connection conn = null;
        CallableStatement cstmt = null;
        ResultSet rs = null;
        try {
            conn = Database.getConnection();
            cstmt = conn.prepareCall("{call getAllStudents()}");
            rs = cstmt.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setStudentName(rs.getString("name"));
                student.setEmail(rs.getString("email"));
                student.setBirthday(LocalDate.parse(rs.getString("birthday")));
                student.setAvgMark(rs.getFloat("averageMark"));
                students.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Database.closeConnection(conn,cstmt);
        }
        return students;
    }
}
