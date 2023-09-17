import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(25)),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pradeep Krishna',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Eluru,AP',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          border: Border.all(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_outline,
                            size: 40,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                          ))),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Tags:',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Row(
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Sky'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sky'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Sky'),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Description:',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Text(
                "Instagram captions can say a lot about a person's personality. Here are some examples of Instagram captions:",
                softWrap: true,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Location:',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
