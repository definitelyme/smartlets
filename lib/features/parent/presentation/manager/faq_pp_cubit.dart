import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class FaqPpCubit extends Cubit<FaqPpState> {
  FaqPpCubit() : super(_FaqPpState());

  void init() {
    state.controller.addListener(_updateVisibility);
    _updateVisibility(); // This will be called just once
  }

  void _updateVisibility() {
    emit(state.copyWith(
      state.controller.hasClients && state.controller.position.pixels == state.controller.position.maxScrollExtent,
    ));
  }

  @override
  Future<void> close() {
    state.controller.removeListener(_updateVisibility);
    return super.close();
  }
}

@immutable
abstract class FaqPpState {
  ScrollController get controller;

  bool get isVisible;

  FaqPpState copyWith(bool visibility);
}

class _FaqPpState extends FaqPpState {
  final ScrollController controller;
  final bool isVisible;

  _FaqPpState({
    ScrollController controller,
    this.isVisible = false,
  }) : controller = controller ?? ScrollController(keepScrollOffset: true);

  @override
  FaqPpState copyWith(bool visibility) => _FaqPpState(controller: this.controller, isVisible: visibility);
}
