# 开发流程

输入二维人脸图像

使用dlib的正面人脸检测器

进行关键点检测和角度估计

从而提取人脸特征重建出三维obj模型

再将纹理信息映射至该模型

### 介绍
良心级开源人脸标定算法,人脸美颜,美妆,配合式活体检测,人脸校准的预处理步骤.该项目Windows工程基于传统的SDM算法,通过修改开源代码,精简保留测试部分代码,优化代码结构.
Android代码基于深度学习,我们设计了高效的网络模型,该模型鲁棒性较好,支持多人脸跟踪.目前深度学习算法在人脸标定方向取得了良好的效果,该项目旨在提供一种较为简单易用的实现方式.


#### 相关资源 
+ [基于SDM的HyperLandmark-iOS实现](https://github.com/elhoangvu/HyperLandmark-iOS) (2019.02.06)
+ [相关技术博客](https://blog.csdn.net/lsy17096535/article/details/81116221)
+ [参考开源SDM算法](https://github.com/chengzhengxin/sdm)。
+ [基于CNN的人脸标定](https://github.com/lsy17096535/face-landmark)。
+ [HyperLandmark 106点序号](https://github.com/zeusees/HyperLandmark/blob/master/images/landmark_order.png)

### 特性

+ 106点，人脸轮廓描述更加细腻
+ 准确度高，逆光、暗光情况下依然可以取得良好的标定效果
+ 模型小，跟踪模型2MB左右，非常适合移动端集成
+ 速度快，Android平台代码在 Qualcomm 820 (st) 单张人脸7ms (2018.08.14)
+ 增加多人脸跟踪

### APP

- 体验 Android APP：[https://fir.im/HyperLandmark](https://fir.im/HyperLandmark)

### Latest Update

+ Add OpenGL based camera interface.

### TODO

+ Dense face landmark (800 points)
+ Facial action recognition
+ Euler angle , face pose estimation. 
+ Open source native tracking code.



## Installation

1. [Create a docsify site](//docsify.js.org/#/quickstart) by following the instructions on the [docsify.js](//docsify.js.org) website.

1. Select a theme from the [Themes](themes) section and replace the `<link>` in your `index.html`.

   ```html
   <!-- Theme: Simple (latest v0.x.x) -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/docsify-themeable@0/dist/css/theme-simple.css">
   ```

1. Add the docsify-themeable plugin to your `index.html` after docsify:

   ```html
   <!-- docsify-themeable (latest v0.x.x) -->
   <script src="https://cdn.jsdelivr.net/npm/docsify-themeable@0"></script>
   ```

1. Review the [Options](options) section and configure as needed. For example:

   ```html
   <script>
     window.$docsify = {
         // ...
         themeable: {
             readyTransition : true, // default
             responsiveTables: true  // default
         }
     }
   </script>
   ```

1. Review the [Customization](customization) section and set theme properties as needed. For example:

   ```html
   <style>
     :root {
       /* Reduce the font size */
       --base-font-size: 14px;

       /* Change the theme color hue */
       --theme-hue: 325;

       /* Change the sidebar bullets */
       --sidebar-nav-link-before-content: '😀';
     }
   </style>
   ```

## Local Preview

Previewing your site locally requires serving your files from a web server.

The docsify [Quick Start](//docsify.js.org/#/quickstart) guide recommends [docsify-cli](//github.com/QingWei-Li/docsify-cli) for creating and previewing your site:

```bash
# Install docsify-cli globally
npm install -g docsify-cli

# Serve current directory
docsify serve

# Serve ./docs directory
docsify serve docs
```

A simple [Python](https://www.python.org/) web server can also be used:

```bash
# Change to site directory
cd /path/to/site/files

# Show Python version
python --version

# Launch web server (Python 2.x)
python -m SimpleHTTPServer

# Launch web server (Python 3.x)
python -m http.server
```

## Hosting

Sites powered by [docsify.js](//docsify.js.org/) can be hosted on any web server. The [docsify website](//docsify.js.org/) provides a helpful [deployment guide](//docsify.js.org/#/deploy) with tips for hosting your site on following platforms:

- [GitHub Pages](https://pages.github.com/)
- [GitLab Pages](https://about.gitlab.com/features/pages/)
- [Firebase Hosting](https://firebase.google.com/docs/hosting/)
- [Virtual Private Server (VPS)](https://en.wikipedia.org/wiki/Virtual_private_server)
