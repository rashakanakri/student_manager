import 'student.dart';

abstract class IStudentWriter {
  void save(Student student);
  void delete(String id);

  void updateGpa(String id, double newGpa);
}

abstract class IStudentReader {
  List<Student> fetchAll();
}