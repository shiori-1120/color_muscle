import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/features/top/components/sub_club_detail_part.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClubDetail extends ConsumerWidget {
  const ClubDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainContainer(
            padding: 10,
            width: MediaQuery.of(context).size.width * 0.93,
          children: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SubClubDetail(
                    color: ColorName.potipotiBlue,
                      title: 'ぽちぽちのつどい',
                      photoUrl:
                          'https://lh3.googleusercontent.com/pw/AP1GczMj1cq2im7y0Icnpo0AgvbniOy672ppgj6YBJBwJaoLRYmot58_1hxZl5NAqc1kpXpzCjPqD5owFpty0yUSgLB9Mg99jlY-H1UYSKHEUV1i-Dd9MxFJ1vVLUYYCykJOMhciAWFatL__-_FdAT00V8mxMA=w384-h384-s-no-gm?authuser=0',
                      explanation: 'ここにサークルの説明が入ります'),
                  Text(
                    '✕',
                    style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  SubClubDetail(
                    color: ColorName.eatOrange,
                      title: 'もったいない―と',
                      photoUrl:
                          'https://lh3.googleusercontent.com/pw/AP1GczNRSSd5Ue1xb-A60ZZGOfKAMXhchq7kuQht9g1TM9qY-xn2-taXYAzE8Fgt_g6wR4uT-1osRYnDkfBd0q_aibiTIezc9fGHBEJKmjAHWt7KMkdFRUfc1nuiRM1lLMzcT4b9MEoQqRsQ9w17QoEz9ewS0g=w400-h400-s-no-gm?authuser=0',
                      explanation: 'ここにサークルの説明が入ります'),
                 
                ],
              ),
          ),
          ),
        ],
      );
}
