import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Widget slidableWidget, bottomNavigationBarWidget;
  final Color scaffoldBackgroundColor,
      backgroundColor,
      slidableWidgetBackgroundColor,
      bottomNavigationBarBackgroundColor;

  BottomNav(
      {this.slidableWidget,
      this.bottomNavigationBarWidget,
      this.backgroundColor,
      this.bottomNavigationBarBackgroundColor,
      this.scaffoldBackgroundColor,
      this.slidableWidgetBackgroundColor});

  @override
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  final controller = HomeController();
  final defaultPadding = 20.0;
  final cartBarHeight = 2.0;
  final headerHeight = 85.0;
  final bgColor = Color(0xFFF6F5F2);
  final primaryColor = Color(0xFF40A944);
  final panelTransition = Duration(milliseconds: 500);
  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.scaffoldBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: widget.backgroundColor,
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                return LayoutBuilder(
                  builder: (context, BoxConstraints constraints) {
                    return Stack(
                      children: [
                        AnimatedPositioned(
                          duration: panelTransition,
                          top: controller.homeState == HomeState.normal
                              ? 0.0
                              : -(constraints.maxHeight -
                                  (constraints.maxHeight / 1.12)),
                          left: -15,
                          right: -15,
                          height: constraints.maxHeight - cartBarHeight,
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              decoration: BoxDecoration(
                                color: widget.slidableWidgetBackgroundColor,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                      defaultPadding * controller.borderRadius),
                                  bottomRight: Radius.circular(
                                      defaultPadding * controller.borderRadius),
                                ),
                              ),
                              child: widget.slidableWidget,
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: panelTransition,
                          bottom: 0,
                          left: -10,
                          right: -10,
                          height: controller.homeState == HomeState.normal
                              ? cartBarHeight
                              : (constraints.maxHeight -
                                  (constraints.maxHeight / 1.12)),
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(40)),
                              padding: const EdgeInsets.all(20.0),
                              alignment: Alignment.topLeft,
                              child: AnimatedSwitcher(
                                duration: panelTransition,
                                child: controller.homeState == HomeState.normal
                                    ? Container()
                                    : widget.bottomNavigationBarWidget,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;
  double borderRadius = 0.0;

  void changeHomeState(HomeState state) {
    homeState = state;
    if (homeState == HomeState.cart) {
      borderRadius = 1.5;
    } else {
      borderRadius = 0.0;
    }
    notifyListeners();
  }
}
