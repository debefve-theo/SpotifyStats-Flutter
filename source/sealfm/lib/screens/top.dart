import 'package:flutter/material.dart';

import '../widgets/top/top_close_widget.dart';
import '../widgets/top/top_open_widget.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const [
          TopCardClose(),
          TopCardOpen(),
        ],
    );
  }
}
