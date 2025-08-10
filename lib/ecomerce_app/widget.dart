import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.name,
    required this.circlecolor,
    required this.icon,
  });

  final String name;
  final Color circlecolor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: circlecolor,
          child: Icon(icon, color: Colors.white, size: 33),
        ),
        SizedBox(height: 5),
        Text("${name}", style: TextStyle(color: Colors.black, fontSize: 16)),
      ],
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
    required this.coursename,
    required this.vdocount,
    this.image,
  });
  final String? coursename;
  final String? vdocount;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(10),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("${image}"),
                ),
              ),
            ),
            Text(
              "${coursename}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "${vdocount} Videos",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
