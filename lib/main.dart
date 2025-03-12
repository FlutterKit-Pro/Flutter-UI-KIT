import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_kit_pro/src/app.dart';
import 'package:flutter_kit_pro/src/common/utils/observers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) async => await SentryFlutter.init(
        (options) {
          // options.dsn = Constant.sentryDSN; lien vers sentry
          options.tracesSampleRate = 1.0;
        },
        appRunner: () => runApp(ProviderScope(
          observers: [Observers()],
          child: const FlutterKitProApp(),
        )),
      ));
}
