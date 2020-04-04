## mac 上执行 libuv

通过 brew 把 libuv 安装后，使用 gcc -luv main.c 执行有 libuv 的文件即可。

https://stackoverflow.com/questions/16258794/libraries-to-compile-libuv-on-os-x

### 分析 kevent
通过分析 libuv-cmake-example 后，发现请求是阻塞到 kevent 这个函数调用上，而为什么会阻塞在 kevent 这个调用上？
下面看下 kevent 这个函数的逻辑




## kevent 这个东西先放下，我先去修个 bug 。


