
import 'package:equatable/equatable.dart';

class SwitchState extends Equatable{
  final bool isSwitchOn;
  const SwitchState({this.isSwitchOn = false});

  SwitchState copyWith({bool? isSwitchOn}){
    return SwitchState(
      isSwitchOn: isSwitchOn?? this.isSwitchOn
    );
  }

  @override
  List<Object?> get props => [isSwitchOn];
}