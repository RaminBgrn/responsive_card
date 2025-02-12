import 'package:responsive_framework/responsive_framework.dart';

class Breakpoints {
  static List<Breakpoint> getBreakPoints() {
    return [
      const Breakpoint(start: 0, end: 450, name: MOBILE),
      const Breakpoint(start: 451, end: 700, name: TABLET),
      const Breakpoint(start: 701, end: 1920, name: DESKTOP),
      const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
    ];
  }
}
