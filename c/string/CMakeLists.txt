 # 指定工程名
 PROJECT (HELLO)
 # 现阶段，你只需要了解 SET 指令可以用来显式的定义变量即可
 # 将 hello.cpp 赋值给 SRC_LIST 变量，也可以指定多个源文件，用空格隔开
 # SET(SRC_LIST hello.cpp add.cpp sub.cpp)
 SET(strptr strptr.c)
 set(ADDRESSES addresses.c)
 set(p_and_s p_and_s.c)
 set(getsputs getsputs.c)
 set(fgets1 fgets1.c)
 set(dyn_arr dyn_arr.c)

 ADD_EXECUTABLE(strptr ${strptr})
 ADD_EXECUTABLE(addresses ${ADDRESSES})
 ADD_EXECUTABLE(p_and_s p_and_s)
 ADD_EXECUTABLE(getsputs getsputs)
 ADD_EXECUTABLE(fgets1 fgets1)
 add_executable(dyn_arr dyn_arr)