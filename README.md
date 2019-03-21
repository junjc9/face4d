# f4d 人脸重建


![](https://img.shields.io/badge/opencv-tensorflow-ff69b4.svg)
![](https://img.shields.io/badge/android-f4d-0f9d58.svg)
![](https://img.shields.io/badge/license-Apache2.0-253bd8.svg)

> 使用人脸标定算法,人脸美颜,美妆,配合式活体检测,人脸校准的预处理步骤.
## features 特性

- [x] 106点，人脸轮廓描述更加细腻
- [x] 准确度高，逆光、暗光情况下依然可以取得良好的标定效果
- [x] 多人脸跟踪


### TODO 后续

## exists problem 存在的问题

- 1、光线问题

> 光照一直是机器视觉的老问题，对于人脸识别来说更是明显，由于人脸是一个3D的立体物，在不同方向和角度的光照下会增强或减弱脸部的某些特征，这就导致了机器读取的信息有偏差导致识别失败。


- 2、表情

> 姿态问题涉及头部在三维垂直坐标系中绕三个轴的旋转造成的面部变化，其中垂直于图像平面的两个方向的深度旋转会造成面部信息的部分缺失。而目前大多数算法主要是对于正面且准正的人脸来识别，如果当发生俯仰或者左右倾斜比较厉害时，算法的识别率会急剧下降。面部幅度较大的哭、笑、愤怒等表情变化同样影像着面部识别的准确率。

- 3、遮挡问题

> 由于人脸识别需要完整采集人脸的信息，而如果在有遮挡的情况下无法收集完整信息从而导致无法识别。拿IPhone X举例子，平时正常情况下拿起手机即可解锁，而在戴口罩时就会完全失效。其原因正是被采集出来的人脸图像有不完整，从而影响了后面的特征提取与识别，导致人脸检测算法的失效。

- 4、人脸相似性

> 全球人口众多，除了亲子关系长相相似，甚至有许多毫无血缘关系的人也有相似，这点对于利用人脸进行定位是有利的，但是对于利用人脸区分人类个体是不利的。

- 5、样本缺乏

> 基于统计学习的人脸识别算法是目前人脸识别领域中的主流算法，但是统计学习方法需要大量的训练。由于人脸图像在高维空间中的分布是一个不规则的流形分布，能得到的样本只是对人脸图像空间中的一个极小部分的采样，如何解决小样本下的统计学习问题有待进一步的研究。

## License 许可

```sh
Copyright 2019 dybl

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
