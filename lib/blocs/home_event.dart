




abstract class HomeEvent {
   const HomeEvent([List props = const []]) : super();
   

}
class LoadMorePhotos extends HomeEvent {
  const LoadMorePhotos();

  List<Object?> get props => [];
}
class HomeStarted extends HomeEvent {
  List<Object?> get props => [];
}
