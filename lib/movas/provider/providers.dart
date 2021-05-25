import 'package:provider/single_child_widget.dart';
import 'package:syncfusion_demo/movas/provider/service_providers.dart';
import 'package:syncfusion_demo/movas/provider/store_providers.dart';
import 'package:syncfusion_demo/movas/provider/stream_providers.dart';

import 'action_providers.dart';

List<SingleChildWidget> providers = [
  ...streamProviders,
  ...serviceProviders,
  ...storeProviders,
  ...actionProviders
];