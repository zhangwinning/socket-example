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