import 'package:bloc_app/app/home_module/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bloc_app/app/app_widget.dart';
import 'package:flutter/widgets.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
