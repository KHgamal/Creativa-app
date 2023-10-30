import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'Edu',
            style: TextStyle(
              fontSize: 28,
              color: blue,
            ),
          ),
          const Text(
            'room',
            style: TextStyle(fontSize: 28),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Enter the course code to join'),
                      content: const TextField(
                        decoration: InputDecoration(hintText: "course code"),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(blue)),
                          child: const Text('Join'),
                        )
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sync),
          ),
        ],
      ),
    );
  }
}
