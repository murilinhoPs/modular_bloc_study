import 'package:bloc_app/app/home_module/bloc/counter_bloc.dart';
import 'package:bloc_app/app/home_module/home_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CounterBloc()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => MyHomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
