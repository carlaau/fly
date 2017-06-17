/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017-06-06 11:44:22                          */
/*==============================================================*/


drop table if exists System_Department;

drop table if exists System_Limit_Set;

drop table if exists System_Menu;

drop table if exists System_Option_Data;

drop table if exists System_Option;

drop table if exists System_User_Limit;

drop table if exists System_User;

drop table if exists System_auto_id;

drop table if exists web_Category;

drop table if exists web_collection;

drop table if exists web_likes;

drop table if exists web_links;

drop table if exists web_post;

drop table if exists web_reply;

drop table if exists web_user;

/*==============================================================*/
/* Table: System_Department                                     */
/*==============================================================*/
create table System_Department
(
   SystemDepartmentId   int not null comment '部门ID',
   DepartmentName       varchar(50) comment '部门名称',
   ParentId             int comment '父级ID',
   SortId               int comment '排序',
   UseFlag              char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemDepartmentId)
);

alter table System_Department comment '系统部门';

/*==============================================================*/
/* Table: System_Limit_Set                                      */
/*==============================================================*/
create table System_Limit_Set
(
   SystemLimitSetId     int not null comment '权限设置ID',
   LimitTableName       varchar(50) comment '权限表名',
   LimtSetType          varchar(50) comment '权限类型',
   LimtSetTitle         varchar(50) comment '选项卡名称',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemLimitSetId)
);

alter table System_Limit_Set comment '系统权限设置';

/*==============================================================*/
/* Table: System_Menu                                           */
/*==============================================================*/
create table System_Menu
(
   SystemMenuId         int not null comment '菜单ID',
   MenuName             varchar(50) comment '菜单名称',
   ParentId             int comment '父级ID',
   Controller           varchar(50) comment '控制器',
   Action               varchar(50) comment '函数动作',
   ClassName            varchar(50) comment '样式名',
   SortId               int comment '排序',
   UseFlag              char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemMenuId)
);

alter table System_Menu comment '系统菜单';

/*==============================================================*/
/* Table: System_Option                                         */
/*==============================================================*/
create table System_Option
(
   SystemOptionId       int not null comment '自定义ID',
   OptionName           varchar(50) comment '自定义名称',
   FieldName            varchar(50) comment '字段名称',
   SortId               int comment '排序',
   UseFlag              char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemOptionId)
);

alter table System_Option comment '系统自定义';

/*==============================================================*/
/* Table: System_Option_Data                                    */
/*==============================================================*/
create table System_Option_Data
(
   SystemOptionDataId   int not null comment '自定义ID',
   SystemOptionId       int comment '自定义ID2',
   OptionValue          varchar(50) comment '实际值',
   OptionText           varchar(50) comment '显示值',
   OptionColor          varchar(50) comment '颜色',
   SortId               int comment '排序',
   UseFlag              char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemOptionDataId)
);

alter table System_Option_Data comment '系统自定义数据';

/*==============================================================*/
/* Table: System_User                                           */
/*==============================================================*/
create table System_User
(
   SystemUserId         int not null comment '用户ID',
   SystemUserName       varchar(50) comment '用户姓名',
   LoginAccount         varchar(50) comment '登录帐号',
   LoginPassword        varchar(50) comment '登录密码',
   SystemDepartmentId   int comment '部门ID',
   UseFlag              char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemUserId)
);

alter table System_User comment '系统用户';

/*==============================================================*/
/* Table: System_User_Limit                                     */
/*==============================================================*/
create table System_User_Limit
(
   SystemUserLimitId    int not null comment '权限ID',
   SystemUserId         int comment '用户ID',
   LimitTableId         int comment '权限表ID',
   LimitTableName       varchar(50) comment '权限表名',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (SystemUserLimitId)
);

alter table System_User_Limit comment '系统权限';

/*==============================================================*/
/* Table: System_auto_id                                        */
/*==============================================================*/
create table System_auto_id
(
   idName               varchar(50) comment '表名',
   id                   bigint comment '主键值'
);

alter table System_auto_id comment '主键管理';

/*==============================================================*/
/* Table: web_Category                                          */
/*==============================================================*/
create table web_Category
(
   CategoryId           int not null comment '分类ID',
   CategoryName         varchar(50) comment '分类名称',
   ParentId             int comment '父级ID',
   SortId               int comment '排序',
   UseFlag              char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (CategoryId)
);

alter table web_Category comment '贴子分类';

/*==============================================================*/
/* Table: web_collection                                        */
/*==============================================================*/
create table web_collection
(
   CollectionId         bigint not null comment '收藏ID',
   PostId               bigint comment '贴子ID',
   UserId               int comment '用户ID',
   AddTime              datetime comment '收藏时间',
   primary key (CollectionId)
);

alter table web_collection comment '收藏表';

/*==============================================================*/
/* Table: web_likes                                             */
/*==============================================================*/
create table web_likes
(
   LikeId               bigint not null comment '点赞ID',
   PostId               bigint comment '贴子ID',
   ReplyId              bigint comment '回复ID',
   UserId               int comment '用户ID',
   LikeTime             datetime comment '点赞时间',
   primary key (LikeId)
);

alter table web_likes comment '点赞表';

