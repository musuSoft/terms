// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:terms/bootstrap.dart';
import 'package:terms/src/app/app.dart';
import 'package:terms/src/locator.dart' as di;

void main() async {
  await di.init();

  await bootstrap(() => const App());
}
