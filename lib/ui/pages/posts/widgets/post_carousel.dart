import 'package:flutter/widgets.dart';
import 'package:flutter_example_riverpod/ui/pages/posts/widgets/post_container.dart';

import '../../../../domain/models/dog.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PostCarousel extends StatelessWidget {
  final List<Dog> posts;
  final CarouselController carouselController;
  const PostCarousel(this.posts, {super.key, required this.carouselController});

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        height: MediaQuery.sizeOf(context).height/2,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        autoPlay: false,
      ),
      items: posts.map((d) => PostContainer(d)).toList(),
    ));
  }
}
