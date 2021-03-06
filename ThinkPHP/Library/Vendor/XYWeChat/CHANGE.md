[TOC]

##更新日志

####v1.0.0 beta
> 2015-04-05 23:30:55 星期六

预览版：
 - 基本功能完成；
 - 支持绝大多数微信公众平台功能

####v1.0.0 releases
> 2015-04-11 23:31:20 星期六

发布v1.0.0正式版。

主要更新：

 - [修复] [主动发送客服消息] 中文编码问题；
 - 纠正版本号问题；

####v1.0.1
>2015年4月12日 22:09:48

发布v1.0.0正式版。

 - [修正] [README.md] 错别字和格式；
 - [新增] `XYWeChat/AccessToken` 添加 `getAllBackIP()` 获取微信服务器IP地址；
 - [新增] `XYWeChat/Wechat` 添加 `run`方法 新增 `$request` 参数 当为`true`时直接返回解析后的数组；
 - [清除] `XYWeChat/Wechat` 类 清除 `checkSignature()` 遗留方法；
 - [改进] 自动化配置接口时的确认事件

####v1.0.2
>2015年4月15日18:01:47

 - [新增方法] `XYWeChat/Menu` 添加 `getMenuAllInfo()` 获取自定义菜单（本接口无论公众号的接口是如何设置的，都能查询到接口）
 - [新增类] `XYWeChat/GetCurrent` 添加 常用获取类(getcurrent.class.php)，添加 `getAutoreply()` 方法用于获取 `获取自动回复规则`
 - [新增模块] 新增`XYWeChat\ShakeAround` 模块，用来管理 `摇一摇周边`
 - [新增类] `XYWeChat\ShakeAround` 添加 设备管理类`Device`(page.class.php)，页面管理类`Page`(page.class.php)
 - [新增方法] `XYWeChat\ShakeAround\Device` 添加 申请设备ID `applyDevice()`， 编辑设备信息 `updateDevice()`， 配置设备与门店的关联关系 `bindLocation()`， 获取所有设备列表 `getDeviceList()`， 查询指定设备 `getDeviceInfo()` 等方法
 - [新增方法] `XYWeChat\ShakeAround\Page` 添加 新增页面 `addPage()`， 编辑页面信息 `updatePage()`， 查询页面列表 `getPageList()`， 查询指定页面 `getPageInfo()`， 删除页面 `deletePage()` 等方法
 - [新增类] `XYWeChat\ShakeAround` 添加 摇一摇页面素材管理类`Material`(material.class.php)
 - [新增方法] `XYWeChat\ShakeAround\Material` 添加 上传图片 `upload()`方法
 - [新增方法] `XYWeChat\ShakeAround\Page` 添加 设备与页面的关联方法 `bindPage()`
 - [修正方法] 修正 `XYWeChat\ShakeAround\Material` 类 `upload()` 方法的参列
 - [新增类] `XYWeChat\ShakeAround` 添加 摇一摇用户类 `User`(user.class.php)
 - [新增方法] `XYWeChat\ShakeAround\User` 添加 获取摇周边的设备及用户信息 `getShakeInfo()`
 - [新增类] `XYWeChat\Statistics` 添加 数据统计 `Statistics`(statistics.class.php)
 - [新增方法] `XYWeChat\ShakeAround\Statistics` 添加 以设备为维度的数据统计接口 `device()` ,以页面为维度的数据统计接口 `page()`

>2015年5月2日16:42:35

 - [新增消息类型] `XYWeChat\WechatRequest` 新增小视屏消息类型
 - [修复] 修复客服消息中的中文编码问题
 - [新增] 高级群发接口，新增预览
 - [新增] 根据分组群发 新增参数is_to_all，使用is_to_all为true且成功群发，会使得此次群发进入历史消息列表。
 - [新增] 新增 客服帐号管理-获取所有客服账号列表/添加客服账号/修改客服账号/删除客服账号/设置客服头像

>2015年5月8日12:59:52

 - [新增] 高级群发预览 高级群发接口增加发送到指定用户，预览
 - [修复] 群发图文内容 修复群发图文，实现普通html代码
 
>2015年5月18日23:18:10

 -[修正] 获取菜单注释错误
 -[新增] 新增`JsApi`JsApi函数类类 新增获取JsApiTicket方法 `getJsApiTicket` 新增获取JsApi中签名后数据 `getSignPackage`