import 'dart:math';

import 'package:myapp/food.dart';
import 'package:myapp/food_generator.dart';
import 'package:myapp/home_event.dart';
import 'package:myapp/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc(): super(const HomeInitialState()){
    on<FetchDataEvent>(_onFetchDataEvent);
  }

  void _onFetchDataEvent(
    FetchDataEvent event,
    Emitter<HomeState> emitter,

  )async{
    emitter(const HomeLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    bool isSucceed=Random().nextBool();
    if(isSucceed){
      List<Food> _dummyFoods = FoodGenerator.generateDummyFoods();
      emitter(HomeSuccessFetchDataState(foods: _dummyFoods));
    }else{
      emitter(const HomeErrorfetchDataState(
        errorMessage: "something went very wrong :(",
      ));
    }
  }

  
}
