## 实现多种 socket 调用的方式

- [最简单的 socket 调用](https://github.com/zhangwinning/socket-example/tree/master/simple_socket_example)
  todo
- 多路复用
  - [select]()
  - [poll]()
  - [epoll]()

## Q&A

1. 类型转换的的意义是

```c
bind(listenfd, (struct sockaddr *) &servaddr, sizeof(servaddr))
```

把特定类型的套接字指针 转换为 指向某个通用套接字地址结构的指针。

2. 编译静态库

# 整个项目 unix-network-programming-v3 有点看明白了，先构建库函数
