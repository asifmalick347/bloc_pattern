

import 'package:equatable/equatable.dart';

class LoadingState extends Equatable{
  final bool showLoading;

  const LoadingState({this.showLoading = false});

  LoadingState copyWith({bool? showLoading}){
    return LoadingState(showLoading: showLoading?? this.showLoading);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [showLoading];
}