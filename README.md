## 注意

 1. **请勿滥用，账号封禁风险自负。**
 2. Heroku的文件系统是临时性的，每24小时强制重启一次后会恢复到部署时状态。不适合长期下载和共享文件用途。
 3. Aria2配置文件默认限速20MB/s。

## 概述

  本项目用于在Heroku上部署Cloudreve从机节点，集成Aria2离线下载功能。
  
## 部署方式

 **推荐使用本仓库直接部署**  

 1. 浏览器登陆heroku后，访问<https://dashboard.heroku.com/new?template=https://github.com/UbiquityTony/Cloudreve-Slave-On-Heroku> 进行部署。
 2. 首先打开Cloudreve主机管理面板———离线下载节点，点接入新节点进入向导。
 3. 将从机密钥填入Heroku安装向导。
 4. Heroku完成部署后，将Heroku APP域名填入从机地址，Aria2 RPC服务地址为<http://127.0.0.1:61800> ，RPC密钥为空白。
 5. 每次部署会采用Cloudreve最新版本。
