import 'package:flutter/material.dart';
import 'package:youtube_ng/data.dart';
import 'package:youtube_ng/widgets/custom_sliver_app_bar.dart';
import 'package:youtube_ng/widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final video = videos[index];
                return VideoCard(video: video);
              },
              childCount: videos.length,
            ),
          ),
        ],
      ),
    );
  }
}
