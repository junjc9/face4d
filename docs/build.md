# 如何构建与运行

## 编译环境

- MacOsX 

- Xcode clang>=9.1.0 

```html
Apple LLVM version 9.1.0 (clang-902.0.39.2)
Target: x86_64-apple-darwin17.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
```

- Windows

  - Vs community 2017 >15.0

- Linux

  - gcc >= 7

## 依赖库

| 名称 | 版本 |
| --- | --- |
| boost | >= 1.69.0 |
| OpenCV | >= 3.4.3 |
| Eigen | >= 3.0 |
| Dlib | >= 19.16 |

## 流程

1. 
    ```
    git clone --recursive git://github.com/junjc9/f4d.git
    ```

2. 
    ```
    sudo add-apt-repository ppa:ubuntu-toolchain-r/test
    sudo apt-get update
    sudo apt-get install gcc-7 g++-7 libboost-all-dev libeigen3-dev libopencv-dev opencv-data
    ```
    For Windows, we recommend [vcpkg](https://github.com/Microsoft/vcpkg/) to install the Boost, OpenCV and Eigen dependencies.

3. Build the app:
    Run from _outside_ the source directory:
    1. `mkdir build && cd build`

    2. `cmake -DCMAKE_INSTALL_PREFIX=../install -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7 -DOpenCV_haarcascades_DIR=/usr/share/opencv/haarcascades/ ../4dface/`

    On Windows, add `-G "Visual Studio 15 2017 Win64"`. Also, you will probably need to add `-C ../4dface/initial_cache.cmake` as first argument - copy the file from `initial_cache.cmake.template` and adjust the paths. Or, with vcpkg, use [`-DCMAKE_TOOLCHAIN_FILE=...`](https://github.com/Microsoft/vcpkg/blob/master/docs/users/integration.md#cmake-toolchain-file-recommended-for-open-source-cmake-projects).

    If you get an error about OpenCV\_haarcascades\_DIR, adjust `-DOpenCV_haarcascades_DIR` to point to the directory of `haarcascade_frontalface_alt2.xml` from OpenCV.

4. Type `make` or build in Visual Studio.

4. Type `make install`, or run the INSTALL target in Visual Studio, to copy all required files into a `share/` directory next to the executable.
