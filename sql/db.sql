-- 接口信息
create table if not exists yuapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0-关闭，1-开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '接口信息';

insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('傅修洁', '芜湖', 'www.gerardo-hoppe.co', '000', '111', 0, '222', 99732516, '2022-02-06 05:18:45', '2022-08-04 13:43:05', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('毛弘文', '牡丹江', 'www.zachary-lesch.org', '000', '111', 0, '222', 2219, '2022-10-22 13:42:11', '2022-03-19 17:04:05', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('赵鑫鹏', '渭南', 'www.emmanuel-hamill.org', '000', '111', 0, '222', 144118, '2022-04-26 22:51:43', '2022-05-20 03:37:27', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('侯昊焱', '本溪', 'www.chantal-sanford.io', '000', '111', 0, '222', 1909, '2022-03-06 21:54:03', '2022-05-22 12:59:35', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('段浩然', '广州', 'www.obdulia-hayes.biz', '000', '111', 0, '222', 4110118082, '2022-10-26 13:45:28', '2022-07-25 06:12:24', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('傅烨霖', '曲靖', 'www.mirna-davis.org', '000', '111', 0, '222', 40, '2022-07-06 06:28:05', '2022-10-30 12:49:52', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('梁思聪', '泉州', 'www.wm-price.biz', '000', '111', 0, '222', 1349, '2022-01-25 10:16:28', '2022-07-25 15:01:56', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('熊健柏', '南通', 'www.jimmy-brown.name', '000', '111', 0, '222', 3416, '2022-03-23 05:38:30', '2022-11-09 14:07:48', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('蔡熠彤', '南宁', 'www.francie-weissnat.name', '000', '111', 0, '222', 5680920, '2022-12-28 02:29:21', '2022-01-12 22:02:43', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('方晋鹏', '南充', 'www.juli-von.info', '000', '111', 0, '222', 7821503, '2022-05-30 17:40:31', '2022-04-27 18:36:00', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('谢鹏涛', '北京', 'www.juliet-homenick.name', '000', '111', 0, '222', 12, '2022-12-18 14:53:58', '2022-08-29 15:05:09', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('秦昊然', '宿迁', 'www.ariana-homenick.info', '000', '111', 0, '222', 85644607, '2022-09-09 17:27:05', '2022-06-27 19:31:55', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('邹立辉', '江阴', 'www.tyree-kihn.name', '000', '111', 0, '222', 1, '2022-11-15 10:16:49', '2022-02-20 21:18:15', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('江健柏', '蓬莱', 'www.frank-maggio.io', '000', '111', 0, '222', 3452, '2022-02-23 14:17:17', '2022-09-14 22:41:41', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('胡荣轩', '银川', 'www.laverne-collier.com', '000', '111', 0, '222', 6708825, '2022-06-14 08:41:10', '2022-03-09 11:57:43', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('廖浩然', '茂名', 'www.alfreda-kuvalis.io', '000', '111', 0, '222', 579, '2022-11-20 07:16:57', '2022-11-17 01:47:09', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('杨琪', '绵阳', 'www.rolando-kuhlman.info', '000', '111', 0, '222', 7038, '2022-08-13 01:23:01', '2022-10-19 15:53:56', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('胡笑愚', '九江', 'www.darcel-homenick.info', '000', '111', 0, '222', 91008, '2022-04-02 17:48:57', '2022-10-28 02:48:02', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('谭子默', '张家口', 'www.nella-gorczany.org', '000', '111', 0, '222', 65104, '2022-05-11 01:27:54', '2022-05-28 17:30:26', 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `createTime`, `updateTime`, `isDelete`) values ('姜炫明', '石家庄', 'www.mimi-stoltenberg.biz', '000', '111', 0, '222', 5710271967, '2022-01-08 10:04:05', '2022-07-16 13:23:54', 0);