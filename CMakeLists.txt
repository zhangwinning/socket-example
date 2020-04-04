 # 指定工程名
 PROJECT (test)
 cmake_minimum_required(VERSION 3.14)
 # 现阶段，你只需要了解 SET 指令可以用来显式的定义变量即可
 # 将 hello.cpp 赋值给 SRC_LIST 变量，也可以指定多个源文件，用空格隔开
 # SET(SRC_LIST hello.cpp add.cpp sub.cpp)

 add_subdirectory(c/struct)
 add_subdirectory(c/file)
 add_subdirectory(c/select)

 add_subdirectory(01-simple_socket_example)
 add_subdirectory(02-simple_socket-echo)
