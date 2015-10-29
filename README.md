README
===

## Description

**ccv_android**: CCV under Android, JNI/NDK with [CCV, this version](https://github.com/liuliu/ccv/commit/785aba2d1cb9c923734c1949ee800321871c4a35)


## Target

[CCV](http://libccv.org/) C-based/Cached/Core Computer Vision Library, A Modern Computer Vision Library

However, it only provides C, which means most of the users can only use them in the offline, limiting its application in PC or server. **Our target of this project is to port them into Android platform to make it support the mobile development, especially in classification, detection and image processing**


## What I done(CCV, OpenCV, Android)

There are a few steps to port all the source code to Android, what I used here is Android JNI with OpenCV. I copied the source code of CCV, build a new JNI project that contains such source code, write the new `Android.mk` to build in Android.

Most importantly, it's not such easy to build under Android. We should use **NDK-build** instead of some PC-tools like GNU-gcc or Microsoft Visual Studio, so some dependences needs to be fixed for compiles, for details of modification, please check each commit in this repo.

Overall, some of my modification includes:

I tried my best to keep the source code as the same as original CCV code, but actually some features are for PC or x86-architecture, so it's not for Android or mobile device, but just keep it and do some modification according to your project needs.

## System requirement

* CCV @ [785aba2d1cb9c923734c1949ee800321871c4a35](https://github.com/liuliu/ccv/commit/785aba2d1cb9c923734c1949ee800321871c4a35)
* OpenCV 2.4.9
* Android Level 16+


## Some related resources

An vlfeat+opencv+Android application, **mcreader**: https://github.com/deercoder/mcreader

Android NDK tutorial: http://developer.android.com/tools/sdk/ndk/index.html

OpenCV guide for android: http://docs.opencv.org/doc/tutorials/introduction/android_binary_package/dev_with_OCV_on_Android.html

Android Build: http://developer.android.com/ndk/guides/android_mk.html


## Future

Any further development are all welcomed, and feel free to contract me if you have any questions. This project serves as my toy project to play with CCV, and by learning the building system of CCV and Android, I learned a lot how it works in Android-JNI, and how CCV organize their files and make the whole project, I think it should be very helpful if you want to add libs/src to your project using these knowledge.
