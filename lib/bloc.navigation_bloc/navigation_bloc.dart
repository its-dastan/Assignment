import 'package:assignment/pages/home_page.dart';
import 'package:bloc/bloc.dart';
import '../pages/pages.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);
  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield IncidentReport();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield DailyLogs();
        break;
    }
  }
}
