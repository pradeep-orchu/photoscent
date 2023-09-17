import 'package:flutter/material.dart';


class PostCard extends StatefulWidget {
  // final Post post;
  const PostCard({
    super.key,
    //required this.post
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pradeep Krishna',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    'Eluru,AP',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'post'),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Stack(
                children: [
                  Positioned(
                      right: 5,
                      bottom: 5,
                      child: IconButton(
                        icon: Icon(
                          Icons.bookmark_outline,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
