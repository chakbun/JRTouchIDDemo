# JRTouchIDDemo
touchID 使用的探索，
使用方法简单到呕。就是调用LAContext的实例方法
```objc
- (void)evaluatePolicy:(LAPolicy)policy
       localizedReason:(NSString *)localizedReason
                 reply:(void(^)(BOOL success, NSError * __nullable error))reply;
```
结果通过block的方式告知

使用前一般都先判断一下设备是否支持touch id。
同样地调用LAContext的实例方法
```objc
- (BOOL)canEvaluatePolicy:(LAPolicy)policy error:(NSError * __autoreleasing *)error __attribute__((swift_error(none)));
```
其中参数

* LAPolicyDeviceOwnerAuthentication



