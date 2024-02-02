import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class carouselLoading extends StatelessWidget {
  const carouselLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: AspectRatio(aspectRatio: 16/9, child:  Container(
              color: Colors.grey,
            ),),
          ),
        ),
        const SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ), const SizedBox(width: 2,),
             Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ), const SizedBox(width: 2,),
             Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ), const SizedBox(width: 2,),
             Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ), const SizedBox(width: 2,),
             Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ), const SizedBox(width: 2,),
          ],
        )
      ],
    ), baseColor: Colors.grey.shade300, highlightColor: Colors.white);
  }
}