
									Git设置标签(版本号)
1.查看标签
-列出所有标签
# git   tag 
-用特定的搜索模式列出符合条件的标签   
# git   tag –l 'v1.4.2.*' 

2.新建标签
-创建一个含附注类型的标签
# git  tag –a v1.4 –m   ‘my version 1.4’
-查看相应标签的版本信息
# git     show      v1.0  
-轻量级标签(不使用选项直接创建)
# git  tag  v1.0

3.后期添加标签
-在打标签的时候跟上对应提交对象的校验和（或前几位字符）即可
# git   tag –a  v1.1  9fceb02   

4.分享标签
 -把指定标签传送到远端服务器
# git  push origin  v1.0  
-把所有本地新增的标签传送到远端服务器
# git  push origin –tags
