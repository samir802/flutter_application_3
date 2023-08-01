import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/classmate_model.dart';
import 'package:flutter_application_3/data/classmates_data.dart';

class Classmates extends StatelessWidget {
  const Classmates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Classmates",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         ListView.builder(
          shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: classmateDetail.length,
            // gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 10.0,
            //   mainAxisSpacing: 10.0,
            // ),
            itemBuilder: (context, index) {
              ClassmateDetail detail = classmateDetail[index];
              return Classmate(
                name : detail.name,
                roll : detail.roll,
                image : detail.image,
              );
            }),
        ],
      )),
    );
  }
}

class Classmate extends StatelessWidget {
  const Classmate({
    super.key, required this.name, required this.roll, required this.image,
  });

final String name;
final String roll;
final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      // height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  image),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 15),
            width: MediaQuery.of(context).size.width / 1.5,
            height: 70,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Student's Name: $name",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text("Roll No/ Student ID: $roll")
                ]),
          ),
        ],
      ),
    );
  }
}
