# TAB BAR

The TabBar widget is a Material Design widget that displays a horizontal row of tabs. 
The tabs property takes a List of Widgets and you add tabs by using the Tab widget. 
Instead of using the Tab widget, you could create a custom widget, which shows the power of Flutter. 
The selected Tab is marked with a bottom selection line.
The TabBarView widget is used in conjunction with the TabBar widget to display the page of the selected tab. Users can swipe left or right to change content or tap each Tab.

	-TabBar
	-TabBarView
	-TabContorller - responsible for syncing tab selections between a TabBar and a TabBarView
When TabBar and TabBarView are used together, the correct associated page is automatically loaded.
When the user swipes the TabBarView left or right, it scrolls to the correct page and selects the corresponding tab in the TabBar.

The TabController is responsible for syncing tab selections between a TabBar and a TabBarView. 
Since the TabController syncs the tab selections, you need to declare the SingleTickerProviderStateMixin to the class.

Both the TabBar and TabBarView use the same TabController. 
The TabController is initiated by passing a vsync argument and a length argument. The length argument is the number of tabs to show.

An optional TabController Listener is added to listen to Tab changes and take appropriate action if
necessary, perhaps saving data before a Tab is switched. 

Each Tab is added to the TabBar tabs widget list by customizing each icon and text.

TabBarView is responsible for loading the appropriate page when Tab selection changes. 

The page views are listed as the children property of the TabBarView widget.











