import 'package:flutter/material.dart';
import 'package:state_managment_youtube/value_listenable.dart';

class MyValueListenableBuilder<T> extends StatefulWidget {
  final MyValueListenable<T> listenable;
  final Widget Function(BuildContext context, T value, Widget? child) builder;
  final Widget? child;
  const MyValueListenableBuilder({super.key, required this.listenable, required this.builder, required this.child,});

  @override
  State<MyValueListenableBuilder> createState() => _MyValueListenableBuilderState();
}

class _MyValueListenableBuilderState<T> extends State<MyValueListenableBuilder<T>> {
  late T _value;

  @override
  void initState() {
    super.initState();
    _value = widget.listenable.value;
    widget.listenable.addListener(_onRebuild);
  }

  void _onRebuild(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _value, widget.child);
  }

  @override
  void dispose() {
    widget.listenable.removeListener(_onRebuild);
    super.dispose();
  }
}