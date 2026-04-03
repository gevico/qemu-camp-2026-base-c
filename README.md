# QEMU 训练营基础阶段 C 语言习题

这个目录把 OpenCamp 的两套 C 训练营题目合并成了一套连续编号的 40 题题库，作为 QEMU 训练营基础阶段的 C 语言练习。

- 基础阶段题库保留为 `01-20`
- 专业阶段题库顺延为 `21-40`
- 共 `40` 道题，每题 `5` 分，满分 `200` 分
- 仓库已切换为 `GitHub Actions` 自动评测，并支持把成绩回传到 `OpenCamp`

上游题库来源：

- 基础阶段: [c-training-basic](https://cnb.cool/opencamp/learning-c/c-training-basic)
- 专业阶段: [c-training-advanced](https://cnb.cool/opencamp/learning-c/c-training-advanced)

## 开始练习

1. **准备 Linux 环境**。推荐使用原生 Linux、WSL2 Ubuntu 22.04，或虚拟机中的 Linux 环境完成练习。
2. **安装基础开发工具**。请先确保本机已经安装 `git`、`gcc`、`make` 等常用开发工具，能够正常执行 C 程序编译。在 Ubuntu / Debian / WSL2 Ubuntu 环境下，可以执行：

   ```bash
   sudo apt update
   sudo apt install -y git gcc make
   ```

   安装完成后，可以执行下面的命令确认工具已经安装成功：

   ```bash
   git --version
   gcc --version
   make --version
   ```
3. **加入 GitHub Classroom**。点击实验邀请链接，加入 GitHub Classroom，获取你自己的专属仓库地址。
4. **clone 实验仓库到本地**。使用自己的专属仓库链接执行 `git clone`，再使用 `cd` 进入仓库根目录。
5. **查看可用命令**。在仓库根目录执行 `make help`，先熟悉题库支持的检查命令。
6. **编译检查器并查看题目列表**。执行 `make c-checker` 编译题库检查器，再执行 `make list` 查看全部 40 道练习题。
7. **开始做题**。建议按照编号顺序完成题目。可以先执行 `make check 01` 检查单题，也可以执行 `make hint 01` 查看提示。
8. **边改边验证**。完成某道题后，重新执行 `make check <题号>` 验证结果；做完一批题后，再执行 `make check-all` 进行整体检查。
9. **提交练习结果**。当完成部分或全部练习后，在仓库根目录执行 `git add .`、`git commit -m "update"`、`git push`，触发 GitHub Actions 自动评测。

### 常用起步命令

```bash
make help
make c-checker
make list
make check 01
make hint 01
make check-all
```

## 题目列表

### 01-20 基础阶段

1. `01_insert_sort` - 插入排序
2. `02_merge_sort` - 归并排序
3. `03_quick_sort` - 快速排序
4. `04_linear_search` - 线性查找
5. `05_binary_search` - 折半查找
6. `06_stack_maze` - 栈解决迷宫问题
7. `07_queue_maze` - 队列实现广度搜索迷宫问题
8. `08_circular_queue` - 环形队列实现约瑟夫环问题
9. `09_word_counter` - 统计单词个数
10. `10_my_strcpy` - 字符串拷贝
11. `11_command_interpreter` - 命令解释器
12. `12_student_management` - 学生信息管理
13. `13_universal_sorter` - 通用排序接口
14. `14_calculator` - 四则运算
15. `15_url_parser` - URL 参数解析器
16. `16_mysed` - 简单流处理器
17. `17_myfile` - ELF 文件头查看
18. `18_mywc` - 词频统计器
19. `19_mytrans` - 查字典翻译
20. `20_mybash` - 命令解释器项目

### 21-40 专业阶段

21. `21_singly_linked_list_josephus` - 单链表约瑟夫环
22. `22_doubly_circular_queue` - 双向循环链表队列
23. `23_circular_linked_list_josephus` - 环形链表约瑟夫环
24. `24_prev_binary_tree` - 二叉树前序遍历
25. `25_counter_letter` - 排序二叉树字母统计
26. `26_hash_counter` - Hash 表词频统计
27. `27_asm_gcd` - 内联汇编求最大公约数
28. `28_operator_overflow` - 无符号运算溢出检测
29. `29_swap_endian` - 字节序转换
30. `30_debug_print` - 调试宏 `DEBUG_PRINT`
31. `31_event_handler` - 简单事件处理器
32. `32_container_of_macro` - `container_of` 宏实现
33. `33_garray_dynamic_array` - 动态数组
34. `34_protocol_header_parser` - 协议头解析器
35. `35_elf_info_parser` - ELF 信息查看工具
36. `36_lru_cache` - LRU 缓存淘汰算法
37. `37_bitmap_operations` - 位图操作
38. `38_thread_safe_ring_buffer` - 线程安全环形缓冲区
39. `39_strtok_r_thread_safe` - 线程安全字符串分割器
40. `40_bloom_filter_bitmap` - Bloom 过滤器

## 快速开始

### GitHub 自动评分

当你把代码推送到 `main` 分支时，GitHub Actions 会自动：

1. 编译 `c-checker`
2. 执行 `./c-checker check-all`
3. 生成 `test_results_summary.json`
4. 生成 GitHub Job Summary 和测试产物
5. 在配置好 OpenCamp secrets 后，把分数回传到 OpenCamp 榜单

当前 workflow 同时支持：

- 普通 GitHub 仓库直接 `push main`
- GitHub Classroom 生成的学生仓库直接 `push main`
- `pull_request` 场景下只做评测，不回传 OpenCamp

工作流文件在 `.github/workflows/opencamp-autograding.yml`。
