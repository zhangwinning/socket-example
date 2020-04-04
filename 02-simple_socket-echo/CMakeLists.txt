project(02-simple_socket-echo)

set(server server.c)
set(client client.c)

add_executable(02-server server)
add_executable(02-client client)