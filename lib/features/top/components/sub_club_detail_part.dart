import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:mottaina_eat/style/styles.dart';

class SubClubDetail extends ConsumerWidget {
  const SubClubDetail({
    required this.title,
    required this.photoUrl,
    required this.explanation,
    required this.color,
    super.key,
  });

  final String title;
  final String photoUrl;
  final String explanation;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.network(photoUrl),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: Styles.fourteen,
          ),
          const SizedBox(
            height: 5,
          ),
          mainContainer(
            borderRadius: 10,
            width: MediaQuery.of(context).size.width * 0.3,
            color: color,
            padding: 5,
            children: Text(
              explanation,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: ColorName.black2,
              ),
            ),
          ),
        ],
      );
}
