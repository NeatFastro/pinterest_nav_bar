import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Banner(
      location: BannerLocation.topEnd,
      message: 'Example',
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight + 16),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Flutter',
                    ),
                    Tab(
                      text: 'Dart',
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              AllView(),
              FlutterView(),
              DartView(),
            ],
          ),
        ),
      ),
    );
  }
}

class AllView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      padding: EdgeInsets.all(20),
      itemCount: Colors.accents.length,
      itemBuilder: (_, i) {
        return SizedBox(
          height: 360,
          child: Card(
            color: Colors.accents[i],
            child: Center(
              // child: Text(Colors.accents[i].toString()),
              child: Text('$i'),
            ),
          ),
        );
      },
    );
  }
}

class FlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, i) {
        return SizedBox(
          height: 360,
          child: Card(
            child: Center(child: Text('Flutter View')),
          ),
        );
      },
    );
  }
}

class DartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Center(child: Text('Dart View')),
    );
  }
}
