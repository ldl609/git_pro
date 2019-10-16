
							Git创建删除合并分支
1.创建分支
-在当前分支下创建名为fixbug的分支
# git    branch    fixbug    

2.切换分支
-切换分支时需要注意修改后的信息必须提交
-切换到fixbug分支
# git   checkout   fixbug    

3.创建同时切换到该分支
# git   checkout   -b  fixbug

4.合并分支
-比如说在msater分支合并fixbug
# git      checkout    master
# git      merge       fixbug
-在分支下fixbug下与master合并
# git     checkout     fixbug
# git     merge	   master

5.删除分支
# git     branch     -d      fixbug

6.查看当前所有分支清单及信息
-显示项前带*表示当前所在的分支
# git	branch                   
-若要查看各个分支最后一个提交对象的信息
# git	branch     -v       
-查看尚未合并的分支
# git branch --no-merged     

7.推送本地分支
-假如有一个分支fixbug要推送到远程仓库
# git    push    origin   fixbug

8.删除远程分支
# git    push  origin  :fixbug   








