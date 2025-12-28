import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint('🟢 Bloc Created → ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('📌 Bloc Event → ${bloc.runtimeType}, event = $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('🔄 Bloc Change → ${bloc.runtimeType}, change = $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(
      '🚀 Bloc Transition → ${bloc.runtimeType}\n'
      'currentState = ${transition.currentState}\n'
      'event = ${transition.event}\n'
      'nextState = ${transition.nextState}',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('❌ Bloc Error → ${bloc.runtimeType}, error = $error');
    debugPrint('$stackTrace');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    debugPrint('🔴 Bloc Closed → ${bloc.runtimeType}');
  }
}
