import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../locator.dart';

class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  BaseView(
      {this.builder, this.onModelReady, this.onModelRebuild, this.entered});

  final Widget Function(BuildContext, T model, Widget child) builder;
  final Function(T) onModelReady;
  final Function(T) onModelRebuild;
  final bool entered;
  @override
  _BaseViewState createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>>
    with TickerProviderStateMixin {
  T model = locator<T>();

  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) widget.onModelReady(model);
  }

  Offset pointer = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (pos) {
        setState(() {
          pointer = pos.position;
        });
      },
      child: Stack(
        children: [
          ChangeNotifierProvider<T>(
            create: (context) => model,
            child: Consumer<T>(
              builder: widget.builder,
            ),
          ),
        ],
      ),
    );
  }
}
