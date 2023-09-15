import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).colorScheme.primaryContainer),
            height: 100,
            width: 100,
          ),
          Column(
            children: [
              Text(
                'Pradeep',
                style: Theme.of(context).textTheme.labelLarge,
                softWrap: true,
              ),
              Text(
                'Eluru,AP',
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          )
        ],
      ),
    );
  }
}
