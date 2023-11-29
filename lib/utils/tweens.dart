import 'package:flutter/widgets.dart';

class BoxDecorationTween extends Tween<BoxDecoration> {
  BoxDecorationTween({super.begin, super.end});

  @override
  BoxDecoration lerp(double t) {
    return BoxDecoration.lerp(begin, end, t)!;
  }

  BoxDecorationTween copyWith({BoxDecoration? begin, BoxDecoration? end}) {
    return BoxDecorationTween(begin: begin ?? this.begin, end: end ?? this.end);
  }

  BoxDecorationTween add(BoxDecoration newEnd) {
    return copyWith(begin: end, end: newEnd);
  }
}
