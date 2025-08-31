package ra.md4_session5_ex01.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Student {
    private int id;
    private String studentName;
    private String email;
    private LocalDate birthday;
    private float avgMark;
}
