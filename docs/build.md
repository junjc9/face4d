# 如何构建与运行

## 编译环境

- OS
  - MacOsX 
    - Xcode clang>=9.1.0 

```html
Apple LLVM version 9.1.0 (clang-902.0.39.2)
Target: x86_64-apple-darwin17.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
```

  - Windows

    - Visual Studio community 2017 >15.4

  - Linux

    - gcc >= 8.1.0


## 依赖库

| 名称 | 版本 |
| --- | --- |
| boost | >= 1.69.0 |
| OpenCV | >= 3.4.3 |
| Eigen | >= 3.0 |
| Dlib | >= 19.16 |
| ... | ... |

## 流程

```sh
git clone --recursive git://github.com/junjc9/face4d.git

mkdir build && cd build
    
cmake -DCMAKE_INSTALL_PREFIX=../install -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=gcc-8-DCMAKE_CXX_COMPILER=g++-8 -DOpenCV_haarcascades_DIR=/usr/share/opencv/haarcascades/ ../demo/

make install
```
