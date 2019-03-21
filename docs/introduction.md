# 简介

> 人类从根本上来说是视觉物种,用眼睛收集信息是了解周围世界的最有用的方式之一,虽然我们认为这是理所当然的,但理解视觉世界却是非常复杂的,我们致力于自动化这些过程，就像人类每天所做的那样

- 比如： 
  - 识别物体 
  - 运动追踪 
  - 理解空间

人脸重建是计算机视觉比较热门的一个方向，3d人脸相关应用也是近年来短视频领域的新玩法。不管是Facebook收购的MSQRD，还是Apple研发的Animoji，底层技术都与三维人脸重建有关。




<figure class="thumbnails">
    <img src="https://blog-1253739411.cos.ap-shanghai.myqcloud.com/static/img/bandicam/3ds.jpg" alt="Screenshot of coverpage" title="Cover page">
    <img src="https://blog-1253739411.cos.ap-shanghai.myqcloud.com/static/img/bandicam/scan.jpg" alt="Screenshot of coverpage" title="Cover page">
</figure>

> 从单个图像中提取三维面部形状的一般问题是一个病态的问题这是众所周知的难以解决的问题，没有使用任何统计先验的形状和纹理的脸。也就是说，如果不事先知道物体的形状，就会发现问题中存在固有的模糊性。
  
- 图像中位置的像素强度是物体的**基础形状**、**表面反射率**和**正常特征**、**相机参数**以及**场景照明**和其他物体的排列组合的结果。

> 因此，对于这个问题，可能有无限的解决方案。
