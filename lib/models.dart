class University {
  final int id;
  final String wstoken;

  const University({required this.id, required this.wstoken});

  factory University.fromJSON(Map<String, dynamic> json) {
    return University(
      id: json['id'],
      wstoken: json['wstoken'],
    );
  }
}

class Student {
  final String utoken;
  final int id;
  final String userId;
  final String firstName;
  final String lastName;
  final String email;
  final String institution;
  final String department;
  final String phone1;
  final String phone2;
  final String profileImageUrl;
  final String profileImageUrlSmall;
  final String userType;
  final String userTypeName;
  const Student(
      {required this.utoken,
      required this.id,
      required this.userId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.institution,
      required this.department,
      required this.phone1,
      required this.phone2,
      required this.profileImageUrl,
      required this.profileImageUrlSmall,
      required this.userType,
      required this.userTypeName});
  factory Student.fromJSON(Map<String, dynamic> json) {
    return Student(
        utoken: json['utoken'],
        userId: json['userid'],
        id: json['id'],
        firstName: json['firstname'],
        lastName: json['lastname'],
        email: json['email'],
        institution: json['institution'],
        department: json['department'],
        phone1: json['phone1'],
        phone2: json['phone2'],
        profileImageUrl: json['profileimageurl'],
        profileImageUrlSmall: json['profileimageurlsmall'],
        userType: json['usertype'],
        userTypeName: json['usertypename']);
  }
}

class Semester {
  final int year;
  final String code;
  final String name;
  final int start;
  final int end;
  const Semester(
      {required this.year,
      required this.code,
      required this.name,
      required this.start,
      required this.end});
  factory Semester.fromJSON(Map<String, dynamic> json) {
    return Semester(
        year: json['year'],
        code: json['semester_code'],
        name: json['semester_name'],
        start: json['course_start'],
        end: json['course_end']);
  }
}

class Course {
  final int id;
  final String code;
  final String name;
  final String nameEnglish;
  final int year;
  final String semesterCode;
  const Course(
      {required this.id,
      required this.code,
      required this.name,
      required this.nameEnglish,
      required this.year,
      required this.semesterCode});
  factory Course.fromJSON(Map<String, dynamic> json) {
    return Course(
        id: json['id'],
        code: json['idnumber'],
        name: json['fullname'],
        nameEnglish: json['ename'],
        year: json['year'],
        semesterCode: json['semester_code']);
  }
}

class CourseContent {} // TODO
