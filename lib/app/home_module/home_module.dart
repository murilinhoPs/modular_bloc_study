import 'package:bloc_app/app/home_module/home_bloc.dart';
import 'package:bloc_app/app/home_module/home_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CounterCubit()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => MyHomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
