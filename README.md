ImageText
=======

**Requirements**

- ImageMagick development library

`apt-get install libmagick9-dev` on Debian or `brew install imagemagick` on OS X

- [RMagick gem](https://github.com/rmagick/rmagick)

`gem install rmagick`



**Installation**

`gem install ImageText`

**Usage**

`imagetext [filepath] [max width = 100]`

For example, processing a simple text image such as [this one][1],

`imagetext hello_world.jpg`

![Hello World][2]


  [1]: http://www.cocos2d-iphone.org/wiki/lib/exe/fetch.php/wiki:hello_world.jpg
  [2]: http://i.imgur.com/S3f4fwt.png
