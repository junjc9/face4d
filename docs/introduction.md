# 简介

> 人类从根本上来说是视觉物种,用眼睛收集信息是了解周围世界的最有用的方式之一,虽然我们认为这是理所当然的,但理解视觉世界却是非常复杂的,我们致力于自动化这些过程，就像人类每天所做的那样

- 比如： 
  - 识别物体 
  - 运动追踪 
  - 理解空间

人脸重建是计算机视觉比较热门的一个方向，3d人脸相关应用也是近年来短视频领域的新玩法。不管是Facebook收购的MSQRD，还是Apple研发的Animoji，底层技术都与三维人脸重建有关。


因为有深度学习，强制将其分为传统方法和深度学习方法，传统方法传统方法是基于优化的方法，你前面说的sfm，sfs都是，非常非常多，推荐看一下这个最新的综述Zollhöfer M, Thies J, Garrido P, et al. State of the Art on Monocular 3D Face Reconstruction, Tracking, and Applications[C]//Computer Graphics Forum. 2018, 37(2): 523-550.

以上方法都是不基于关键点等信息，仅仅基于单目图像的方法。这类方法的核心是blend shape模型，最常见的就是3DMM模型，也就是将三维的人脸按照shape，expression，texture等各个维度进行分离并降维表示，随后线性叠加表示三维模型，它要解决的就是要分别求取相关的参数，通常使用inverse rendering的思路，也就是从二维图像重建3维，然后从3维投影回2维计算误差。



> 从单个图像中提取三维面部形状的一般问题是一个病态的问题这是众所周知的难以解决的问题，没有使用任何统计先验的形状和纹理的脸。也就是说，如果不事先知道物体的形状，就会发现问题中存在固有的模糊性。
  
- 图像中位置的像素强度是物体的**基础形状**、**表面反射率**和**正常特征**、**相机参数**以及**场景照明**和其他物体的排列组合的结果。

> 因此，对于这个问题，可能有无限的解决方案。

## Features

- **Flexible theme system based on CSS custom properties**<br>
  Theme settings are presented as a flat list of logically-named [CSS custom properties](customization). There's no need to navigate or modify complex CSS, allowing changes to be made quickly and confidently.

- **No packages to install or static files to build**<br>
  All processing is done in the browser, removing the need for CSS preprocessors and other build tools. Just link to a theme, then customize by setting [theme-related properties](customization). That's it.

- **Multiple themes available**<br>
  Use a theme as-is, or as a starting point for something completely new. All themes share the same customizable properties, making it easy mix styles from different themes.

- **Improved desktop and mobile experience**<br>
  Enhancements that are unique to docsify-themeable—along with docsify- and browser-related bug fixes—provide a more enjoyable and trouble-free experience for site authors and visitors.

  - [Extensive customization](customization)
  - [PrismJS theme compatibility](customization#prismjs)
  - [Module scale typography](customization#base)
  - [Plugin customization](customization#plugin-styles)
  - [Ready transition](options#readytransition)
  - [Responsive tables](options#responsivetables)

- **Legacy browser support (IE10+)**<br>
  Thoroughly tested and fully compatible with legacy browsers, including support for CSS custom properties (courtesy of a handy [ponyfill](https://github.com/jhildenbiddle/css-vars-ponyfill) developed specifically for docsify-themeable).

## Contact & Support

- Create a [GitHub issue](https://github.com/jhildenbiddle/docsify-themeable/issues) for bug reports, feature requests, or questions
- Follow [@jhildenbiddle](https://twitter.com/jhildenbiddle) for announcements
- Add a ⭐️ [star on GitHub](https://github.com/jhildenbiddle/docsify-themeable) or ❤️ [tweet](https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Fjhildenbiddle%2Fdocsify-themeable&hashtags=css,developers,frontend,javascript) to support the project!

