import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class explanationPhotoPart extends ConsumerWidget {
  const explanationPhotoPart({
    this.photoUrl,
    super.key,
  });

  final String? photoUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget photoWidget;
    if (photoUrl != null && photoUrl!.isNotEmpty) {
      photoWidget = Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.2,
            child: Image.network(photoUrl!),
          ),
        ],
      );
    } else {
      photoWidget = const SizedBox(
        width: 0,
        height: 0,
      );
    }

    return photoWidget;
  }
}
