import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        title: Text('Post'),
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
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      SizedBox(
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
              SizedBox(
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
                    child: Text('Sky'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sky'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Sky'),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Description:',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Instagram captions can say a lot about a person's personality. Here are some examples of Instagram captions:",
                softWrap: true,
              ),
              SizedBox(
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
