# basic_widgets

Implementation of the common widgets


### AssetBundle
The AssetBundle class provides access to custom resources such as images, fonts, audio, data files


Edit the pubspec.yaml file to add assets to your application. Add an assets section, like this:
	assets:
	 —assets/images/logo.png
	 —assets/images/work.png
	 —assets/data/seed.json

#### Image
The Image widget displays an image from a local or URL (web) source. To load an Image widget,
there are a few different constructors to use:

➤ Image()—Retrieves image from an ImageProvider class

➤ Image.asset()—Retrieves image from an AssetBundle class using a key

➤ Image.file()—Retrieves image from a File class

➤ Image.memory()—Retrieves image from a Uint8List class

➤ Image.network()—Retrieves image from a URL path



### Book used to learn:

Beginning Flutter by by Marco L. Napoli
