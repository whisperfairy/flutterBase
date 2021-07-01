import 'package:flutter_bloc/flutter_bloc.dart';
/// 监听状态变更


/// 观察者来观察 事件的变化 可以使用默认的 [BlocObserver]
class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase cubit, Change change) {
    print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onCreate(BlocBase bloc) {
   super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
  super.onClose(bloc);
  }
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}
