import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/FavouriteApp/model/favourite_model.dart';
import 'package:myapp/FavouriteApp/repositary/favourite_repositary.dart';

import 'favourite_event.dart';
import 'favourite_state.dart';

//part 'favourite_event.dart';
//part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  List <FavouriteItemModel> favouriteList = [];
  FavouriteRepositary favouriteRepositary;

  FavouriteBloc(this.favouriteRepositary) : super(FavouriteState()) {
    on<FetchList>(fetchList);
    on<FavouriteItem>(_addFavourite);
  }

  void fetchList(FavouriteEvent event, Emitter <FavouriteState> emit) async {
    favouriteList = await favouriteRepositary.fetchItems();
    emit(state.copyWith(favouriteList: List.from(favouriteList),
      listStatus: ListStatus.success,
    ));
  }

  void _addFavourite(FavouriteItem event,
      Emitter <FavouriteState> emit) async {
    //favouriteList = await favouriteRepositary.fetchItems();
    final index = favouriteList.indexWhere((element) => element.id == event.item.id);

    favouriteList[index]= event.item;

    emit(state.copyWith(favouriteList: List.from(favouriteList),

    ));
  }

}
