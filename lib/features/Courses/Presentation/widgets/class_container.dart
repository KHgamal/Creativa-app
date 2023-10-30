import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: _getRandomColor(), // Generate a random color
        borderRadius: BorderRadius.circular(16.0), // Set circular radius
        boxShadow: [
          BoxShadow(
            color: _getRandomColor().withOpacity(0.5), // Set elevation color
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            _getRandomColor().withOpacity(0.1),
            _getRandomColor(),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                courseInfo[index]['Title']!,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                courseInfo[index]['Duration']!,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 weeks left',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Eng sam S.A',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
                width: 128,
                height: 128,
              ),
            ),
            /*Icon(
              Icons.person,
              size: 30.0,
              color: Colors.black,
            ),*/
          ),
        ],
      ),
    );
  }

  Color _getRandomColor() {
    // Generate a random color
    return Colors.primaries[
        DateTime.now().millisecondsSinceEpoch % Colors.primaries.length];
  }
}
