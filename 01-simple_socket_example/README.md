## 两种编译方式

### 第一种 gcc

```
g++ server.c -o server
g++ client.c -o client
./server
./client 127.0.0.1
```

### 第二种 CMakeLists.txt

在 CMakeLists.txt 填充以下文件，然后在父目录下 CMakeLists.txt 下加入 `add_subdirectory(03-simple_socket-select)`。表示在父目录下
可以执行子目录。

```
 PROJECT (HELLO)
 SET(CLIENT client.c)
 SET(SERVER server.c)
 ADD_EXECUTABLE(client ${CLIENT})
 ADD_EXECUTABLE(server ${SERVER})

```

## Q&A

1. 在 server.c 中的打印使用 fprintf，而没有使用 printf 的原因是

printf 的日志不是立即打印的，fprintf(stderr, "hello") 才会立即打印日志。具体参照[Why does printf not flush after the call unless a newline is in the format string](https://stackoverflow.com/questions/1716296/why-does-printf-not-flush-after-the-call-unless-a-newline-is-in-the-format-string)

2. 当 server 中重启多次后，发现有几次就不监听特定端口了，不知为何。。。

## 参考文章

> [c-socket-programming](https://www.thegeekstuff.com/2011/12/c-socket-programming/)

> [代码](https://gist.github.com/browny/5211329#file-simple_socket_example-c-L118)

> & laquo;socket网络编程& raquo;
