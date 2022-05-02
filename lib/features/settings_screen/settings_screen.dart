import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmys/utils/utils.dart';

class Page2Screen extends StatelessWidget {
  static final path = pathFromClassName(Page2Screen);

  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        appBar: PlatformAppBar(title: const Text("Hello World 2")),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const Text('Flutter Demo Home Page 2'),
                PlatformTextButton(
                  child: const Text("Go page 1"),
                  onPressed: () => context.pop(),
                  color: platformThemeData(
                    context,
                    cupertino: (theme) => theme.primaryColor,
                    material: (theme) => theme.colorScheme.primary,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
