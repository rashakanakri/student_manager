import 'i_student_repository.dart';
import 'student.dart';

class StudentManager {
  final IStudentRepository _repository;
  StudentManager(this._repository);

  void addStudent(String name,String id,  int level, double gpa) {
    _repository.save(Student(name: name, id: id, level: level, gpa: gpa));
  }

  void showAll() {
    final list = _repository.fetchAll();
    if (list.isEmpty) print("The list is empty");
    else list.forEach(print);
  }

  void deleteStudent(String id) {
  _repository.delete(id);
}


void updateStudentGpa(String id, double newGpa) {
  _repository.updateGpa(id, newGpa);
}


}