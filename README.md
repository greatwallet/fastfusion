fastfusion-built-in-ubuntu-16.04
==========

Volumetric 3D Mapping in Real-Time on a CPU 

This code implements the approach for real-time 3D mapping on a CPU as
described in the following research paper: [Volumetric 3D Mapping in Real-Time on a CPU (F. Steinbruecker, J. Sturm, D. Cremers), In Int. Conf. on Robotics and Automation, 2014.](http://vision.in.tum.de/_media/spezial/bib/steinbruecker_etal_icra2014.pdf)

This is an unofficial fork of fastfusion repo and aims at assisting those who want to build `fastfusion`. Also, the built binary has been released in this repo.

- [original repo](https://github.com/tum-vision/fastfusion);  
- [paper](http://vision.in.tum.de/_media/spezial/bib/steinbruecker_etal_icra2014.pdf);    
- [video demo](http://youtu.be/7s9JePSln-M); 

![alt tag](http://vision.in.tum.de/_media/data/software/fastfusion_small.png)

Test Environment
============

- ubuntu 16.04 LTS
- Qt 4.8.7
- opencv 3.4.9
- QGLViewer 2.6.3
- headers: boost, eigen, Glew, Freeglut 

Installation
============

1. Set up Qt 4.x from [doc](https://doc.qt.io/archives/qt-4.8/qt-embedded-install.html)

2. Set up opencv according to [doc](https://docs.opencv.org/3.4/d2/de6/tutorial_py_setup_in_ubuntu.html)

3. Prepare QGLViewer (< 2.7.0)( QGLViewer>=2.7.0 replace `QGLWidget` with `QGLOpenWidget` and will cause error to building process). 
<b>Note: </b> You should completely remove Qt5 by running `sudo apt-get purge --auto-remove qt5-default`. Otherwise, according to [issue](https://github.com/tum-vision/fastfusion/issues/9) and related issue [link](https://github.com/tum-vision/lsd_slam/issues/222), a conflict between versions 4 and 5 of Qt will emerge:
```
*** Error in `./bin/onlinefusion': realloc(): invalid pointer: 0x00007f541ff83840 ***
Aborted (core dumped)
```

- Download src code from [libQGLViewer-2.6.3.tar.gz download link](http://www.libqglviewer.com/src/libQGLViewer-2.6.3.tar.gz)
- then perform:
    ```
    # build QGLViewer
    tar -xvf libQGLViewer-2.6.3.tar.gz
    cd libQGLViewer-2.6.3/QGLViewer
    qmake
    make 
    sudo make install

    # link the library for cmake 
    sudo ln -s /usr/lib/x86_64-linux-gnu/libQGLViewer-qt4.so.2.6.3 /usr/lib/libQGLViewer.so
    sudo ln -s /usr/lib/x86_64-linux-gnu/libQGLViewer-qt4.so.2.6.3 /usr/lib/libQGLViewer-qt4.so
    sudo ln -s /usr/lib/x86_64-linux-gnu/libQGLViewer-qt4.so.2.6.3 /usr/lib/libqglviewer-qt4.so
    ```
Then rebuild `fastfusion` with the operations above.

4. Prepare headers
```/usr/bin/sh
# install headers
sudo apt-get update
sudo apt-get install libboost-all-dev libeigen3-dev libglew-dev freeglut3-dev

# install packages
git clone https://github.com/tum-vision/fastfusion.git
cd fastfusion
cmake .
make
```

Change Logs
======================

There are some bugs in the original repos in test environment. Thus some changes have to be made in the scripts. I list them here if anyone is willing to build from original codes.

1. In [`fastfusion/src/CMakeLists.txt`](https://github.com/tum-vision/fastfusion/blob/master/src/CMakeLists.txt#L26)row 26, replace `set(QGLVIEWER qglviewer-qt4)` to   `set(QGLVIEWER QGLViewer-qt4)`

2. In `fastfusion/src/auxiliary/plywriter.hpp` and `fastfusion/src/auxiliary/ocv_tools.hpp`, if you come across make error like 
```
[script].cpp: [row]:[col]: error: ‘type’ is not a member of ‘cv::DataType<cv::Vec<[int, float, char, ...], [length]> >’ ...
```

Then it indicates that the opencv you are using is deprecating some funtions 
add `#define OPENCV_TRAITS_ENABLE_DEPRECATED` before `#include <opencv2/opencv.hpp>` in the correponding `.h` or `.hpp` file.

3. Incomplete class definition in `qglviewer` caused by mistypo:
If you come across error like 
```
onlinefusionviewer.cpp: [row]:[col]: error: invalid use of incomplete type ‘class qglviewer::ManipulatedFrame’ ...
```

Then adding `#include <QGLViewer/manipulatedFrame.h>` in `fastfusion/src/onlinefusionview.hpp` may solve it.

4. When running `fastfusion/bin/onlinefusion`, if you came across error like below 




Built Binary
======================
Please download it in [release](https://github.com/greatwallet/fastfusion/releases)

Preparation of the data
======================

The software takes a text file as input which contains per file
- the camera pose
- the depth image filename
- the color image filename

You can either generate such a file yourself (e.g., by running
Christan Kerl's DVO SLAM:

http://vision.in.tum.de/data/software/dvo

available as open source on our homepage) or you can download 
sequences from the TUM RGB-D benchmark:

http://vision.in.tum.de/data/datasets/rgbd-dataset/

For simplicity, we take a pre-recorded sequence from the TUM
RGB-D benchmark.

    $ mkdir ~/data

    $ cd ~/data

    $ wget http://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_long_office_household.tgz

    $ tar xvzf rgbd_dataset_freiburg3_long_office_household.tgz

Now we need to generate the text file. For this, we use the [associate.py](https://github.com/greatwallet/fastfusion/blob/master/associate.py) tool from [TUM RGB-D Benchmark Tools](https://vision.in.tum.de/data/datasets/rgbd-dataset/tools)
We need to run it twice, as we join the camera poses, the depth image list and the color image list into a single file:

    $ pip install numpy
    
    $ cd ~/fastfusion/

    $ python3 associate.py ~/data/rgbd_dataset_freiburg3_long_office_household/groundtruth.txt ~/data/rgbd_dataset_freiburg3_long_office_household/depth.txt > tmp.txt

    $ python3 associate.py tmp.txt ~/data/rgbd_dataset_freiburg3_long_office_household/rgb.txt > ~/data/rgbd_dataset_freiburg3_long_office_household/associate.txt

The resulting text file should look as follows:

    $ head ~/data/rgbd_dataset_freiburg3_long_office_household/associate.txt

```
1341847980.790000 -0.6832 2.6909 1.7373 0.0003 0.8617 -0.5072 -0.0145 1341847980.786879 depth/1341847980.786879.png 1341847980.786856 rgb/1341847980.786856.png
1341847980.820100 -0.6821 2.6914 1.7371 0.0003 0.8609 -0.5085 -0.0151 1341847980.822989 depth/1341847980.822989.png 1341847980.822978 rgb/1341847980.822978.png
1341847980.850000 -0.6811 2.6918 1.7371 0.0001 0.8610 -0.5084 -0.0159 1341847980.854690 depth/1341847980.854690.png 1341847980.854676 rgb/1341847980.854676.png
[..]
```

Running the code
================

    $ ./bin/onlinefusion ~/data/rgbd_dataset_freiburg3_long_office_household/associate.txt --thread-fusion

After some debugging output on the console, a window with a 3D viewer should open. To start the 
reconstruction process, press "S". 

If you run the program for the first time, press and hold the CTRL key and turn your scroll wheel. 
This is only needed once to "free" the camera viewpoint. After this, you can pan (right click) and 
rotate (left click) the view as you wish using your mouse.

Further options
===============

```
   ./bin/onlinefusion  [--intrinsics <string>] [--imagescale <float>]
                       [--threshold <float>] [--scale <float>]
                       [--max-camera-distance <float>]
                       [--consistency-checks <int>] [-k <int>] [-e <int>]
                       [-s <int>] [--incremental-meshing] [-c] [-b] [-v]
                       [--thread-image] [--thread-fusion]
                       [--thread-meshing] [-l <string>] [--] [--version]
                       [-h] <string> ...


Where: 

   --intrinsics <string>
     File with Camera Matrix

   --imagescale <float>
     Image Depth Scale

   --threshold <float>
     Threshold

   --scale <float>
     Size of the Voxel

   --max-camera-distance <float>
     Maximum Camera Distance to Surface

   --consistency-checks <int>
     Number of Depth Consistency Checks

   -k <int>,  --imagestep <int>
     Use every kth step

   -e <int>,  --endimage <int>
     Number of the End Image

   -s <int>,  --startimage <int>
     Number of the Start Image

   --incremental-meshing
     Perform incremental Meshing

   -c,  --loopclosures
     Read Multiple Trajectories and perform Loop Closures

   -b,  --buffer
     Buffer all Images

   -v,  --viewer
     Show a Viewer after Fusion

   --thread-image
     Thread reading the Images from Hard Disk

   --thread-fusion
     Thread the Fusion inside the Viewer

   --thread-meshing
     Thread the Meshing inside the Fusion

   -l <string>,  --loadmesh <string>
     Loads this mesh

   --,  --ignore_rest
     Ignores the rest of the labeled arguments following this flag.

   --version
     Displays version information and exits.

   -h,  --help
     Displays usage information and exits.

   <string>  (accepted multiple times)
     The File Names
```
![alt tag](http://vision.in.tum.de/_media/data/software/screenshot_fastfusion.png)

Contact
===============
Currently I am applying on the code. If you have some good idea, please reach out to `cxt_tsinghua@126.com`
