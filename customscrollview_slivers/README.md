# CUSTOMIZING THE CUSTOMSCROLLVIEW WITH SLIVERS

The CustomScrollView widget creates custom scrolling effects by using a list of slivers. 

Slivers are a small portion of something larger.

The SliverList and SliverGrid slivers use delegates to build the list of children explicitly or lazily.

An explicit list builds all of the items first then displays them on the screen. 

A lazily built list only builds the visible items on the screen and when the user scrolls the next visible items are built (lazily) resulting in better performance. 

The SliverList has a delegate property and the SliverGrid has a delegate and a gridDelegate property.

The SliverList and SliverGrid delegate property can use the SliverChildListDelegate to build an explicit list or use the SliverChildBuilderDelegate to lazily build the list. 

The SliverGrid has an additional gridDelegate property to specify the size and position of the grid tiles.





