import 'i_student_repository.dart';
import 'student.dart';

class StudentManager {
  final IStudentReader _reader;
  final IStudentWriter _writer;
  // final IStudentRepository _repository;
  // StudentManager(this._repository);
  StudentManager(this._reader, this._writer);
  bool addStudent(String name,String id,  int level, double gpa) {

  if (name.isEmpty) {
  print("Name cannot be empty");
  return false;}
  
  
  if (gpa < 0 || gpa > 4.0){
  print("GPA must be between 0 and 4");
  return false;}
  
    _writer.save(Student(name: name, id: id, level: level, gpa: gpa));
    print("Student added successfully!");
    return true;
  }

  void showAll() {
    final list = _reader.fetchAll();
    if (list.isEmpty) print("The list is empty");
    else list.forEach(print);
  }

  void deleteStudent(String id) {
  _writer.delete(id);
}


void updateStudentGpa(String id, double newGpa) {
  _writer.updateGpa(id, newGpa);
}


}