
							Git实现本地多台主机存取代码仓库
一 .环境组成说明
1.设备
-服务器	用户名:root  	ip:192.168.0.106
-主机1	用户名:root  	ip:192.168.0.103
-主机2	用户名:root  	ip:192.168.0.105

2-网络说明
-3台主机均在同一局域网内

二.完成效果说明
1.通过git开发主机1与开发主机2能够在服务端存取代码

三.系统及相关前提说明
1.开发机与服务器均为centos 7
2.所有主机必须都安装有git
-在终端输入指令 git –vision 查看是否安装
-若未安装输入指令: "yum   install    git"进行安装
3.所有主机都必须安装ssh服务以及开启ssh服务
-在终端输入指令:"rpm -qa | grep ssh"查看
-若未安装则参考文档"Linux安装与开启ssh服务"

四.配置服务器(192.168.0.106 server)
1.这里设定服务器用于存放git所有仓库的文件夹及位置为(/root/git_server))
# cd	/root/git_server
# mkdir	testgit.git        
# cd	testgit.git
# git  	--bare  init    #初始化一个名为testgit 空的git仓库

五.主机1(192.168.0.103)现有项目进行git管理并上传到服务器端以及下载更新
1.设定该项目名称为testgit路径为:"/root/workspace/testgit"
 -假如文件夹下有文件main.cpp,test.cpp两个文件
2.然后在主机1终端执行以下操作
# cd   /root/workspace/testgit
# git  init             
# git  add  main.cpp  test.cpp     //添加上穿的文件
# git  commit  -m  "initial commit"   //可根据实际情况填写就是了
# git  remote   add   origin  ssh://root@192.168.0.106/root/git_server/testgit.git
# git  push     origin  master       //将本地代码上传到服务器端
-若要获取服务器更新后的内容则执行以下操作
# git     pull      origin    master

六.主机2从服务端克隆版本库,并上穿文件或更新到服务器,还有从服务器下载更新
1. 设定该克隆的版本库保存路径为 :/home/ldlcentos/project_workspace/
2.然后在主机2终端执行以下操作:
# git   clone ssh://root@192.168.0.106//root/server_pro_workspace/testgit.git
# cd    testgit
# touch   readme.txt        #创建一个新文件用来测试
# git  add  readme.txt
# git  commit	-m	"add new file"    #根据实际情况填写
# git  push		origin    master   
-若要获取更新则可执行以下操作
# git     pull     origin   master   












