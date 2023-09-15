import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Row(
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_outlined,
                      //color: Theme.of(context).colorScheme.secondaryContainer,
                    )),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            //margin: EdgeInsets.only(left: 20),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ProfileCard();
              },
              itemCount: 5,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Catagories',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
        HomeGrid(),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Most Saved',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return PostCard();
        }, childCount: 5)),
      ]),
    );
  }
}
