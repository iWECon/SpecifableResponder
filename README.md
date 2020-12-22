# SpecifableResponder

一个简单的点击事件可穿透的视图。同时可以设置需要子视图中响应的视图。

## 继承 SpecifableResponderView 或 SpecifableResponderWindow

设置  `canResponderView: [UIView]`  或者添加到该视图上的 view 继承  `SpecifyProvider` 协议，这样子视图就可响应了。
响应前需要确保当前点击范围在该子视图上，并且该子视图是可以响应事件的。


## Install

#### Swift Package Manager
```swift
.package(url: "https://github.com/iWECon/SpecifableResponder", from: "1.0.0")
```