/*==============================================================*/
/* Table: web_links                                             */
/*==============================================================*/
create table web_links
(
   LinkId               int not null comment '外链ID',
   LinkName             varchar(50) comment '外链名称',
   LinkUrl              varchar(100) comment 'URL链接',
   SortId               int comment '排序',
   LinkStatus           char(1) comment '状态',
   TrUser               varchar(50) comment '修改人',
   TrTime               datetime comment '修改时间',
   CrUser               varchar(50) comment '创建人',
   CrTime               datetime comment '创建时间',
   primary key (LinkId)
);

alter table web_links comment '外链表';

/*==============================================================*/
/* Table: web_post                                              */
/*==============================================================*/
create table web_post
(
   PostId               bigint not null comment '贴子ID',
   PostTitle            varchar(100) comment '贴子标题',
   PostContent          text comment '帖子内容',
   CategoryId           int comment '分类ID',
   UserId               int comment '用户ID',
   IsTop                char(1) comment '是否置顶 0=否,1=是',
   IsFine               char(1) comment '是否精贴 0=否,1=是',
   IsAdopt              char(1) comment '是否采纳 0=否,1=是',
   ViewCount            int comment '浏览总数',
   ReplyCount           int comment '回复总数',
   LikeCount            int comment '点赞数',
   SortId               int comment '排序',
   PostStatus           char(1) comment '贴子状态 0=禁用,1=启用',
   UpdateTime           datetime comment '修改时间',
   PostTime             datetime comment '发贴时间',
   ReplyTime            datetime comment '回复时间',
   LikeTime             datetime comment '点赞时间',
   primary key (PostId)
);

alter table web_post comment '帖子表';

/*==============================================================*/
/* Index: IX_IsTop_PostTime                                     */
/*==============================================================*/
create index IX_IsTop_PostTime on web_post
(
   IsTop,
   PostTime
);

/*==============================================================*/
/* Table: web_reply                                             */
/*==============================================================*/
create table web_reply
(
   ReplyId              bigint not null comment '回复ID',
   ReplyContent         text comment '回复内容',
   PostId               bigint comment '贴子ID',
   UserId               int comment '用户ID',
   ToReplyId            bigint comment '被回复ID',
   LikeCount            int comment '点赞数',
   IsAdopt              char(1) comment '是否采纳 0=否,1=是',
   ReplyStatus          char(1) comment '回复状态 0=禁用,1=启用',
   UpdateTime           datetime comment '修改时间',
   ReplyTime            datetime comment '回复时间',
   primary key (ReplyId)
);

alter table web_reply comment '帖子回复表';

/*==============================================================*/
/* Table: web_user                                              */
/*==============================================================*/
create table web_user
(
   UserId               int not null comment '用户ID',
   Email                varchar(50) comment 'Email',
   NickName             varchar(50) comment '呢称',
   Mobile               varchar(11) comment '手机号',
   Password             varchar(50) comment '密码',
   Gender               varchar(10) comment '性别',
   AvatarUrl            varchar(150) comment '头像',
   UserSign             varchar(200) comment '个人签名',
   Country              varchar(50) comment '国家',
   Province             varchar(50) comment '省份',
   City                 varchar(50) comment '城市',
   District             varchar(50) comment '地区',
   Address              varchar(150) comment '地址',
   EmailStatus          char(1) comment '邮件验证',
   MobileStatus         char(1) comment '手机验证',
   UserStatus           char(1) comment '用户状态',
   Points               int comment '用户积分',
   PostCount            int comment '发贴总数',
   ReplyCount           int comment '回复总数',
   IsAdmin              char(1) comment '是否管理员',
   LoginCount           int comment '登录次数',
   LoginTime            datetime comment '最近登录时间',
   OnlineTime           datetime comment '最近在线时间',
   UpdateTime           datetime comment '修改时间',
   RegisterTime         datetime comment '注册时间',
   LoginIP              varchar(20) comment '最近登录IP',
   RegisterIP           varchar(20) comment '注册IP',
   primary key (UserId)
);

alter table web_user comment '用户表';

/*==============================================================*/
/* Index: IX_Email                                              */
/*==============================================================*/
create unique index IX_Email on web_user
(
   Email
);

/*==============================================================*/
/* Index: IX_NickName                                           */
/*==============================================================*/
create unique index IX_NickName on web_user
(
   NickName
);

/*==============================================================*/
/* Index: IX_Mobile                                             */
/*==============================================================*/
create unique index IX_Mobile on web_user
(
   Mobile
);

alter table System_Option_Data add constraint FK_R2 foreign key (SystemOptionId)
      references System_Option (SystemOptionId);

alter table System_User_Limit add constraint FK_R1 foreign key (SystemUserId)
      references System_User (SystemUserId);

DROP procedure IF EXISTS `sp_get_auto_id`;

/* 以下存储过程只支持mysql5.5以上版本,如果是5.2版本,请删除 DELIMITER 和 $$ 再执行        */
DELIMITER $$
CREATE PROCEDURE `sp_get_auto_id` (idname_in varchar(20))
BEGIN
 declare oldid bigint;
    declare id_out bigint;
	start transaction;
	select id into oldid from system_auto_id where idname=idname_in for update;
	if oldid is NULL then
		insert into system_auto_id(idname,id) value(idname_in, 1);
		set id_out=1;
	else
		update system_auto_id set id=id+1 where idname=idname_in;
		set id_out=oldid+1;
	end if;
    select id_out as 'id'; 
	commit;
END$$

DELIMITER ;