// ignore_for_file: must_be_immutable

part of 'grid_bloc.dart';

class GridState extends Equatable {
  GridState({
    this.data = const [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    this.status = false,
  });

  List<bool> data;
  bool? status;
  @override
  List<Object?> get props => [data, status];

  GridState copyWith({List<bool>? data, bool? status}) {
    return GridState(
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }
}
