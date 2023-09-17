import 'package:flutter/material.dart';

class NotificationTile extends StatefulWidget {
  const NotificationTile({super.key});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pradeep Krishna',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  'jlkfjhhjghjghjghjghjghjgkjghjkglfjkljskl',
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
