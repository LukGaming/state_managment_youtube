import 'package:flutter/material.dart';
import 'package:state_managment_youtube/listenable.dart';

class MyListenableBuilder extends StatefulWidget {
  final MyListenable listenable;
  final Widget Function(BuildContext context, Widget? child) builder;
  final Widget? child;
  const MyListenableBuilder({
    super.key,
    required this.listenable,
    required this.builder,
    this.child,
  });

  @override
  State<MyListenableBuilder> createState() => _MyListenableBuilderState();
}

class _MyListenableBuilderState extends State<MyListenableBuilder> {
  @override
  void initState() {
    super.initState();
    widget.listenable.addListener(_onRebuild);
  }

  void _onRebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.child);
  }

  @override
  void dispose() {
    widget.listenable.removeListener(_onRebuild);
    super.dispose();
  }
}
