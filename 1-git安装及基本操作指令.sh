
									Git基本操作指令

1.git安装,使用git前要配置个人用户名称和电子邮件地址.提交时会引用这两条信息,用来说明是谁提交了更新.
# yum install git	//yum安装git
# git	--version	//检查git版本,检测git安装是否正确
# git	config 	--global	user.nmae     liudongling
# git	config	--global	user.email    464492900@qq.com

2.查看当前代码库的状态
-可以查看做的更改和添加的文件
# git	status 

3.向git库添加修改
-把对应目录或文件,添加到stage状态
# git  add   test.txt  

4.向版本库提交修改
-提交修改,添加注释
# git commit –m "XXXX" 

5.获取远端库项目
-从服务器克隆仓库到当前路径
# git clone   ssh://root@192.168.0.106/root/test.git 
-从服务器克隆仓库到指定路径
# git clone   ssh://root@192.168.0.106/root/test.git  /root/test

6.从服务器更新信息
# git pull    origin master

7.提交文件到服务器
# git push   origin master

8.git删除文件同时从git仓库中删除并上穿到服务器
# rm   text.tex         			//先删除实体文件
# git  rm text.txt       			//再用git从版本库删除该文件
# git  add  .						//再把操作添加到更新缓存
# git  commit  -m  “rm text.txt”	//提交修改,添加注释
# git  push   origin  master		//提交文件到服务器

9.git文件重命名
# git  mv  text.txt  rename.txt
# git  add   .

10.修改最后一次提交(commit)
-可以使用 --amend 选项重新提交
# git  commit  --amend

11.取消已经暂存的文件(git add)
# git reset HEAD test.txt   //取消文件test.txt暂存

12.取消对文件的修改(若刚才对文件的修改没有必要该如何取消修改，回到之前的状态)
# git  checkout  --  text.txt

13.查看当前的远程库与远程仓库信息
# git   remote     			  //查看当前的远程库
# git   remote  show  origin  //查看远程仓库信息origin  上一步的结果







