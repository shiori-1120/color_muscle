import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: Styles.sixteen,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          mainContainer(
            width: MediaQuery.of(context).size.width * 0.3,
            color: color,
            text: explanation,
          ),
        ],
      );
}
