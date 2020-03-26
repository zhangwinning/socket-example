## 两种编译方式
### 第一种通过 gcc
```
g++ server.c -o server
g++ client.c -o client
./server
./client 127.0.0.1
```
### 第二种 CMakeLists.txt

在 CMakeLists.txt 写入以下文件，然后新建 cd build 目录后，执行 `cmake ..`, 生成 MaKeFile 文件，然后执行 make 即可。

```
 PROJECT (HELLO)
 SET(CLIENT client.c)
 SET(SERVER server.c)
 ADD_EXECUTABLE(client ${CLIENT})
 ADD_EXECUTABLE(server ${SERVER})

```

## Q&A
1. 在 server.c 中的打印使用 fprintf，而没有使用 printf 的原因是

printf 的日志不是立即打印的，fprintf(stderr, "hello") 是立即打印的，具体参照以下
[Why does printf not flush after the call unless a newline is in the format string](https://stackoverflow.com/questions/1716296/why-does-printf-not-flush-after-the-call-unless-a-newline-is-in-the-format-string)

2. 当 server 中重启多次后，发现有几次就不监听特定端口了，不知为何。。。