## FangYi Terminal

a cross-platform ssh or sftp tool based with flutter and rust

### Use local docker container to run test

1. install docker desktop
2. run commander to run container
    ```shell
    docker pull hermsi/alpine-sshd
    docker run -dit --name 'remote-ssh' -p 50001:22 --env ROOT_PASSWORD=root hermsi/alpine-sshd
    ```

3. connect with commander
    ```shell
    ssh root@localhost -p 50001
    ```

### configuration rust ffi with dart

https://www.6hu.cc/archives/101135.html