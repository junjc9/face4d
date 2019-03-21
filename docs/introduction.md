# 简介

> 人脸重建是计算机视觉比较热门的一个方向，3d人脸相关应用也是近年来短视频领域的新玩法，底层技术都与三维人脸重建有关。

- 这里的人脸重建指，通过二维人脸图像重建出该人脸的三维模型。

- 大概有以下几种方法：

> 通过多视图几何来重建，这个需要采集不同角度的人脸，对设备的要求也比较高； 通过RGBD或RGB相机，用3D Morphable Model（3DMM）方法来重建。这种方法也有局限性，由于模型特点所致，无法生成模型细节(皱纹等)

<figure class="thumbnails">
    <img src="https://blog-1253739411.cos.ap-shanghai.myqcloud.com/static/img/bandicam/scan.jpg" alt="Screenshot of coverpage" title="Cover page">
</figure>

<figure class="thumbnails">
    <img src="https://blog-1253739411.cos.ap-shanghai.myqcloud.com/static/img/bandicam/3ds.jpg" alt="Screenshot of coverpage" title="Cover page">
</figure>



> 主要讲讲单目RGB相机的3DMM方法。这种方法对设备要求低，算法简单，易于移动端实现实时重建。这里的前提是我们已经有了图像人脸检测的关键点

- 输入图像
  - 检测到的人脸关键点
- 输出人脸三维网格





