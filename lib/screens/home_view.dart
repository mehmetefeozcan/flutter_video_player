import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testprog/constants/test_videos.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:testprog/controllers/home_controller.dart';
import 'package:video_player/video_player.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Deneme")),
      body: _body(),
    );
  }

  Widget _body() {
    return CarouselSlider.builder(
      itemCount: dataVideos.length,
      itemBuilder: (context, index, realIndex) {
        return Chewie(
          controller: ChewieController(
            videoPlayerController: VideoPlayerController.network(
              dataVideos[index]['url'].toString(),
            ),
            autoInitialize: true,
            autoPlay: true,
            showOptions: false,
            looping: true,
            showControls: false,
            aspectRatio: 1.2 / 2.2,
            allowMuting: false,
          ),
        );
      },
      options: CarouselOptions(
        height: Get.height,
        initialPage: 0,
        scrollDirection: Axis.vertical,
        viewportFraction: 1,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        padEnds: true,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
      ),
    );
  }
}
