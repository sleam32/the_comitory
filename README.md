NSS-the_comitory-CLI
============
Purpose
============
 
[![Build Status](https://travis-ci.org/sleam32/the_comitory)](https://travis-ci.org/sleam32/the_comitory) 

This is a Ruby application, written in the command line that will store and organize information about my personal collection of Comic Books as well as the information of anyone else who chooses to use it. The app will store information in Active Record, and allow for editing and deleting of individual items as well as searching and retrieving stored information by title or publisher.

Project Status/TODO
========================
All of the main features "Add", "List", "Remove" and "Quit" are working. There are a few glitches that should be addressed:

1.The formatting of the list option's output gets ganky after numbers reach the double digits.

2.Remove option only functions based upon the title argument, instead of the title publisher and issue number arguments all together. Remove needs to be much more specific.

Features
=============
The main feature of the comitory CLI is that items entered in will be stored into a list display and can be added to and removed from. 

Usage Instructions
======================
To add a new Comic:
>ruby comitory.rb add

To list a new Comic:
>ruby comitory.rb list

To remove a Comic:
>ruby comitory.rb remove

To quit the application:
>ruby comitory.rb quit

Demo
==============
Download and enjoy!

Author
================
Shearry Malone

License
==============
Copyright (c) 2013 Shearry Malone

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

