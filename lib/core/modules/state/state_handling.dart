import 'package:flutter/material.dart';
import 'package:modu_3_hackathon/core/modules/state/base_state.dart';

class StateHandling extends StatelessWidget {
  final BaseState state;
  final Widget init;
  final Widget loading;
  final Widget error;
  final Widget success;
  const StateHandling(this.state,
      {required this.init,
      required this.loading,
      required this.error,
      required this.success,
      super.key});

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case BaseState.init:
        return init;
      case BaseState.loading:
        return loading;
      case BaseState.error:
        return error;
      case BaseState.success:
        return success;
    }
  }
}
