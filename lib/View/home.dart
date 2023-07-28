import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            snap: true,
            floating: true,
            expandedHeight: 80,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Image.asset(
                "assets/icon/logo-w.png",
                width: 42,
                height: 42,
                colorBlendMode: BlendMode.multiply,
              ),
            ),
          ),
        ],
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [FeedCard()],
          ),
        ),
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp"),
                      child: Stack(children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                ) // change this children
                                ))
                      ])),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    width: 3,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              Column()
            ],
          ),
        ],
      ),
    );
  }
}
