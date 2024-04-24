# images

Adding Assets and Loading Images, Icons and Decorators

### AssetBundle
The AssetBundle class provides access to custom resources such as images, fonts, audio, data files


Edit the pubspec.yaml file to add assets to your application. Add an assets section, like this:
        assets:
         —assets/images/logo.png
         —assets/images/work.png
         —assets/data/seed.json

### IMAGES
The Image widget displays an image from a local or URL (web) source. To load an Image widget,
there are a few different constructors to use:

➤ Image()—Retrieves image from an ImageProvider class

➤ Image.asset()—Retrieves image from an AssetBundle class using a key

➤ Image.file()—Retrieves image from a File class

➤ Image.memory()—Retrieves image from a Uint8List class

➤ Image.network()—Retrieves image from a URL path

### USING DECORATORS
Decorators help to convey a message depending on the user’s action or customize the look and feel of
a widget. There are different types of decorators for each task.

➤ Decoration—The base class to define other decorations.

➤ BoxDecoration—Provides many ways to draw a box with border, body, and boxShadow.

➤ InputDecoration—Used in TextField and TextFormField to customize the border, label,
icon, and styles. This is a great way to give the user feedback on data entry, specifying a
hint, an error, an alert icon, and more.

