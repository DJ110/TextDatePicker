TextDatePicker
=======
TextDatePicker is UI parts for iOS
Show text style date.
And tap drop arrow button, show up UIDatePicker
and tap again, fold it.

How to use
--------------
Just copy source files in your project.
- NSDate+DateFormat.h
- NSDate+DateFormat.m
- NSString+DateFormat.h
- NSString+DateFormat.m


This is resource
- dropeown.png

This is main source
- TextDatePicker.h
- TextDatePicker.m

**Code Examples**
```objc
//TextDatePicker *tpicker;
// self.tpicker is TextDatePicker instance
self.tpicker = [[TextDatePicker alloc] init];
self.tpicker.parent = self.view;
self.tpicker.textfield_height = 45;
self.tpicker.textfield_position_x = 5;
self.tpicker.textfield_position_y = 5;
self.tpicker.duration = 0.5;
    
[self.view addSubview:self.tpicker];
[self.tpicker show];
```

License
-------
Copyright 2014. [Daiji Ito] [DJ110].
This library is distributed under the terms of the MIT License (MIT)

Sample Application
--------------
There are sample appliction in same project.
Switch **TextDatePickerSampleApplication** and build and run 

![ScreenShot](https://github.com/DJ110/TextDatePicker/blob/master/img/textpicker1.png)
![ScreenShot](https://github.com/DJ110/TextDatePicker/blob/master/img/textpicker2.png)

Web
--------------

[DJ110]: http://atmarkplant.com



