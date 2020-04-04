## 两种编译方式

### 第一种 gcc(先链接，再生成可执行文件有点复杂)

```
// 生成链接文件
gcc -Wall -c foo.c
gcc -Wall -c main.c

// 多个链接文件最后生成一个执行文件
gcc -o testprogram foo.o main.o
```

### 第二种 CMakeLists.txt(这个就简单了)

在 CMakeLists.txt 写入以下文件，然后新建 cd build 目录后，执行 `cmake ..`, 生成 MaKeFile 文件，然后执行 make 即可。

```
 # 指定工程名
 PROJECT (HELLO)

 SET(FOO foo.c)
 SET(MAIN main.c)

 ADD_EXECUTABLE(test1 FOO MAIN)

```

## Q&A

## 参考文章

> [C 调用另一个文件的函数](https://riptutorial.com/c/example/3250/calling-a-function-from-another-c-file)

>

## 2020年03月27日11:41:20 感觉使用 cMakeList 可能不如直接使用 Makefile 好，现在决定使用 makefile

