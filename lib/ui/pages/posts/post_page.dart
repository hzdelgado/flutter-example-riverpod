import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/domain/models/dog.dart';
import 'package:flutter_example_riverpod/ui/pages/home/providers/dog_provider.dart';
import 'package:flutter_example_riverpod/ui/pages/posts/widgets/carousel_actions/carousel_actions.dart';
import 'package:flutter_example_riverpod/ui/pages/posts/widgets/post_carousel.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class PostPage extends ConsumerWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     List<Dog> adoptionPosts = ref.watch(dogProvider).dogs;
    return Scaffold(
        backgroundColor: ThemeColors.colorSecondary,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: .3,
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              child: Column(
              children: [PostCarousel(adoptionPosts), 
              const SizedBox(height: 20,),
              const CarouselActions()],
            ))));
  }
}