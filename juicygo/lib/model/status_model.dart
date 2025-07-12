import 'package:juicygo/utils/assets_path.dart';

class StatusModel {
  final String name;
  final String imageUrl;
  final bool isViewed;
  List<String>? storyUrls;
  StatusModel({
    required this.name,
    required this.imageUrl,
    this.isViewed = false,
    this.storyUrls,
  });
}

final List<StatusModel> statusList = [
  StatusModel(
    name: 'apple',
    imageUrl: AssetsPath.apple,
    isViewed: false,
    storyUrls: [
      'https://www.therandomvibez.com/wp-content/uploads/2022/05/apple-quotes.jpg',
      'https://i.pinimg.com/736x/c1/b9/ff/c1b9fff9cbbcc9ff642c1bd0e2b8c241.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7LpHxY_XhCHQwcjT5ufoyAWVK_OQEEwzXDwZ8XZ5nR9Ukj-DL80rgbH5EsGIAmYf6Yvk&usqp=CAU'
    ],
  ),
  StatusModel(
    name: 'mango',
    imageUrl: AssetsPath.mango,
    isViewed: false,
    storyUrls: [
      'https://m.media-amazon.com/images/I/51G7tMu+WQL._UF1000,1000_QL80_.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJCwwvci5SHtvwue7iBZuWZBT6Dhe9UgKjqQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUwAIhmV7fAifMEwgFgGvIlMyk9M3t84ciY4NXfQqm_a48dokW0qzxZ8beAgAgER8PnQk&usqp=CAU',
    ],
  ),
  StatusModel(name: 'orange', imageUrl: AssetsPath.orange, isViewed: false),
  StatusModel(
    name: 'watemelon',
    imageUrl: AssetsPath.watermelon,
    isViewed: true,
  ),
  StatusModel(
    name: 'strawberry',
    imageUrl: AssetsPath.strawbary,
    isViewed: false,
  ),

  StatusModel(name: 'grapes', imageUrl: AssetsPath.grapes),
];
