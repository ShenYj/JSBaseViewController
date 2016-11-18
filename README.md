# JSBaseViewController

==JSBaseViewController基类[ShenYj](https://github.com/ShenYj)

自定义根视图,使用自定义导航栏,在Pop时解决两个视图控制器导航条融合的问题

>>使用说明：
>>>1.导入 `JSBaseViewController.h` 头文件<br>
>>>2.将需要的视图控制器集成自`JSBaseViewController`<br>
>>>3.在需要使用`navigationItem`的地方使用 `js_NavigationItem`；`navigationBar`使用` js_NavigationBar`替代<br>
>>>4.如果需要子控制器在Push 的时候全局隐藏底部bar，直接设置 `JSNavigationController`的`bottomBarHiddenWhenPushed`为`YES`<br>
