# For Edge Device( Nvidia Jetson Xavier NX (8GB))

## Update local Cmake ( arrch64 ) to 3.28

### Download

[Index of /files/v3.28](https://cmake.org/files/v3.28/)

```bash

agilex@xavier:~/workspace/cmake-3.28.0-linux-aarch64$ls

bin  doc  man  share

```

### Link to Sys Path

```bash

# ~/.bashrc  add this line to the end of file

export PATH=/home/agilex/workspace/cmake-3.28.0-linux-aarch64/bin:$PATH


# replace with the cmake-2.28 file location to

```

```cmd

> source ~/.bashrc


> cmake --version

agilex@xavier:~/workspace/cmake-3.28.0-linux-aarch64$ cmake --version

cmake version 3.28.0


CMake suite maintained and supported by Kitware (kitware.com/cmake).

```

## Update gcc g++

use RPA repo to get gcc-9 g++-9

```bash

add-apt-repositoryppa:ubuntu-toolchain-r/test

sudoaptupdate

sudoaptinstallgcc-9g++-9

```

## Xavier Compile

set gcc and g++ version to gcc-9 g++-9 temporaily, these commands should be excuted at the same shell

```bash

> whereis gcc-9

gcc-9:/usr/bin/gcc-9

> whereis g++-9

g++-9:/usr/bin/g++-9


>export CC=/usr/bin/gcc-9

>export CXX=/usr/bin/g++-9

```

compile llama.cpp

```bash

cmake -B build

cmake --build build --config Release-j4

```

run the llama.cpp with single query

```

./build/bin/llama-cli -m {model/to/your/path} -p {query_word}

```
