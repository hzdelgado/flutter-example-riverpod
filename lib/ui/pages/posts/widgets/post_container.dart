import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/domain/models/dog.dart';
import 'package:flutter_example_riverpod/ui/pages/posts/widgets/gender_icon.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/theme/font_size.dart';

class PostContainer extends StatelessWidget {
  final Dog dog;
  const PostContainer(this.dog, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            children: [
              Image.network(
                dog.url,
                fit: BoxFit.cover,
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                      color: Colors.black38,
                    ),
                  ]),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              dog.name,
                              style: TextStyle(
                                  color: ThemeColors.themeBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: ThemeFontSize.fontSizeLg),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            GenderIcon(dog.gender)
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                              text: dog.breed ?? "N/A ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: ThemeColors.colorTertiary),
                              children: [
                                TextSpan(
                                    text: " • ",
                                    style: TextStyle(
                                        fontSize: ThemeFontSize.fontSizeMd)),
                                TextSpan(
                                  text: dog.age,
                                ),
                              ]),
                        )
                      ]),
                ),
              )
            ],
          )),
    );
  }
}
