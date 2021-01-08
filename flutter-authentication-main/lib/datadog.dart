import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:datadog_flutter/datadog_flutter.dart';

/// -----------------------------------
///           Datadog Variables
/// -----------------------------------

const DATADOG_CLIENT_TOKEN = 'pubeacc5fbcdd0c7e6acec5c20d03d1c229';

class DataDog extends StatelessWidget {
  final DatadogFlutter datadogLogger;
  final Logger otherLogger;

  DataDog({Key key})
      : otherLogger = Logger('other logger'),
        datadogLogger = DatadogFlutter(
          clientToken: DATADOG_CLIENT_TOKEN,
          environment: 'production',
          serviceName: 'flutter-authentication-main',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Log to Datadog'),
      onPressed: () => otherLogger.fine('hello datadog'),
    );
  }
}
