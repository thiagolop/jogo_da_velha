import 'package:flutter/widgets.dart';

const breakpoint = Size(1080, 2400);

extension Responsive on num {
  double get width {
    final window = WidgetsBinding.instance.window;
    Size sizer = window.physicalSize / window.devicePixelRatio;
    return this * (sizer.width / breakpoint.width);
  }

  double get heigth {
    final window = WidgetsBinding.instance.window;
    Size sizer = window.physicalSize / window.devicePixelRatio;
    return this * (sizer.height / breakpoint.height);
  }
}
