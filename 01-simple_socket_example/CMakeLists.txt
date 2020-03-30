 # 指定工程名
 PROJECT (HELLO)
 # 现阶段，你只需要了解 SET 指令可以用来显式的定义变量即可
 # 将 hello.cpp 赋值给 SRC_LIST 变量，也可以指定多个源文件，用空格隔开
 # SET(SRC_LIST hello.cpp add.cpp sub.cpp)
 SET(CLIENT client.c)
 SET(SERVER server.c)

 ADD_EXECUTABLE(client ${CLIENT})
 ADD_EXECUTABLE(server ${SERVER})
