import 'package:flutter/material.dart';
import 'package:juicygo/model/status_model.dart';
import 'package:story_view/story_view.dart';

class StoryViews extends StatelessWidget {
  StatusModel status;
  StoryViews({super.key, required this.status});
  final StoryController _controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return StoryView(
      indicatorOuterPadding: EdgeInsetsGeometry.all(16),
      onComplete: () {
        Navigator.pop(context);
        onVerticalSwipeComplete:
        (direction) {
          if (direction == Direction.down) Navigator.pop(context);
        };
      },
      storyItems: [
        StoryItem.inlineImage(
          url: (status.storyUrls != null && status.storyUrls!.length>0)
              ? status.storyUrls![0]
              : 'default_image_url_or_empty_string',
          imageFit: BoxFit.contain,
          controller: _controller,
        ),
        StoryItem.inlineImage(
          url: (status.storyUrls != null && status.storyUrls!.length>1)
              ? status.storyUrls![1]
              : 'default_image_url_or_empty_string',
          imageFit: BoxFit.contain,
          controller: _controller,
        ),
        StoryItem.inlineImage(
          url: (status.storyUrls != null && status.storyUrls!.length>2)
              ? status.storyUrls![2]
              : 'default_image_url_or_empty_string',

          imageFit: BoxFit.contain,
          controller: _controller,
        ),
      ],

      controller: _controller,
    );
  }
}
