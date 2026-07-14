import 'student.dart';

abstract class IStudentRepository {
  void save(Student student);
  void delete(String id);
  List<Student> fetchAll();


  void updateGpa(String id, double newGpa);
}