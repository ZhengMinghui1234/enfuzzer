# The Manual of Enfuzzer

Enfuzzer is the first tool for ensemble fuzzing, which effectively improves the performance and generalization ability of each base fuzzers.
Enfuzzer can be used for free in：http://166.111.80.238:8080/Enfuzz.php .

## Instructions of Enfuzzer

The use of Enfuzzer can be mainly divided into 5 steps：
1. environment setting; 2. upload source code and build; 3.upload inital seeds; 4.base fuzzers selection; 5.run Enfuzzer.

###  Step One: environment setting

The screenshot of the user interface is shown below:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/step1.PNG)

To improve the compatibility and robustness of Enfuzzer,  
为提升Enfuzz服务的兼容性，扩大服务范围，本服务通过虚拟化，共享关键库等技术，为绝大多数大Linux发行版提供了技术支持。
主要包括alpine, archlinux, centos, debian, fedora, gentoo, opensuse, oracle, plamo 和 ubuntu.
其中 archlinux, centos, debian, fedora, opensuse 和 ubuntu 已经通过了兼容性测试。（截止到2018-10-01）

当用户选择好待测程序的运行环境后，选择下一步，Enfuzz服务将会自动化构建系统环境。自动化构建过程信息将实时显示在用户界面中，构建成功后，界面自动跳转到下一步骤。


### Step Two: upload and build source code

The screenshot of the user interface is shown below:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/step2.PNG)

用户需将待测程序源码，待测程序模糊测试驱动接口，待测程序源码自动化编译脚本全部打包上传后（暂支持tar.gz和zip格式的压缩包），后台Enfuzz服务将会通过自动化编译脚本对目标程序源码和测试驱动接口进行插桩编译。自动化插装编译过程信息将实时显示在用户界面中。待测程序编译完成后，界面将会自动跳转到下一步骤。

目前支持3大主流编译流程：cmake, make 和 autotools.

#### example 1: cmake编译流程的libssh（以Ubuntu系统下的为例）: 

libssh项目的文件目录如下所示：

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example1_1.png)

该文件目录下，除去libssh项目的原始文件，用户只需多构造两个文件：

1. 自动化fuzzbuild编译脚本文件，主要包含3个步骤：
	1） 构建待测程序编译环境
	2）插装编译待测程序
	3） 编译驱动接口文件并于待测程序链接。

   自动化编译脚本fuzzbuild的详细信息如下图所示:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example1_2.png)

2. 驱动接口文件，使用的是google libfuzzer 的标准接口：LLVMFuzzerTestOneInput. 
用于接收fuzz引擎生成的种子，并将种子传递给待测程序进行执行。

   驱动接口文件libssh_server_fuzzer.cc的详细信息如下图所示:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example1_3.png)


#### example 2: make编译流程的re2（以Ubuntu系统下的为例）: 

re2项目的文件目录如下所示：

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example2_1.png)

该文件目录下，除去re2项目的原始文件，用户只需多构造两个文件：

1. 自动化fuzzbuild编译脚本文件，主要包含3个步骤：
	1） 构建待测程序编译环境
	2）插装编译待测程序
	3） 编译驱动接口文件并于待测程序链接。

   自动化编译脚本fuzzbuild的详细信息如下图所示:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example2_2.png)

2. 驱动接口文件，使用的是google libfuzzer 的标准接口：LLVMFuzzerTestOneInput. 
用于接收fuzz引擎生成的种子，并将种子传递给待测程序进行执行。

   驱动接口文件target.cc的详细信息如下图所示:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example2_3.png)


#### example 3: autotools编译流程的pcre（以Ubuntu系统下的为例）: 

pcre项目的文件目录如下所示：

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example3_1.png)

该文件目录下，除去pcre项目的原始文件，用户只需多构造两个文件：

1. 自动化buildfuzz编译脚本文件，主要包含3个步骤：
	1） 构建待测程序编译环境
	2）插装编译待测程序
	3） 编译驱动接口文件并于待测程序链接。

   自动化编译脚本fuzzbuild的详细信息如下图所示:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example3_2.png)

2. 驱动接口文件，使用的是google libfuzzer 的标准接口：LLVMFuzzerTestOneInput. 
用于接收fuzz引擎生成的种子，并将种子传递给待测程序进行执行。

   驱动接口文件target.cc的详细信息如下图所示:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/example3_3.png)


### Step Three: upload initial seeds

The screenshot of the user interface is shown below:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/step2.PNG)

初始种子对于模糊测试的性能影响十分大，用户可选择将待测程序的初始种子打包上传后（暂支持tar.gz和zip格式的压缩包），后台Enfuzz服务将自动化对初始种子进行解压去重。种子准备完毕后，界面将会自动跳转到下一步骤。


### Step Four: base fuzzer selection

The screenshot of the user interface is shown below:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/step4.PNG)

The core idea of Enfuzzer is to ensemble different kinds of base fuzzers as diverse as possible. Currently, basing on bitmap, mutation-based fuzzers -- AFL, AFLFasts and FairFuzz; basing on various sanitizers, mutation-based fuzzer -- libFuzzer; as well as generation-based fuzzer -- Radamsa. More base fuzzers will be included later.

用户选择完基模糊测试器，测试时间后，选择下一步。后台Enfuzz 服务将自动记录用户选择的参数，测试准备完毕后，界面将自动跳转到下一步骤。


### Step Five: run Enfuzzer

The screenshot of the user interface is shown below:

![image](https://github.com/131250106/enfuzzer/blob/master/example/image/step5.PNG)


After confirming the basic fuzzing information, the user chooses to execute the Enfuzzer service. The Enfuzz server will automatically fuzz target application through ensemble method. The basic information of the fuzzing process (path coverage information and unique crashes information) will be displayed in the interface in real time. When Enfuzzer is finished, the server will automatically send an email to the user's mailbox.




## Q&A：

Question 1：Can not found fuzzbuild in Step Two.

Answer 1：检查XXX.tar.gz/XXX.zip 解压后是文件夹名是否是XXX; 
			检查XXX文件夹下是否包含fuzzbuild自动化构建脚本；
			检查fuzzbuild文件的执行权限。
