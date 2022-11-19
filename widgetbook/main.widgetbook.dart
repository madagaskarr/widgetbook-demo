import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
        categories: [
          WidgetbookCategory(name: "Tasks", widgets: [
            WidgetbookComponent(name: "Task", useCases: [
              WidgetbookUseCase(name: "Simple", builder: (context) => const Text("This is simple task"))
            ])
          ]),
        ],
        themes: [
          WidgetbookTheme(name: "Default", data: ThemeData(

          )),
          WidgetbookTheme(name: "Dark", data: ThemeData(

          )),
        ],
        appInfo: AppInfo(name: "Widgetbook Development App"));
  }
}