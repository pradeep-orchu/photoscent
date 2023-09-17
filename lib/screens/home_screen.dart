
import 'package:flutter/material.dart';
import 'package:photoscent/components/home_grid.dart';
import 'package:photoscent/components/post_card.dart';
import 'package:photoscent/components/profile_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.explore_outlined,
                      size: 14,
                    ),
                    Text('Eluru,AP'),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'notification');
                    },
                    icon: const Icon(
                      Icons.notifications_outlined,
                      //color: Theme.of(context).colorScheme.secondaryContainer,
                    )),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            //margin: EdgeInsets.only(left: 20),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const ProfileCard();
              },
              itemCount: 5,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Catagories',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
        const HomeGrid(),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Most Saved',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return const PostCard();
        }, childCount: 5)),
      ]),
    );
  }
}
