# pinterest_nav_bar

Pinterest app's Like bottom navigation bar.

## Getting Started

Wrap you [MaterialApp] widget with [PinterestNavBar] widget

```
    return PinterestNavBarController(
      child: MaterialApp(
        title: 'Pinterest Nav Bar Example',
        home: Pages(),
      ),
    );
```

Adding the widget

- Note: it is recommended that you use this widget as the Floadting Action Button

```
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PinterestNavBar(
        currentIndex: selectedPageIndex,
        onTap: (i) {
          print('PinterestNavBar.onTap($i)');
          setState(() {
            selectedPageIndex = i;
          });
        },
        items: [
          Icons.home,
          Icons.search,
          Icons.chat_bubble_outline_rounded,
          Icons.person
        ],
      ),
```

- check out the [example](https://bottom-nav-bar.web.app/) app [code](https://github.com/NeatFastro/pinterest_nav_bar/tree/main/example) for complete understanding
