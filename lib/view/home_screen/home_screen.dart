import 'package:api_data_convention/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // HomeScreenController.convertStudenttomodel(); //single dat passing
    HomeScreenController.convertStudentListModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: ListView.separated(
                itemBuilder: (context, index) => Container(
                      child: Column(
                        children: [
                          Text(HomeScreenController.StudentModelList[index].name
                              .toString()),
                          Text(HomeScreenController
                              .StudentModelList[index].place
                              .toString()),
                          Text(HomeScreenController
                              .StudentModelList[index].phoneno
                              .toString()),
                          Text(HomeScreenController
                              .StudentModelList[index].course
                              .toString()),
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: HomeScreenController.StudentModelList.length),
          ),
        )
        //  Column(
        //  children: [
        //    Text(HomeScreenController.modelobject?.name.toString()??"emptydata"),
        //    Text(HomeScreenController.modelobject?.place.toString()??"emptydata"),
        //    Text(HomeScreenController.modelobject?.phoneno.toString()??"emptydata"),
        //    Text(HomeScreenController.modelobject?.course.toString()??"emptydata"),
        //  ],
        // ), // single data passing method
        );
  }
}
