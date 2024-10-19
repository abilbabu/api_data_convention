import 'package:api_data_convention/dummy_db.dart';
import 'package:api_data_convention/model/student_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  static StudentModel? modelobject;

  static List<StudentModel> StudentModelList = [];

  static convertStudenttomodel() {
    modelobject = StudentModel(
        name: DummyDb.student["name"],
        place: DummyDb.student["place"],
        phoneno: DummyDb.student["phno"],
        course: DummyDb.student["course"]);
  }

  static convertStudentListModel() {
    // StudentModelList = List.generate(
    //   DummyDb.StudentList.length,
    //   (index) => StudentModel(
    //     name: DummyDb.StudentList[index]["name"],
    //     place: DummyDb.StudentList[index]["place"],
    //     phoneno: DummyDb.StudentList[index]["phno"],
    //     course: DummyDb.StudentList[index]["course"],        // index method using
    //   ),
    // );
    StudentModelList = DummyDb.StudentList.map(
      (e) => StudentModel(
          name: e["name"],
          place: e["place"],
          phoneno: e["phno"],
          course: e["course"]),
    ).toList();
    print(StudentModelList[0].phoneno);
  }
}
