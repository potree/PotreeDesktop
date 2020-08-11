

# About

A desktop/portable version of the web-based point cloud viewer [Potree](https://github.com/potree/potree), thanks to [Electron](https://electronjs.org/).

* This version allows you to load [converted point clouds](https://github.com/potree/PotreeConverter) from your hard disc or USB drive. It's also portable so you can put your models together with the viewer on a USB drive and open it wherever you go. 
* It's only been tested on windows at the moment. It may not work on other systems or you may only be able to use it on the same Operating System that you've initially built it on.
* Modify index.html to change which point cloud should be loaded by default.
* You can also drag&drop cloud.js files into the window to add point clouds to the scene.
* This desktop version is in a prototype state and as such it may be a bit awkward to use at times. 
In order to reset the viewer, you'll have to click "window->reload".

# LICENSE

* PotreeDesktop is free to use for anyone, except for PotreeConverter 2.0 which is only free for non-commercial and non-government use. 
* PotreeDesktop lets you pick between PotreeConverter 1.7 (free for all) and 2.0 (free for non-commercial, non-government).
* Potree, PotreeDesktop and PotreeConverter 1.7 are under the BSD 2-clause license.
* PotreeConverter 2.0 is under a free for non-commercial and non-government, paid for commercial and government license. [PotreeConverter2.0 at github](https://github.com/potree/PotreeConverter).

# Getting Started

* Install [Node.js](https://nodejs.org/en/)
* Execute PotreeDesktop.bat
* Drag and Drop a las or laz file to convert and load it.
* Drag and Drop a previously converted point cloud to load it. 
