import 'package:app/src/theme/index.dart';
import 'package:flutter/material.dart';

class ChildrenWidget extends StatelessWidget {
  const ChildrenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'My Children',
            style: TextStyle(
              fontSize: 20,
              color: Colors. black87,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(height: 5),
                Text(
                  'Child one',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(height: 5),
                Text(
                  'Child two',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.add_outlined
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Add',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}