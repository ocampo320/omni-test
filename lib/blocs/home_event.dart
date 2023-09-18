




abstract class HomeEvent {
   const HomeEvent([List props = const []]) : super();
   

}
class LoadMorePhotos extends HomeEvent {
  const LoadMorePhotos();

  @override
  List<Object?> get props => [];
}
class HomeStarted extends HomeEvent {
  @override
  List<Object?> get props => [];
}
