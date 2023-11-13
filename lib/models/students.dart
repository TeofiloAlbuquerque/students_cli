import 'address.dart';
import 'course.dart';

class Students {
  int id;
  String name;
  int? idade;
  List<String> nameCourses;
  List<Course> courses;
  Address address;
  Students({
    required this.id,
    required this.name,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });
}
