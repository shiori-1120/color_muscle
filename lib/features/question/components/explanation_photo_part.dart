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
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 110),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
              child: Image.network(photoUrl!),
            ),
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
