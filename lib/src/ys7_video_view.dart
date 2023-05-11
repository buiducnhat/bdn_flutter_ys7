import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ys7VideoView extends StatelessWidget {
  const Ys7VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: const UiKitView(viewType: "cspy/flutter_ys7/videoView"),
      );
    } else if (Platform.isAndroid) {
      return const AndroidView(
        viewType: 'cspy/flutter_ys7/videoView',
        creationParamsCodec: StandardMessageCodec(),
      );
    } else {
      throw UnimplementedError();
    }
  }
}
