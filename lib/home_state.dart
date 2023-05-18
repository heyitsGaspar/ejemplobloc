
import 'package:equatable/equatable.dart';
import 'package:myapp/food.dart';


abstract class HomeState extends Equatable{
  const HomeState();
}


class HomeInitialState extends HomeState{
  const HomeInitialState();

  @override
  List<Object?> get props => [];
}


class HomeLoadingState extends HomeState{
   const HomeLoadingState();

   @override
   List<Object?> get props => [];
}

class HomeErrorfetchDataState extends HomeState{
  final String errorMessage;
  const HomeErrorfetchDataState({
    required this.errorMessage,
  });

  @override
  List<Object?> get props => [];
  
}

class HomeSuccessFetchDataState extends HomeState{
  final List<Food> foods;
  const HomeSuccessFetchDataState({
    required this.foods,
  });

  @override
  List<Object?> get props => [];
}
