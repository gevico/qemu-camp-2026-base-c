#!/bin/bash

#1.检查二进制主程序是否存在
if[ ! -f "./bin/mybash"];then
    echo "Error: ./bin/mybash not found! Please check compilation."
    exit 1
fi

#2.构造针对mytrans和mywc的测试文本
cat << 'EOF' > test_input.txt
code empowers individuals to be creators in
and and and and and and and and and and and
the the the the the the the the the the
skilled just just just
EOF

#3.构造用于myfile的Relocatable文件
echo "in dummy_func(){return 0;}">dump_temp.c
gcc -c dummy_temp.c -o dummy_temp.o 2>/dev/null

# 测试 1: myfile]
# 期望输出: Shared Object/PIE (ET_DYN) 和 Relocatable (ET_REL)
./bin/mybash myfile bin/mybash
./bin/mybash myfile dummy_temp.o

# 测试 2: mysed
# 期望输出: linux is opensource. unix is free os.
./bin/mybash mysed s/mac/linux "mac if opensource,unix is free os"

# 测试 3: mytrans
# 期望输出: 包含 "原文: code    翻译: ..." 等 7 行精确翻译结果
./bin/mybash mytrans test_input.txt

# 测试 4: mywc
# 期望输出: and 11, the 10, skilled 1, just 3
./bin/mybash mywc test_input.txt

rm -f test_input.txt dummy_temp.c dummy_temp.o
