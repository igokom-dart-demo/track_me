import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmys/core/app_theme.dart';
import 'package:trackmys/features/settings_screen/settings_screen.dart';

class Page1Screen extends StatelessWidget {
  static const path = "/";

  const Page1Screen();

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        appBar: PlatformAppBar(title: const Text("Hello World")),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Flutter Demo Home Page'),
                PlatformTextButton(
                  cupertino: (context, platform) => CupertinoTextButtonData(),
                  material: (context, platform) => MaterialTextButtonData(
                    style: AppTheme.getButtonStyle(context),
                  ),
                  onPressed: () => context.push(Page2Screen.path),
                  child: const Text("Go page 2"),
                )
              ],
            ),
          ),
        ),
      );
}
