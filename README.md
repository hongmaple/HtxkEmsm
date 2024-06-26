

# 教务综合管理系统

* 阿里云服务器优惠：[点我进入](https://www.aliyun.com/daily-act/ecs/activity_selection?userCode=yclv4x57)，腾讯云产品优惠：[点我进入](https://curl.qcloud.com/ZHPbMWTl)&nbsp;&nbsp;
* 阿里云618：[点我领取](https://www.aliyun.com/minisite/goods?userCode=yclv4x57)，腾讯云618：[点我领取](https://curl.qcloud.com/6znbHFOM)&nbsp;&nbsp;

## - [HtxkEmsm升级版](https://github.com/hongmaple/octopus "HtxkEmsm升级版")
## 运行环境部署
  * 用git clone 项目到本地仓库
  * 创建Mysql数据库，数据库名：mapleemsplus，并执行sql文件夹下的mapleemsmplus.sql文件
  * 用ieda导入maven项目HtxkEmsm
  * 按需更改HtxkEmsm-admin模块下resources的application.yml    sqpringboot主配置文件
  ``` yaml
  ruoyi:
  # 名称
  name: RuoYi
  # 版本
  version: 4.1.0
  # 版权年份
  copyrightYear: 2019
  # 实例演示开关
  demoEnabled: true
  # 文件路径 示例（ Windows配置D:/HtxkEmsm/uploadPath，Linux配置 /home/HtxkEmsm/uploadPath）
  profile: D:/HtxkEmsm/uploadPath
  # 获取ip地址开关
  addressEnabled: true

# 开发环境配置
server:
  # 服务器的HTTP端口，默认为80
  port: 8888
  servlet:
    # 应用的访问路径
    context-path: /
  tomcat:
    # tomcat的URI编码
    uri-encoding: UTF-8
    # tomcat最大线程数，默认为200
    max-threads: 800
    # Tomcat启动初始化的线程数，默认值25
    min-spare-threads: 30
 
# 日志配置
logging:
  level:
    com.ruoyi: debug
    org.springframework: warn

# 用户配置
user:
  password:
    # 密码错误{maxRetryCount}次锁定10分钟
    maxRetryCount: 5

# Spring配置
spring:
  # 模板引擎
  thymeleaf:
    mode: HTML
    encoding: utf-8
    # 禁用缓存
    cache: false
  # 资源信息
  messages:
    # 国际化资源文件路径
    basename: static/i18n/messages
  jackson:
    time-zone: GMT+8
    date-format: yyyy-MM-dd HH:mm:ss
  profiles: 
    active: druid
  # 文件上传
  servlet:
     multipart:
       # 单个文件大小
       max-file-size:  10MB
       # 设置总上传的文件大小
       max-request-size:  20MB
  # 服务模块
  devtools:
    restart:
      # 热部署开关
      enabled: true

# MyBatis
mybatis:
    # 搜索指定包别名
    typeAliasesPackage: com.**.**.domain
    # 配置mapper的扫描，找到所有的mapper.xml映射文件
    mapperLocations: classpath*:mapper/**/*Mapper.xml
    # 加载全局的配置文件
    configLocation: classpath:mybatis/mybatis-config.xml

# PageHelper分页插件
pagehelper: 
  helperDialect: mysql
  reasonable: true
  supportMethodsArguments: true
  params: count=countSql 

# Shiro
shiro:
  user:
    # 登录地址
    loginUrl: /login
    # 权限认证失败地址
    unauthorizedUrl: /unauth
    # 首页地址
    indexUrl: /index
    # 验证码开关
    captchaEnabled: true
    # 验证码类型 math 数组计算 char 字符
    captchaType: math
  cookie:
    # 设置Cookie的域名 默认空，即当前访问的域名
    domain: 
    # 设置cookie的有效访问路径
    path: /
    # 设置HttpOnly属性
    httpOnly: true
    # 设置Cookie的过期时间，天为单位
    maxAge: 30
  session:
    # Session超时时间，-1代表永不过期（默认30分钟）
    expireTime: 30
    # 同步session到数据库的周期（默认1分钟）
    dbSyncPeriod: 1
    # 相隔多久检查一次session的有效性，默认就是10分钟
    validationInterval: 10
    # 同一个用户最大会话数，比如2的意思是同一个账号允许最多同时两个人登录（默认-1不限制）
    maxSession: -1
    # 踢出之前登录的/之后登录的用户，默认踢出之前登录的用户
    kickoutAfter: false

# 防止XSS攻击
xss: 
  # 过滤开关
  enabled: true
  # 排除链接（多个用逗号分隔）
  excludes: /system/notice/*
  # 匹配链接
  urlPatterns: /system/*,/monitor/*,/tool/*,/edusystem/*
  ```
* 修改HtxkEmsm-admin模块下resources的application-druid.yml  数据库配置文件

  ``` yaml
    # 主库数据源
            master:
                url: jdbc:mysql://localhost:3306/mapleemsmplus?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8             
                username: root
                password: root
  ```
 * 启动HtxkEmsm-admin模块下的com.htxk.MapleApplication中的main方法
 * 启动成功后,访问8888端口

## 联系我，提供部署定制服务
wx: mapleCx330   qq群：[![加入QQ群](https://img.shields.io/badge/628043364-blue.svg)](https://qm.qq.com/q/RuCfOyaOUm) 

## 开源不易，谢谢打赏
<table>
 <td>
   <td><img style="height: 300px;width: 300px" src="https://gitee.com/hongmaple/netdisk/raw/master/image/wxPay.jpg" alt=""/></td>
   <td><img style="height: 300px;width: 300px" src="https://gitee.com/hongmaple/netdisk/raw/master/image/zfb.jpg" alt=""/></td>
 </td>
</table>
