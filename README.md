# JSBaseViewController

## JSBaseViewController基类[ShenYj](https://github.com/ShenYj)

- 自定义根视图,使用自定义导航栏,在Pop时解决两个视图控制器导航条融合的问题
- 支持iOS 11和iPhone X

### 效果图:
![Demo](https://github.com/ShenYj/JSBaseViewController/blob/master/BaseViewControllerDemo.gif?raw=true)


### 使用说明：

- [x] 1.导入 `JSBaseViewController.h` 头文件<br>
- [x] 2.将需要的视图控制器集成自`JSBaseViewController`<br>
- [x] 3.在需要使用`navigationItem`的地方使用 `js_NavigationItem`；`navigationBar`使用` js_NavigationBar`替代<br>
- [x] 4.如果需要子控制器在Push 的时候全局隐藏底部bar，直接设置 `JSNavigationController`的`bottomBarHiddenWhenPushed`为`YES`<br>
- [x] 5.iOS 11和iPhone X 适配 <br>
