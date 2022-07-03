// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

enum HomeStatus {
  loading, 
  success,
  error
}


class HomeState extends Equatable {
  final HomeStatus status;
  HomeState({
    required this.status,
  });


  @override
  List<Object> get props => [];

  HomeState copyWith({
    HomeStatus? status,
  }) {
    return HomeState(
      status: status ?? this.status,
    );
  }
}


