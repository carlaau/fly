## fly社区模板 + aardio + carlmvc + mysql开发的简约型问答社区网站

## 技术栈
aardio + carlmvc + mysql + layui

## 项目预览地址
http://fly.aardio.org

## 项目开源地址
https://github.com/carlaau/fly

## 后端mvc框架 carlmvc
https://github.com/carlaau/carlmvc

## 前端框架 fly社区模板
https://github.com/layui/fly

## 操作说明
1.下载aardio开发环境 http://www.aardio.com

2.安装carlmvc网站开发插件 https://github.com/carlaau/carlmvc

3.下载本项目源码,用ide打开default.aproj工程文件,

4.导入数据库mysql.sql文件,配置数据库连接信息 \config\database.aardio

4.新建IIS网站，IIS网站目录指向工程目录下的 /www/ 目录

5.添加IIS网站的“处理程序映射”，指向工程目录下的 /aardio-cgi/aardio-cgi.exe 
 (此cgi程序也可自己从ide新建fast-cgi工程发布生成)

6.点击插件上“调试发布" - “重新生成”(或自己点ide上的发布,发布后拷贝\publish\lib目录到\aardio-cgi\lib\下)

7.打开iis网站浏览(如果打开失败,请"清理"下,重复操作第6步)

## 更新日志
2017-06-17
登录,注册,个人资料修改,密码修改,个人头像上传