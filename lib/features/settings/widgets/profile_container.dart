import 'package:flutter/material.dart';
import 'package:voltech/shared/main_container/main_container.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      height: 130,
      child: Row(
        spacing: 6,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primaryContainer,
                size: 50,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ziad Yahia',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'ziad@example.com',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined)),
        ],
      ),
    );
  }
}
