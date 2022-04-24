import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:trackmys/core/app_theme.dart';

import 'core/constants.dart';
import 'core/router.dart';

void main() => runApp(const TrackMe());

class TrackMe extends StatelessWidget {
  const TrackMe();

  @override
  Widget build(BuildContext context) => PlatformApp.router(
        cupertino: (_, __) =>
            CupertinoAppRouterData(theme: AppTheme.lightCupertino),
        material: (_, __) =>
            MaterialAppRouterData(theme: AppTheme.lightMaterial),
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        title: Strings.appName,
      );
}
