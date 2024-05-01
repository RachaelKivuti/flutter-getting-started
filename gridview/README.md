# USE OF GRIDVIEW

Creating scrolling lists and effects using gridview.

The GridView displays tiles of scrollable widgets in a grid format. 
The three constructors are:
	-GridView.count
	-GridView.extent
	-GridView.builder.

GridView.count and GridView.extent are usually used with a fixed or smaller data set. Using these constructors
means that all of the data, not just visible widgets, is loaded at init.

The GridView.builder constructor is used with a larger, infinite or unknown size set of data.
When you have a large set of data, the builder is called only for visible widgets, which is great for performance. 

The GridView.count requires setting the crossAxisCount and the children argument. 
The crossAxisCount sets the number of tiles to display  and children is a list of widgets.

The GridView.extent requires you to set the maxCrossAxisExtent and children argument. 
The maxCrossAxisExtent argument sets the maximum size of each tile for the axis.

The GridView.builder requires you to set the itemCount, gridDelegate and itemBuilder arguments. 
The itemCount sets the number of tiles to build. The gridDelegate is a SilverGridDelegate responsible for laying out the children list of widgets for the GridView. 
The gridDelegate argument cannot be null; you need to pass the maxCrossAxisExtent size






