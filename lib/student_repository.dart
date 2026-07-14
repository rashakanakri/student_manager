import 'student.dart';
import 'i_student_repository.dart';

class StudentRepository implements IStudentRepository {
  final List<Student> _students = [];

  @override
  void save(Student student) => _students.add(student);

  @override
  void delete(String name) => _students.removeWhere((s) {
    return s.name == name;
  });

  @override
  List<Student> fetchAll() => List.unmodifiable(_students);

  @override
void updateGpa(String id, double newGpa) {
  for (var student in _students) {
    if (student.id == id) {
      student.gpa = newGpa;
      break;
    }
  }
}
}