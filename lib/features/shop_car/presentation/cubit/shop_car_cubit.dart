import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shop_car_state.dart';

class ShopCarCubit extends Cubit<ShopCarState> {
  ShopCarCubit() : super(ShopCarInitial());
}
