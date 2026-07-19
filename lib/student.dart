
class Student {
 
  final String id;
  String name;
  int level;
  double gpa;

  Student({
    required this.id, 
    required this.name, 
    required this.level,
    required this.gpa,
  });



  @override
  String toString() {
    return ' Name: $name |ID: $id | Level: $level | Gpa: $gpa';
  }
}