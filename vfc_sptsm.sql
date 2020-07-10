/*
 Navicat Premium Data Transfer

 Source Server         : 106
 Source Server Type    : MySQL
 Source Server Version : 50633
 Source Host           : 172.16.80.106:3306
 Source Schema         : vfc_sptsm

 Target Server Type    : MySQL
 Target Server Version : 50633
 File Encoding         : 65001

 Date: 10/07/2020 10:50:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_check_blending_log
-- ----------------------------
DROP TABLE IF EXISTS `account_check_blending_log`;
CREATE TABLE `account_check_blending_log`  (
  `blending_serial_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//勾兑表流水号',
  `vp_merchant_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//商户代码',
  `vp_card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡片code',
  `vp_firm_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//厂商码',
  `vp_trade_date` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易日期',
  `vp_business_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务代码,关联tm_account_company表',
  `vp_trade_type_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易类型码 201:售卡;202:充值;203:退卡;204 ALL;',
  `vp_card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡卡号',
  `vp_phy_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡物理卡号',
  `vp_amount` decimal(15, 0) DEFAULT NULL COMMENT '//金额',
  `vp_serial_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//终端交易序列号，对应我们的请求流水号',
  `vp_trade_time` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方交易时间',
  `vp_city_code` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//城市代码',
  `vp_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台订单号',
  `vp_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台订单状态',
  `vp_organization_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//平台机构代码',
  `vp_trade_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方交易类型',
  `vp_order_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vp_resp_serial_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台响应流水号（系统参照号）',
  `vp_data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//是否是半条记录 00成功 01半条 14-无响应',
  `dp_dif_fee` decimal(15, 0) DEFAULT NULL COMMENT '//交易差额',
  `dp_remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//备注',
  `dp_serial_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台请求流水号（终端交易序列号）',
  `dp_card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dp_card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台卡号',
  `dp_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方订单号',
  `dp_phy_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台物理卡号',
  `dp_trade_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台交易日期',
  `dp_trade_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台交易时间',
  `dp_merchant_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方商户代码',
  `dp_amount` decimal(15, 0) DEFAULT NULL COMMENT '//对方金额',
  `dp_city_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方城市代码',
  `dp_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台订单状态',
  `dp_organization_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台机构代码',
  `dp_trade_type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//交易类型码 201:售卡;202:充值;203:退卡',
  `dp_trade_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台方交易类型',
  `dp_order_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台订单状态',
  `dp_txn_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//命令字类型',
  `dp_business_code` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务代码,关联tm_account_company表',
  `dp_resp_serial_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台响应流水号（系统参照号）',
  `dp_data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方是否是半条记录 00成功 01半条 14-无响应',
  `card_sub_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡子类型',
  `card_cnt` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡计数器',
  `befamt` decimal(12, 0) DEFAULT NULL COMMENT '//交易前金额',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易tac',
  `ASN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identify` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//手机唯一标识',
  `terminal_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易终端号',
  `account_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账日期',
  `result_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对账结果码 //00对账平 //01对账不平 ',
  `result_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对账结果描述',
  `error_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方错误码',
  `error_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方错误描述',
  `create_time` datetime(0) DEFAULT NULL COMMENT '//记录创建时间-',
  `update_time` datetime(0) DEFAULT NULL COMMENT '//记录更新时间',
  `vp_trans_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//请求发起日期 (主机)',
  `vp_trans_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//请求发起时间 (主机)'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账对比数据 对账日志 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for account_check_blending_log_h
-- ----------------------------
DROP TABLE IF EXISTS `account_check_blending_log_h`;
CREATE TABLE `account_check_blending_log_h`  (
  `blending_serial_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//勾兑表流水号',
  `vp_merchant_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//商户代码',
  `vp_card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡片code',
  `vp_firm_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//厂商码',
  `vp_trade_date` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易日期',
  `vp_business_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务代码,关联tm_account_company表',
  `vp_trade_type_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易类型码 201:售卡;202:充值;203:退卡;204 ALL;',
  `vp_card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡卡号',
  `vp_phy_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡物理卡号',
  `vp_amount` decimal(15, 0) DEFAULT NULL COMMENT '//金额',
  `vp_serial_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//终端交易序列号，对应我们的请求流水号',
  `vp_trade_time` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方交易时间',
  `vp_city_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//城市代码',
  `vp_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台订单号',
  `vp_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台订单状态',
  `vp_organization_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//平台机构代码',
  `vp_trade_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方交易类型',
  `vp_order_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vp_resp_serial_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台响应流水号（系统参照号）',
  `vp_data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//是否是半条记录 00成功 01半条 14-无响应',
  `dp_dif_fee` decimal(15, 0) DEFAULT NULL COMMENT '//交易差额',
  `dp_remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//备注',
  `dp_serial_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台请求流水号（终端交易序列号）',
  `dp_card_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dp_card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台卡号',
  `dp_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方订单号',
  `dp_phy_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台物理卡号',
  `dp_trade_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台交易日期',
  `dp_trade_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台交易时间',
  `dp_merchant_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方商户代码',
  `dp_amount` decimal(15, 0) DEFAULT NULL COMMENT '//对方金额',
  `dp_city_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方城市代码',
  `dp_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台订单状态',
  `dp_organization_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台机构代码',
  `dp_trade_type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//交易类型码 201:售卡;202:充值;203:退卡',
  `dp_trade_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方平台方交易类型',
  `dp_order_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台订单状态',
  `dp_txn_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//命令字类型',
  `dp_business_code` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务代码,关联tm_account_company表',
  `dp_resp_serial_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台响应流水号（系统参照号）',
  `dp_data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对方是否是半条记录 00成功 01半条 14-无响应',
  `card_sub_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡子类型',
  `card_cnt` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡计数器',
  `befamt` decimal(12, 0) DEFAULT NULL COMMENT '//交易前金额',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易tac',
  `ASN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identify` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//手机唯一标识',
  `terminal_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易终端号',
  `account_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账日期',
  `result_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对账结果码 //00对账平 //01对账不平 ',
  `result_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对账结果描述',
  `error_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方错误码',
  `error_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//平台方错误描述',
  `create_time` datetime(0) DEFAULT NULL COMMENT '//记录创建时间-',
  `update_time` datetime(0) DEFAULT NULL COMMENT '//记录更新时间',
  `vp_trans_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//请求发起日期 (主机)',
  `vp_trans_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//请求发起时间 (主机)'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账对比数据备份。重复对账对账日志数据。重复对账时，会删除对账日志表的数据，同事把这些对账日志数据保存到这个表中' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for account_check_yikatong
-- ----------------------------
DROP TABLE IF EXISTS `account_check_yikatong`;
CREATE TABLE `account_check_yikatong`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '//主键id',
  `type` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//1代表充值，2代表开卡，3代表删卡',
  `trade_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易码 5002',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡卡号',
  `phy_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//票卡物理卡号',
  `amount` decimal(15, 0) DEFAULT NULL COMMENT '//金额，看type类型，充值金额，开卡金额，退卡金额',
  `sam_water` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//终端交易序列号，对应我们的请求流水号',
  `dif_fee` decimal(15, 0) DEFAULT NULL COMMENT '//交易差额',
  `bal_result` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对账结果',
  `recomment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//备注',
  `createtime` datetime(5) DEFAULT NULL COMMENT ' //对账数据插入日期',
  `water_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//系统参照号',
  `data_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//哪一天的对账数据',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 479 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for account_check_yikatong_log
-- ----------------------------
DROP TABLE IF EXISTS `account_check_yikatong_log`;
CREATE TABLE `account_check_yikatong_log`  (
  `createtime` datetime(0) DEFAULT NULL,
  `total_row` int(10) DEFAULT NULL,
  `success_row` int(10) DEFAULT NULL,
  `fail_row` int(10) DEFAULT NULL,
  `file_url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `op_userid` bigint(5) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '//主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动代码',
  `activity_name` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动名称',
  `priority` int(10) NOT NULL DEFAULT 0 COMMENT '活动优先级 值越大优先级越高',
  `activity_type` int(2) NOT NULL COMMENT '活动类型(0：减免 1：满减 2:百分比（只在测试环境用） 3：开卡+充值时，根据充值金额优惠)',
  `order_type` int(2) NOT NULL COMMENT '适用的订单类型(1:充值活动 2：开卡+充值活动 0:开卡)',
  `discount_num` int(10) DEFAULT NULL COMMENT '限制参与名额数 为空表示没有名额限制',
  `discount_value1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '减免金额(分)。或者满减的减金额(分)。或者充值百分比(0-100)[开卡+充值或者充值] 或者开卡百分比(0-100)[开卡] order_type=3时，0表示减免开卡费',
  `discount_value2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '满减的基数(分)。或者开卡百分比(0-100)[开卡+充值]',
  `start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动开始时间',
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动结束时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动状态 00新增 01上线 10进行中 20已结束 21下线',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 238 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_b
-- ----------------------------
DROP TABLE IF EXISTS `activity_b`;
CREATE TABLE `activity_b`  (
  `id` int(18) NOT NULL DEFAULT 0 COMMENT '主键',
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动代码',
  `activity_name` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动名称',
  `priority` int(10) NOT NULL DEFAULT 0 COMMENT '活动优先级，数值越大，优先级越高 当机型有多个活动正在进行时，优先级最高的活动生效',
  `activity_type` int(2) NOT NULL COMMENT '活动类型(0：减免 1：满减 2:百分比（只在测试环境用）) 3：开卡+充值时，根据充值金额优惠',
  `order_type` int(2) NOT NULL COMMENT '适用的订单类型(1:充值活动 2：开卡+充值活动 0:开卡)',
  `discount_num` int(10) DEFAULT NULL COMMENT '限制参与名额数 为空表示没有名额限制',
  `discount_value1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '减免金额(分)。或者满减的减金额(分)。或者充值百分比(0-100)[开卡+充值或者充值] 或者开卡百分比(0-100)[开卡]',
  `discount_value2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '满减的基数(分)。或者开卡百分比(0-100)[开卡+充值]',
  `start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动开始时间',
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动结束时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动状态 00新增 01上线 10进行中 20已结束 21下线',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_black_list
-- ----------------------------
DROP TABLE IF EXISTS `activity_black_list`;
CREATE TABLE `activity_black_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。 多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 521 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动黑名单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_black_list_b
-- ----------------------------
DROP TABLE IF EXISTS `activity_black_list_b`;
CREATE TABLE `activity_black_list_b`  (
  `id` int(10) NOT NULL DEFAULT 0,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。 多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_device_model
-- ----------------------------
DROP TABLE IF EXISTS `activity_device_model`;
CREATE TABLE `activity_device_model`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动代码 tm_activity.activity_code',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码 tm_card.cardcode',
  `firm_id` int(10) DEFAULT NULL COMMENT '厂商id tmm_firm.id',
  `model_id` int(10) DEFAULT NULL COMMENT '机型id tmm_model.id -1表示所有机型',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '型号 tmm_device_model.device_model  -1表示所有型号',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特殊条件1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特殊条件2',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tm_activity_device_model_idx1`(`card_code`, `firm_id`, `model_id`, `device_model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79445 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_device_model_b
-- ----------------------------
DROP TABLE IF EXISTS `activity_device_model_b`;
CREATE TABLE `activity_device_model_b`  (
  `id` int(10) NOT NULL DEFAULT 0,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动代码 tm_activity.activity_code',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码 tm_card.cardcode',
  `firm_id` int(10) DEFAULT NULL COMMENT '厂商id tmm_firm.id',
  `model_id` int(10) DEFAULT NULL COMMENT '机型id tmm_model.id -1表示所有机型',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '型号 tmm_device_model.device_model  -1表示所有型号',
  `reserve1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特殊条件1',
  `reserve2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特殊条件2',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_white_list
-- ----------------------------
DROP TABLE IF EXISTS `activity_white_list`;
CREATE TABLE `activity_white_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '白名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。 多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 291 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动白名单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for activity_white_list_b
-- ----------------------------
DROP TABLE IF EXISTS `activity_white_list_b`;
CREATE TABLE `activity_white_list_b`  (
  `id` int(10) NOT NULL DEFAULT 0,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '白名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。 多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for app_format_refund
-- ----------------------------
DROP TABLE IF EXISTS `app_format_refund`;
CREATE TABLE `app_format_refund`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片码',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `refund_ticket_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退款票据',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发票状态 1:已退款',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no`(`refund_ticket_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 406 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`  (
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，自定义ID。 唯一',
  `application_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称。唯一',
  `instance_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sd_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `application_status` int(1) DEFAULT NULL COMMENT '应用状态',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用详细说明',
  `create_user` int(11) DEFAULT NULL COMMENT '创建用户',
  `update_user` int(11) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`application_id`) USING BTREE,
  UNIQUE INDEX `application_name_unique_idx`(`application_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用表。总表。配置公共信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for application_cap
-- ----------------------------
DROP TABLE IF EXISTS `application_cap`;
CREATE TABLE `application_cap`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cap的文件名称',
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，对应application表中的application_id',
  `package_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cap文件的package ID',
  `load_order` tinyint(2) NOT NULL COMMENT 'cap文件加载顺序。数字越小先加载。',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL COMMENT '创建用户',
  `update_user` int(11) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `cap_content` blob,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `file_name`(`file_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cap文件的信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for application_install_param
-- ----------------------------
DROP TABLE IF EXISTS `application_install_param`;
CREATE TABLE `application_install_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安装参数名称',
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，对应application表中的application_id',
  `application_instance_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例表的id，application_instance的id',
  `se_strategy_id` int(11) NOT NULL COMMENT 'se_strategy表的id',
  `install_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例安装的类型（InstallForInstall、InstallForUpdate、InstallForAts）',
  `install_parameter` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安装参数',
  `app_privilege` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'app权限参数',
  `create_user` int(11) DEFAULT NULL COMMENT '创建用户',
  `modify_user` int(11) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1924 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '安装参数表。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for application_instance
-- ----------------------------
DROP TABLE IF EXISTS `application_instance`;
CREATE TABLE `application_instance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称。例如青岛电子现金应用',
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，对应application表中的application_id',
  `cap_pkg_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例相关的cap文件。通过管理可以找到package_id',
  `default_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用实例的默认AID',
  `instance_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用实例的AID',
  `install_order` tinyint(2) NOT NULL COMMENT '实例安装顺序。数值小的先安装',
  `head` tinyint(2) NOT NULL DEFAULT 2 COMMENT '应用组。生成registryUpdate的时候使用 0：Member；1：Head；2：Other',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL COMMENT '创建用户',
  `modify_user` int(11) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实例表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auto_recharge_pay
-- ----------------------------
DROP TABLE IF EXISTS `auto_recharge_pay`;
CREATE TABLE `auto_recharge_pay`  (
  `trade_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '扣款订单号 商户订单号。对应微信的out_trade_no 主键',
  `contract_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '签约协议号 签约请求id 华为调用预签约时生成。创建订单时转入表示自动充值的创建订单',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号 订单表的订单号 不能重复 为空表示有申请扣款，但创建订单失败',
  `status` int(2) NOT NULL COMMENT '状态 1：代扣申请中 2：代扣申请成功 3：代扣申请请求失败 4：微信异步通知成功并同步订单状态（同步成功还要看trade_state） 5：微信异步通知失败 6:已上报订单给华为 7：上报订单给华为失败 33:转入退款 30:退款成功',
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'appid是商户在微信申请公众号或移动应用成功后分配的帐号ID',
  `total_fee` bigint(20) DEFAULT NULL COMMENT '代扣金额。分。 微信异步通知时，必须验证金额，防止资金损失',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码',
  `error_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误码',
  `error_code_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误描述',
  `trade_state` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易状态 微信返回 SUCCESS—支付成功 REFUND—转入退款 NOTPAY—未支付 CLOSED—已关闭 ACCEPT—已接收，等待扣款 PAY_FAIL--支付失败(其他原因，如银行返回失败)',
  `apply_finish_time` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '申请代扣完成时间。 格式为yyyyMMddHHmmss',
  `time_end` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付完成时间，微信返回。格式为yyyyMMddHHmmss',
  `transaction_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信支付订单号	transaction_id.',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `contract_type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`trade_no`) USING BTREE,
  UNIQUE INDEX `arporder_no`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自动充值代扣表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for card_add_detail
-- ----------------------------
DROP TABLE IF EXISTS `card_add_detail`;
CREATE TABLE `card_add_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片码',
  `card_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片名称',
  `city_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号(批次号)',
  `card_begine_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '起始卡号',
  `quantity` int(10) DEFAULT NULL COMMENT '添加数量',
  `create_time` date DEFAULT NULL COMMENT '添加时间',
  `update_time` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for card_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `card_auth_code`;
CREATE TABLE `card_auth_code`  (
  `auth_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证码',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市编号',
  `card_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `se_uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态001:初始;003:已锁定;005:已使用',
  `version` int(10) DEFAULT 0 COMMENT '版本号',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`auth_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for card_code_dict
-- ----------------------------
DROP TABLE IF EXISTS `card_code_dict`;
CREATE TABLE `card_code_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_external_code` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片外部编码（用于对接其他系统中的卡片唯一标识）',
  `process_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流程标识,指定处理流程',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片编码,sp定义',
  `source_chnl` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '调用方代码,即caller',
  `card_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片编码描述，用于创建订单时显示',
  `card_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片名称',
  `server_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '服务器地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_card_external_code`(`card_external_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-卡片类型字典表] 卡片类型字典表-card_code_dict' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for card_maintain
-- ----------------------------
DROP TABLE IF EXISTS `card_maintain`;
CREATE TABLE `card_maintain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  `se_uid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `physic_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号或UID或ATS等通卡需要数据',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片状态 005:使用中;006:已删卡',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  `city_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_cardno`(`card_no`, `card_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7660 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for card_oper_record
-- ----------------------------
DROP TABLE IF EXISTS `card_oper_record`;
CREATE TABLE `card_oper_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片名称',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `physic_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号',
  `se_uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `op_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作类型 201:售卡;202:充值;203:退卡',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `source_chnl` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单来源渠道',
  `imie` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机串号',
  `op_amount` int(11) DEFAULT NULL COMMENT '金额(分)',
  `op_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `card_no_index`(`card_no`) USING BTREE,
  INDEX `index_op_time`(`op_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31642 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for city_terminal_rel
-- ----------------------------
DROP TABLE IF EXISTS `city_terminal_rel`;
CREATE TABLE `city_terminal_rel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡商标识',
  `city_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码(4位)',
  `phone_manufacturer` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商',
  `unit_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '营运单位代码',
  `outlet_no` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网点编码',
  `terminal_no` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端编码',
  `operator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作员',
  `op_pass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码(虚拟账户无需使用)',
  `BATCH_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '批次号',
  `HTTP_URL` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'HTTP请求URL',
  `SOCKET_IP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'socket请求ip',
  `SOUCKET_PORT` decimal(5, 0) DEFAULT NULL COMMENT 'socket请求端口',
  `TERM_RETRY_TIMES` decimal(3, 0) DEFAULT NULL COMMENT '签到重试次数',
  `LAST_SIGN_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后一次签到成功时间',
  `ACCESS_TOKEN_RECH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值访问令牌',
  `ACCESS_TOKEN_AIR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '空开访问令牌',
  `MAC_KEY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Mac秘钥',
  `PIN_KEY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Pin秘钥',
  `MIN_KEY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主密钥',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for consume_refund_record
-- ----------------------------
DROP TABLE IF EXISTS `consume_refund_record`;
CREATE TABLE `consume_refund_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  `record_chnl` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录来源',
  `sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备SN号',
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消费城市',
  `circuit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消费线路',
  `user_account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账号',
  `refund_amount` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款金额(分)',
  `refund_account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款账号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0 : 未退款 1 : 已退款(私人账户) 2: 已退款(公司账户) 3: 无法退款 4:退款中 5 退款失败',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系方式',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `feed_back_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户反馈时间',
  `create_tm` datetime(0) DEFAULT NULL COMMENT '导入时间',
  `update_tm` datetime(0) DEFAULT NULL,
  `transfer_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '线下转账方式 TRANSFER_ALI(支付宝)',
  `pay_date` datetime(0) DEFAULT NULL COMMENT '支付时间',
  `query_fail_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '查询失败原因',
  `fail_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失败原因',
  `transfer_order` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '转账订单号',
  `oth_transfer_order` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付渠道方转账订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消费退款表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cplc_client_version
-- ----------------------------
DROP TABLE IF EXISTS `cplc_client_version`;
CREATE TABLE `cplc_client_version`  (
  `cplc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机唯一标识',
  `client_version` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户端版本',
  `seid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`cplc`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for device_model_dict
-- ----------------------------
DROP TABLE IF EXISTS `device_model_dict`;
CREATE TABLE `device_model_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_model` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机型号（子型号，如华为V8下面有2款子机型：KNT-AL10、KNT-AL20）',
  `model_code` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主机型编码（如华为V8）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_device_code`(`device_model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-手机型号字典表] 手机型号字典表-device_model_dict' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for finance_statistic_total
-- ----------------------------
DROP TABLE IF EXISTS `finance_statistic_total`;
CREATE TABLE `finance_statistic_total`  (
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `statistic_date` date DEFAULT NULL,
  `op_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `open_card_total` int(255) DEFAULT NULL,
  `activity_open_card_num` int(11) DEFAULT NULL,
  `activity_open_card_amount` decimal(12, 0) DEFAULT NULL,
  `normal_open_card_num` int(11) DEFAULT NULL,
  `normal_open_card_amount` decimal(12, 0) DEFAULT NULL,
  `unissued_open_card_invoice_number` int(11) DEFAULT NULL,
  `unissued_open_card_invoice_amount` decimal(12, 0) DEFAULT NULL,
  `card_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fixpack_rule
-- ----------------------------
DROP TABLE IF EXISTS `fixpack_rule`;
CREATE TABLE `fixpack_rule`  (
  `MSG_RULE_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报文规则代码',
  `FLD_IDX` decimal(4, 0) NOT NULL DEFAULT 0 COMMENT '域索引',
  `FLD_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域名称',
  `FLD_DSP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域描述',
  `FLD_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '报文域类型 00:定长字段,01:循环记录,02:变长字段,03:条件选择字段,04:分隔符列名数据(list),05:分隔符记录数据(map),06:无条件跳转',
  `DEFAULT_VAL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域默认值',
  `FLD_SEP_CHAR` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域分隔符',
  `FLD_LEN` decimal(4, 0) DEFAULT NULL COMMENT '域长度',
  `FLD_LEN_SIZE` decimal(4, 0) DEFAULT NULL COMMENT '域长度字节数',
  `FLD_LEN_ENC_RULE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域长度编码规则 0:ASCII,1:BCD,2:HEX,3:BINARY',
  `FLD_ENCODE_RULE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域编码规则 0:ASCII,1:BCD,2:HEX,3:BINARY',
  `FLD_DATA_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域数据类型',
  `SPEC_USE_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特殊用法标识 0:无特殊用法,1:长度域,2:MAC计算域,3:mac域',
  `FLD_FILL_MODE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字符串填充方式 0:不填充,1:前补,2:后补',
  `FLD_FILL_CHAR` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字符串填充字符',
  PRIMARY KEY (`MSG_RULE_CD`, `FLD_IDX`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[报文配置] 固定报文域组包规则 - FIXPACK_RULE' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for interface_black_list
-- ----------------------------
DROP TABLE IF EXISTS `interface_black_list`;
CREATE TABLE `interface_black_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `interface_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。 多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 397 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动黑名单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for interface_black_list_b
-- ----------------------------
DROP TABLE IF EXISTS `interface_black_list_b`;
CREATE TABLE `interface_black_list_b`  (
  `id` int(10) NOT NULL DEFAULT 0,
  `interface_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。 多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for interface_white_list
-- ----------------------------
DROP TABLE IF EXISTS `interface_white_list`;
CREATE TABLE `interface_white_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `interface_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '白名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务接口白名单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for interface_white_list_b
-- ----------------------------
DROP TABLE IF EXISTS `interface_white_list_b`;
CREATE TABLE `interface_white_list_b`  (
  `id` int(10) NOT NULL DEFAULT 0,
  `interface_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口代码',
  `batch_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '批次号。每次上传有一个唯一批次号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '白名单名称',
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配名称。多个值用逗号分隔',
  `match_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配值',
  `status` tinyint(2) NOT NULL COMMENT '状态 1:启用；0：关闭',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrate_card_record
-- ----------------------------
DROP TABLE IF EXISTS `migrate_card_record`;
CREATE TABLE `migrate_card_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片城市代码',
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `new_card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '迁移后的卡号',
  `remove_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '移除订单号',
  `restore_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '恢复订单号',
  `old_seid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原手机SEID',
  `new_seid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '新手机SEID',
  `old_device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原手机型号',
  `new_device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '新手机型号',
  `phone_manufacturer` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商',
  `balance` decimal(12, 0) DEFAULT NULL COMMENT '迁入余额(分)',
  `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `migrate_time` datetime(0) DEFAULT NULL COMMENT '迁卡时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1856 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrate_data_backup
-- ----------------------------
DROP TABLE IF EXISTS `migrate_data_backup`;
CREATE TABLE `migrate_data_backup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '移除订单号',
  `seid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原迁出机器seid',
  `phone_manufacturer` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '厂商',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备型号',
  `balance` decimal(12, 0) DEFAULT NULL COMMENT '余额(分)',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrate_data_backup_detail
-- ----------------------------
DROP TABLE IF EXISTS `migrate_data_backup_detail`;
CREATE TABLE `migrate_data_backup_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_id` int(11) DEFAULT NULL COMMENT '备份表ID',
  `applet_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用ID',
  `card_balance` decimal(10, 0) DEFAULT NULL COMMENT '卡余额',
  `file0015` varchar(104) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '15文件',
  `ep_data` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'EP数据',
  `ed_data` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ED数据',
  `trans_record` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '交易记录',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_backid_aid`(`backup_id`, `applet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for offline_refund_record
-- ----------------------------
DROP TABLE IF EXISTS `offline_refund_record`;
CREATE TABLE `offline_refund_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `order_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原始订单状态',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  `order_amount` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单金额(分)',
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单类型',
  `refund_amount` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款金额(分)',
  `refund_account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款账号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0 : 未退款 1 : 已退款(私人账户) 2: 已退款(公司账户) 3: 无法退款 4:退款中 5 退款失败',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `jobnum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工单号',
  `refund_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款类型',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  `transfer_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '线下转账方式 TRANSFER_ALI(支付宝)',
  `pay_date` datetime(0) DEFAULT NULL COMMENT '支付时间',
  `query_fail_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '查询失败原因',
  `fail_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失败原因',
  `transfer_order` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '转账订单号',
  `oth_transfer_order` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付渠道方转账订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3740 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_group
-- ----------------------------
DROP TABLE IF EXISTS `oms_group`;
CREATE TABLE `oms_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户组编码，唯一',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '（用户）组' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_menu
-- ----------------------------
DROP TABLE IF EXISTS `oms_menu`;
CREATE TABLE `oms_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `type` tinyint(2) DEFAULT NULL COMMENT '功能类型 0:目录;1:菜单;2:按钮',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url',
  `perm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识. 目录和菜单可以不填。按钮（和功能）必须填',
  `parent_id` int(11) DEFAULT NULL COMMENT '父功能',
  `status` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '0:删除；1:启用',
  `idx` int(6) DEFAULT 0 COMMENT '序号',
  `icon_class` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `show_flag` tinyint(1) DEFAULT 1 COMMENT '1:展示;0:不展示 设置为0时作为单独的权限使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 506 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_role
-- ----------------------------
DROP TABLE IF EXISTS `oms_role`;
CREATE TABLE `oms_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `oms_role_menu`;
CREATE TABLE `oms_role_menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_reference_6`(`role_id`) USING BTREE,
  INDEX `fk_reference_7`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1268 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单表。配置角色拥有的菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_user
-- ----------------------------
DROP TABLE IF EXISTS `oms_user`;
CREATE TABLE `oms_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `real_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码用到的盐值',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'email',
  `job_uuid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `last_login_time` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 1:正常;0:删除',
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系方式',
  `home_page` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '首页显示',
  `job_number` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工单号 自动生成',
  `group_id` int(10) DEFAULT NULL COMMENT '有组的概念.',
  `bg_style` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '背景风格',
  `dac_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据权限控制',
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OMS用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `oms_user_role`;
CREATE TABLE `oms_user_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_reference_1`(`user_id`) USING BTREE,
  INDEX `fk_reference_2`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oms_user_theme
-- ----------------------------
DROP TABLE IF EXISTS `oms_user_theme`;
CREATE TABLE `oms_user_theme`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bg_style` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '背景风格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户主题表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for open_card_redundancy
-- ----------------------------
DROP TABLE IF EXISTS `open_card_redundancy`;
CREATE TABLE `open_card_redundancy`  (
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `city_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市号',
  `ykt_order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通订单号',
  `settle_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通结算日期 yyyyMMdd',
  `bal_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账标记 0:不参与对账 1:参与对账',
  `create_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`card_no`, `city_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `platform_serial_number` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '平台流水号（全局，整个订单生命周期）----生成订单后需要添加的字段数据 start----',
  `settle_date_loc` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '清算日期(本地) 合肥充值用',
  `trans_recv_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易接收日期（即申请订单的日期） 使用系统日期 yyyyMMdd',
  `trans_recv_time` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易接收时间（即申请订单的时间） 使用系统时间 HHmmss',
  `loc_trans_date` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易日期',
  `loc_trans_time` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易时间（订单生成时间）',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `order_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单状态',
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单类型 0：开卡  1：充值  2：开卡+充值',
  `discount_type` tinyint(1) DEFAULT 0 COMMENT '是否银联优惠订单，1为是，0为否',
  `discount_amt` decimal(12, 0) DEFAULT NULL COMMENT '立减金额（目前仅用于银联）',
  `mchtDiscount_amt` decimal(12, 0) DEFAULT NULL COMMENT '商户优惠金额（目前仅用于银联）',
  `pay_card_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付卡类型(仅用于银联)',
  `order_amount` decimal(12, 0) DEFAULT NULL COMMENT '订单原始金额，优惠前（单位：分）',
  `order_real_amount` decimal(12, 0) DEFAULT NULL COMMENT '订单实际支付金额（单位：分）',
  `sk_fee` decimal(12, 0) DEFAULT NULL COMMENT '开卡费(折扣前)',
  `sk_real_fee` decimal(12, 0) DEFAULT NULL COMMENT '实际开卡费(折扣后)',
  `cz_fee` decimal(12, 0) DEFAULT NULL COMMENT '充值金额(折扣前)',
  `cz_real_fee` decimal(12, 0) DEFAULT NULL COMMENT '充值实际花费(折扣后)',
  `source_chnl` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单来源渠道',
  `physic_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡芯片号（物理卡号）',
  `seId` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SEID',
  `ats` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ATS',
  `imei` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机串号',
  `phone_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户手机号',
  `device_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机型号',
  `card_external_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片外部编码（用于对接其他系统中的卡片唯一标识）',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片编码（内部编码，根据card_code_dict表来）',
  `cplc` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cplc',
  `sp_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SP在华为开放联盟商上注册的ID',
  `appletAid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用的AID',
  `se_chip_manufacturer` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SE芯片厂商代码',
  `pay_type` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `valid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '该条数据是否有效，0无效，1有效 ----生成订单后需要添加的字段数据 end----',
  `payment_serial_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付流水号',
  `sk_req_serial` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台售卡请求流水(主机) ----个人化售卡步骤需要更新的字段 start----',
  `sk_ykt_req` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡一卡通请求流水号(响应值)',
  `sk_ykt_cfm` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡一卡通确认流水号',
  `SK_TERM_TRANS_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端交易日期',
  `SK_TERM_TRANS_TIME` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端交易时间（售卡请求发起时间）',
  `sk_enable_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡一卡通返回启用时间(普通售卡不使用该字段)',
  `sk_enable_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡一卡通返回启用日期',
  `sk_valid_end_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡一卡通返回卡片有效结束日期',
  `sk_annual_inspection_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡一卡通返回年检有效日期',
  `special_info` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回执特别说明信息',
  `sk_inspection_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年审标识,00不年审;01需要年审当为,01时需要使用年检有效日期',
  `printing_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表面印刷号',
  `sk_cost` decimal(10, 2) DEFAULT NULL COMMENT '成本(单位:元)',
  `sk_card_fee` decimal(10, 2) DEFAULT NULL COMMENT '补卡手续费(单位:元)',
  `sk_old_card_id_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '旧卡证件类型(补卡时一卡通返回)',
  `sk_old_card_id_no` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '旧卡证件号码 ----个人化售卡步骤需要更新的字段 end----',
  `cz_req_serial` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台充值请求流水(主机) ----充值时需要更新的字段 start----',
  `systemType` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作系统',
  `system_version` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作系统版本',
  `terminal_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易终端编号',
  `cardNo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `card_file_0005` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片0005文件',
  `card_file_0015` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片0015文件',
  `network_issuersId` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入网机构顺序码',
  `city_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `issuer_app_version` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发卡机构应用版本',
  `card_inner_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡内号（0015文件中的应用序列号）',
  `sale_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '售卡日期',
  `exp_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡有效期',
  `card_master_type` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡主类型',
  `card_sub_type` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡子类型',
  `last_recharge_record` varchar(72) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上一笔充值记录',
  `last_terminal_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上次交易终端编号',
  `last_trans_time` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上次交易日期时间',
  `offline_counter` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡脱机计数',
  `online_counter` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联机交易序号',
  `mac1` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'mac1',
  `card_balance` decimal(10, 0) DEFAULT NULL COMMENT '票卡余额（交易前金额）',
  `cz_trans_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值请求发起日期（主机）',
  `cz_trans_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值请求发起时间（主机）',
  `ykt_trans_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通交易日期',
  `ykt_trans_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通交易时间',
  `ykt_src_trans_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通原交易时间',
  `cz_ykt_req` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值一卡通请求流水号(响应值)',
  `cz_ykt_cfm` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值一卡通确认流水号',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易TAC',
  `card_file_abn` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片异常应答指令',
  `cz_recharge_time` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值时一卡通返回时间，充值确认时使用',
  `cz_min_recharge` decimal(12, 0) DEFAULT NULL COMMENT '最小充值金额(单位:分)',
  `cz_max_balance` decimal(12, 0) DEFAULT NULL COMMENT '最大余额(单位:分)',
  `random_num` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '随机数(暂时河北用到)',
  `card_verify_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡认证码(暂时河北用到)',
  `YKT_STATE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通充值状态',
  `YKT_STATE_DESC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通充值状态描述 ----充值时需要更新的字段 end----',
  `TXN_PAY_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易PAN类型 ----暂时用不到的字段 start----',
  `TRANS_CODE_OUT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部交易代码',
  `TRANS_CODE_CHNL` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易代码(渠道)',
  `TRANS_CODE_CH_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易代码名称',
  `MSG_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息类型',
  `PAY_PAN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方PAN',
  `PAY_PAN_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方PAN类型',
  `INST_ID_PAY` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付提供方代码',
  `MCHNT_ID_PAY` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付商户号',
  `MCHNT_CODE_IN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `MCHNT_NAME_OUT` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `ACQ_INS_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '受理机构',
  `ACQ_INS_SEQ` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '受理机构流水号',
  `CARD_DEPOSIT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡押金(单位:元)',
  `TRADE_APP_VERSION` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '行业应用版本号',
  `YKT_SRC_SEQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通原流水号',
  `YKT_SRC_TXNDATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通原交易日期',
  `YKT_SEQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通流水号',
  `YKT_BACK_SEQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通补充流水号',
  `YKT_BACK_TXNDATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通补充交易日期',
  `YKT_BACK_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通补充值标记',
  `REQ_SEQ` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求包号',
  `REFUND_TOTAL_AMT` decimal(12, 0) DEFAULT NULL COMMENT '退款总金额',
  `REFUND_TOTAL_NUM` decimal(12, 0) DEFAULT NULL COMMENT '退款总次数',
  `VOUCHER_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '凭证号',
  `COS_VER` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'COS版本',
  `CUSTOMER_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户编号',
  `ACCOUNT_NO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '第三方客户号',
  `TERM_ID_IN` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端编号',
  `REQ_KEY_NUM` decimal(10, 0) DEFAULT NULL COMMENT '密钥请求次数',
  `BATCH_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权终端批次号',
  `AUTH_SEQ` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥授权流水号',
  `LI_AUTH_SEQ` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '额度授权流水号',
  `AUTH_SETT_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权清算日期',
  `SETTLE_DATE_CFM` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '确认清算日期',
  `ACQ_INS_SEQ_REQ` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求机构流水号',
  `ACQ_INS_SEQ_CFM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '确认机构流水号',
  `PLT_SSN_REQ` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求交易平台流水号',
  `PLT_SSN_CFM` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '确认交易平台流水号',
  `PART_FLAG` decimal(2, 0) DEFAULT NULL COMMENT '交易分区标志',
  `YKT_ORDER` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通订单号 ----暂时用不到的字段 end----',
  `write_result` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '写卡结果',
  `create_time` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `update_time` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  `qk_real_fee` decimal(12, 0) DEFAULT NULL COMMENT '实际迁卡费(折扣后)',
  `qk_fee` decimal(12, 0) DEFAULT NULL COMMENT '迁卡费(折扣前)',
  `event_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '迁卡移资唯一标识',
  `auth_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住建部安全认证码',
  `version` int(11) DEFAULT 0 COMMENT '乐观锁',
  `reserve` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段  可将多条数据用 | 隔开',
  `userid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'userid',
  `activity_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '华为活动id',
  `up_discount_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银联优惠活动代码',
  PRIMARY KEY (`platform_serial_number`) USING BTREE,
  UNIQUE INDEX `unique_order_chnl`(`order_no`, `source_chnl`) USING BTREE,
  INDEX `index_seid`(`seId`) USING BTREE,
  INDEX `index_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-订单] 订单表-order_detail' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_discard
-- ----------------------------
DROP TABLE IF EXISTS `order_discard`;
CREATE TABLE `order_discard`  (
  `platform_serial_number` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '平台流水号（全局，整个订单生命周期）----生成订单后需要添加的字段数据 start----',
  `trans_recv_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易接收日期（即申请订单的日期） 使用系统日期 yyyyMMdd',
  `trans_recv_time` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易接收时间（即申请订单的时间） 使用系统时间 HHmmss',
  `loc_trans_date` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易日期',
  `loc_trans_time` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易时间（订单生成时间）',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `order_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单状态',
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单类型 0：开卡  1：充值  2：开卡+充值',
  `discount_type` tinyint(1) DEFAULT 0 COMMENT '是否银联优惠订单，1为是，0为否',
  `discount_amt` decimal(12, 0) DEFAULT NULL COMMENT '立减金额（目前仅用于银联）',
  `mchtDiscount_amt` decimal(12, 0) DEFAULT NULL COMMENT '商户优惠金额（目前仅用于银联）',
  `pay_card_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付卡类型(仅用于银联)',
  `order_amount` decimal(12, 0) DEFAULT NULL COMMENT '订单原始金额，优惠前（单位：分）',
  `order_real_amount` decimal(12, 0) DEFAULT NULL COMMENT '订单实际支付金额（单位：分）',
  `sk_fee` decimal(12, 0) DEFAULT NULL COMMENT '开卡费(折扣前)',
  `sk_real_fee` decimal(12, 0) DEFAULT NULL COMMENT '实际开卡费(折扣后)',
  `cz_fee` decimal(12, 0) DEFAULT NULL COMMENT '充值金额(折扣前)',
  `cz_real_fee` decimal(12, 0) DEFAULT NULL COMMENT '充值实际花费(折扣后)',
  `source_chnl` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单来源渠道',
  `physic_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡芯片号（物理卡号）',
  `seId` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SEID',
  `ats` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ATS',
  `imei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机串号',
  `phone_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户手机号',
  `device_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机型号',
  `card_external_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片外部编码（用于对接其他系统中的卡片唯一标识）',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片编码（内部编码，根据card_code_dict表来）',
  `cplc` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cplc',
  `sp_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SP在华为开放联盟商上注册的ID',
  `appletAid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用的AID',
  `se_chip_manufacturer` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SE芯片厂商代码',
  `pay_type` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `valid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '该条数据是否有效，0无效，1有效 ----生成订单后需要添加的字段数据 end----',
  `payment_serial_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付流水号',
  `create_time` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_time` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`platform_serial_number`) USING BTREE,
  UNIQUE INDEX `unique_order_chnl`(`order_no`, `source_chnl`) USING BTREE,
  INDEX `index_seid`(`seId`) USING BTREE,
  INDEX `card_code`(`card_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-订单] 订单表-order_detail' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_invoice_info
-- ----------------------------
DROP TABLE IF EXISTS `order_invoice_info`;
CREATE TABLE `order_invoice_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片码',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `order_amount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单金额',
  `invoice_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发票状态 1:已领取',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 403 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_refund
-- ----------------------------
DROP TABLE IF EXISTS `order_refund`;
CREATE TABLE `order_refund`  (
  `REFUND_ORDER_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退款单号',
  `TRANS_RECV_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收日期',
  `TRANS_RECV_TIME` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收时间',
  `MCHNT_CODE_IN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `ACQ_INS_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '受理机构',
  `ACQ_INS_SEQ` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流水号',
  `LOC_TRANS_TIME` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易时间',
  `LOC_TRANS_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易日期',
  `CARD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `ORDER_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `STATE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款状态',
  `seId` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SEID',
  `imei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机串号',
  `cplc` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cplc',
  `flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款请求标记',
  `ORDER_AMT` decimal(12, 0) DEFAULT NULL COMMENT '订单金额',
  `REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '退款金额',
  `pay_type` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `REC_CRT_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `REC_UPD_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  `PAY_REFUND_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付渠道退款单号',
  `OTH_REFUND_NO` char(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道退款单号--收单系统退款订单号',
  `NOTIFY_URL` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通知地址',
  `RESV1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段1',
  `RESV2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段2',
  `RESV3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段3',
  `firm_code` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '厂商代码',
  `device_model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机型号',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片编码(内部编码，根据card_code_dict表来)',
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单类型',
  `firm_id` int(10) DEFAULT NULL COMMENT '手机厂商ID tmm_firm.id',
  `model_id` int(10) DEFAULT NULL COMMENT '机型ID tmm_model.id',
  PRIMARY KEY (`REFUND_ORDER_NO`) USING BTREE,
  UNIQUE INDEX `index_order_no`(`ORDER_NO`) USING BTREE COMMENT '唯一订单号(一笔订单只能有一笔退款订单)'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-订单] 订单退款表 - ORDER_REFUND' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_app_log
-- ----------------------------
DROP TABLE IF EXISTS `pm_app_log`;
CREATE TABLE `pm_app_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志类型：For application on WEB Page: Register/Update/Delete  \r\n               For application on OTA Operation: LoadInstall/Load/Instantiate/Extradition/Personalize/Lock/Unlock/Delete/Active/Deactive/Register[Rules]\r\n               For SecurityDomain on OTA Operation: Create/Update/Delete/Lock/Unlock/Register[Rules]\r\n    ',
  `op_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '操作状态：0初始化  1成功  2失败',
  `target_type` tinyint(4) NOT NULL COMMENT '操作的是什么：0:Application	1:SecurityDomain 2:SecureElement',
  `target_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作的ID，如：应用的实例ID，安全域AID',
  `orders_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `client_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户的IP地址',
  `apdu_resp_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'APDU操作结果返回码，只有在有关APDU的卡操作失败返回结果时有此值',
  `op_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作的用户，可填手机号或者卡号',
  `source` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '来源，即来源于哪个SP项目，socket还是https，或者其他协议的项目',
  `op_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_application
-- ----------------------------
DROP TABLE IF EXISTS `pm_application`;
CREATE TABLE `pm_application`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，自定义ID',
  `application_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `cap_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cap类型，JAVA_CARD,MIFARE',
  `app_strategy` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用策略类型，PRESET(预置),UTILITY(公用),GENERAL(普通)',
  `is_personalize` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '该应用是否需要个人化，取值Y(yes)、N(No)',
  `application_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用类型：公交应用(transit)、支付应用(epay)、其他应用(other)',
  `pkg_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用cap的packageID',
  `default_aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用cap默认实例AID',
  `instance_aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用cap实例AID',
  `dp_impl` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用个人化实现类',
  `application_status` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用状态',
  `profile_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `origin_file_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `instantiation_profile` blob,
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `application_id`(`application_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_application_cap
-- ----------------------------
DROP TABLE IF EXISTS `pm_application_cap`;
CREATE TABLE `pm_application_cap`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capfile_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cap的文件名称',
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，对应pm_application表中的application_id',
  `cap_content` blob,
  `origin_cap_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cap_version` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `applet_size` int(11) DEFAULT NULL,
  `se_os` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `se_os_version` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '是否缺省',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_application_management
-- ----------------------------
DROP TABLE IF EXISTS `pm_application_management`;
CREATE TABLE `pm_application_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用ID，对应pm_application表中的application_id',
  `app_privileges` int(11) DEFAULT NULL COMMENT '应用cap的特殊参数',
  `install_parameters` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用cap的安装参数',
  `allow_managed` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `begin_date` datetime(0) DEFAULT NULL,
  `end_date` datetime(0) DEFAULT NULL,
  `config_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parse_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `readonly_blocks` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `transit_epurse` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `client_mifare_aid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reserve_field2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reserve_field3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_blocklist
-- ----------------------------
DROP TABLE IF EXISTS `pm_blocklist`;
CREATE TABLE `pm_blocklist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blocklist_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单类型：SE_UID, IMEI, TELL_NO',
  `target_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单类型中的唯一标识，如手机号码，IMEI，SE_UID',
  `reason_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '进入黑名单的原因，如：SE_AUTHE_FAILED, LOST, DAMAGE, SUSPECT, NOTEXIST, SERVICE_MOVE, OTHER',
  `description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `blocklist_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单状态：已注销(CANCELLED)   生效(EFFECTIVE)',
  `modify_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `delete_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blocklist_type`(`blocklist_type`, `target_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_business_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `pm_business_opt_log`;
CREATE TABLE `pm_business_opt_log`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `card_code` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码',
  `source_chnl` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `se_uid` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seId',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `business_type` tinyint(3) DEFAULT NULL COMMENT '业务代码(0: 业务1: 接口)',
  `command_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '命令Id(下载安装、个人化、充值、删卡)',
  `execute_time` int(10) DEFAULT NULL COMMENT '执行时间(单位: 毫秒)',
  `step_id` int(3) DEFAULT NULL COMMENT '执行步骤ID',
  `is_last_step` tinyint(1) DEFAULT NULL COMMENT '是否最后一步(0: 否 1: 是)',
  `opt_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误码,0:正常结束',
  `opt_msg` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误信息',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号(可为空)',
  `trace_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志追踪id',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_ctime`(`create_time`) USING BTREE,
  INDEX `seid_time`(`create_time`, `se_uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167726 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_caller_dict
-- ----------------------------
DROP TABLE IF EXISTS `pm_caller_dict`;
CREATE TABLE `pm_caller_dict`  (
  `caller` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用方。接口中的caller',
  `source_chnl` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '平台内部定义代码',
  `caller_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `c_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`caller`) USING BTREE,
  UNIQUE INDEX `caller`(`caller`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '手机厂商的调用者' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_config_params
-- ----------------------------
DROP TABLE IF EXISTS `pm_config_params`;
CREATE TABLE `pm_config_params`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数KEY',
  `param_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '参数值',
  `status` tinyint(1) DEFAULT 1 COMMENT '1:正常;0:禁用',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_key`(`param_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_hsm_key
-- ----------------------------
DROP TABLE IF EXISTS `pm_hsm_key`;
CREATE TABLE `pm_hsm_key`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_level_index` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hw_level_index` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `encryption_key` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purpose` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `production_factor` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `check_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `production_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `zmk_app_level_index` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `app_level_index`(`app_level_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_interface_info
-- ----------------------------
DROP TABLE IF EXISTS `pm_interface_info`;
CREATE TABLE `pm_interface_info`  (
  `interface_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口代码',
  `interface_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接口名称',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口类型 1:单次交互;2:多次交互',
  `common_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通用接口标识 1:通用接口;0:非通用，每个城市有不同逻辑',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '接口状态 1:正常启用;0:禁用',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`interface_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_keyset
-- ----------------------------
DROP TABLE IF EXISTS `pm_keyset`;
CREATE TABLE `pm_keyset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyset_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密钥集名称',
  `keyset_mode` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密钥模式：初始密钥(DEFAULT_KS)、替换密钥(REPLACE)',
  `keyset_version` smallint(6) NOT NULL COMMENT '密钥集版本号',
  `keyset_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密钥集类型：子密钥(DERIVED_KEYSET)、主密钥(MASTE_KEYSET)',
  `key_encryption_type` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DES' COMMENT '密钥加密类型，默认DES',
  `kd_imple` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥的分散算法实现',
  `kmc_imple` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'KMC实现类，用于keydata的还原匹配以及替换密钥时生成keydata下发',
  `key_1` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密钥集的第一个密钥',
  `key_2` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密钥集的第二个密钥',
  `key_3` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密钥集的第三个密钥',
  `sd_aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关联的安全域AID',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `keyset_name`(`keyset_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_menu
-- ----------------------------
DROP TABLE IF EXISTS `pm_menu`;
CREATE TABLE `pm_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(6) DEFAULT NULL COMMENT '功能类型0:目录;1:菜单;2:按钮',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url',
  `perm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '父功能',
  `status` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '0:删除；1:启用',
  `idx` int(6) DEFAULT 0 COMMENT '序号',
  `icon_class` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `show_flag` tinyint(1) DEFAULT 1 COMMENT '1:展示;0:不展示 设置为0时作为单独的权限使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_menu2
-- ----------------------------
DROP TABLE IF EXISTS `pm_menu2`;
CREATE TABLE `pm_menu2`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `view_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(6) DEFAULT NULL COMMENT '功能类型0:目录;1:菜单;2:按钮',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url',
  `perm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '父功能',
  `status` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '0:删除；1:启用',
  `idx` int(6) DEFAULT 0 COMMENT '序号',
  `icon_class` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `show_flag` tinyint(1) DEFAULT 1 COMMENT '1:展示;0:不展示 设置为0时作为单独的权限使用'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_role
-- ----------------------------
DROP TABLE IF EXISTS `pm_role`;
CREATE TABLE `pm_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roleintro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ROLE' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `pm_role_menu`;
CREATE TABLE `pm_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_6`(`role_id`) USING BTREE,
  INDEX `FK_Reference_7`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 760 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_sd_setting
-- ----------------------------
DROP TABLE IF EXISTS `pm_sd_setting`;
CREATE TABLE `pm_sd_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sd_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安全域名称',
  `sd_aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安全域AID',
  `sd_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安全域类型：AMSD、DMSD、SMSD(SSD)',
  `ara_c_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `app_cert_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `install_parameters` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '安全域的安装参数',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sd_name`(`sd_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_se
-- ----------------------------
DROP TABLE IF EXISTS `pm_se`;
CREATE TABLE `pm_se`  (
  `se_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cplc中的10个字节，组成为：芯片产商ID(2个字节)+芯片出厂时间(2个字节)+serial number(4个字节)+batch no.(2个字节)',
  `se_chip_manufacturer` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'se芯片厂商代码，如4790（NXP）',
  `cplc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'eSE全字节CPLC，通过选中主安全域，下发get-cplc的APDU可以获得',
  `imei` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机的IMEI',
  `phone_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `phone_manaufacturer` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商',
  `phone_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机型号',
  `se_status` tinyint(4) DEFAULT 0 COMMENT 'se状态，0:NORMAL(正常),1:LOCKED(锁卡),2:TERMINAL(销毁)',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `modify_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`se_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_se_application
-- ----------------------------
DROP TABLE IF EXISTS `pm_se_application`;
CREATE TABLE `pm_se_application`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `se_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cplc中的10个字节，组成为：芯片产商ID(2个字节)+芯片出厂时间(2个字节)+serial number(4个字节)+batch no.(2个字节)',
  `instance_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用实例AID',
  `orders_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片内部编码',
  `model_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内部主机型编码',
  `se_application_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '00 应用已删除, 01 应用已被锁定, 02  应用已实例, 03 安全域不存在, 04 应用实例正在安装, 05 应用实例安装完毕, 11 订单未支付, 22 个人化已完毕',
  `time_cost` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `modify_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `card_external_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `instanceId_seId_unique_index`(`se_id`, `instance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3955 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_se_safeguard
-- ----------------------------
DROP TABLE IF EXISTS `pm_se_safeguard`;
CREATE TABLE `pm_se_safeguard`  (
  `se_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cplc中的10个字节，组成为：芯片产商ID(2个字节)+芯片出厂时间(2个字节)+serial number(4个字节)+batch no.(2个字节)',
  `sd_aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联安全域表的安全域AID，表明该安全域认证失败次数',
  `failed_counter` smallint(6) DEFAULT NULL COMMENT '认证失败次数',
  `client_ip` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`se_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_se_sd
-- ----------------------------
DROP TABLE IF EXISTS `pm_se_sd`;
CREATE TABLE `pm_se_sd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `se_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sd_aid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyset_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片内部编码',
  `model_code` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主机型内部编码',
  `time_cost` int(11) DEFAULT NULL,
  `se_sd_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '十六进制的1个字节 00：安全域删除 03：安全域安装 0F：PERSONALIZED 83：LOCKED ',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sdId_seID_unique_index`(`sd_aid`, `se_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_sei
-- ----------------------------
DROP TABLE IF EXISTS `pm_sei`;
CREATE TABLE `pm_sei`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sei_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sei的名称',
  `sei_status` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '该条记录的状态',
  `sei_oid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sei的标识，如华为wallet服务器的标识是HuaweiWallet',
  `key_index` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用于验签的解密索引',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime(0) DEFAULT NULL,
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sei_name`(`sei_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_uid_manager
-- ----------------------------
DROP TABLE IF EXISTS `pm_uid_manager`;
CREATE TABLE `pm_uid_manager`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市代码',
  `batch_no` int(6) DEFAULT 1 COMMENT '批次',
  `uid0` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'UID0,1个字节',
  `last_serial` int(11) DEFAULT NULL COMMENT '更前前序号',
  `cur_serial` int(11) DEFAULT 1 COMMENT '当前序号',
  `model` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1:连续生成;2:随机生成',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1:正常;0:删除',
  `version` int(10) DEFAULT 0 COMMENT '乐观锁',
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_user
-- ----------------------------
DROP TABLE IF EXISTS `pm_user`;
CREATE TABLE `pm_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `realname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'email',
  `jobuuid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  `last_time` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `warehouses` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属仓库',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 1:正常;0:删除',
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系方式',
  `home_page` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '首页显示',
  `bg_style` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pm_user_role
-- ----------------------------
DROP TABLE IF EXISTS `pm_user_role`;
CREATE TABLE `pm_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_1`(`user_id`) USING BTREE,
  INDEX `FK_Reference_2`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quota_log
-- ----------------------------
DROP TABLE IF EXISTS `quota_log`;
CREATE TABLE `quota_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `card_code` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市代码  tm_card.cardcode',
  `firm_id` int(10) DEFAULT NULL COMMENT '手机厂商id tmm_firm.id 如果额度要区分手机厂商，填入值',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '服务商代码，广西-华为：41310022',
  `time` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '时间。额度查询时间 yyyyMMddHHmmss',
  `balance` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '额度 单位元 十进制',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_quota_log_time`(`time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3023 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '额度历史。用来观察备用金的变化。查询失败不需要记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for real_name_info
-- ----------------------------
DROP TABLE IF EXISTS `real_name_info`;
CREATE TABLE `real_name_info`  (
  `cplc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机唯一标识',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '卡片代码',
  `userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `identity_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `real_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0:未使用 1:已使用',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`cplc`, `card_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sd_parameters
-- ----------------------------
DROP TABLE IF EXISTS `sd_parameters`;
CREATE TABLE `sd_parameters`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sd_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SD的实例AID',
  `se_strategy_id` int(11) NOT NULL COMMENT '策略的主键id，关联的se_strategy策略表',
  `sd_pkg_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SD的PKGID',
  `sd_module_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SD的默认实例AID',
  `install_parameters` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安全域的安装参数',
  `privileges` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安全域的权限参数',
  `app_cert` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建casd时一卡通的应用证书',
  `operator` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据操作人',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sd_strategy_id_index`(`sd_id`, `se_strategy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '安全域参数表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for se_strategy
-- ----------------------------
DROP TABLE IF EXISTS `se_strategy`;
CREATE TABLE `se_strategy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '策略名称',
  `strategy_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '策略类型：、CPLC_INFO（按cplc信息查找）、MOBILE_MODE（按手机型号查找）、SE_TYPE按芯片类型查找（通用类型，级别最低）',
  `se_vendor` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'se制造商编码。cplc的前四位',
  `cplc_position` int(11) DEFAULT NULL COMMENT 'cplc开始匹配位置',
  `cplc_length` int(2) DEFAULT NULL COMMENT 'cplc匹配长度',
  `cplc_regex` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cplc匹配正则。匹配前见先用cplc_post和cplc_len截取',
  `se_chip_manufacturer` tinyint(2) DEFAULT NULL COMMENT '芯片制造商. 1：NXP； 2：HISEE海思：3：GTO金雅拓',
  `mobile_manufacturer` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商',
  `mobile_model` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机型号',
  `priority` tinyint(2) DEFAULT NULL COMMENT '策略优先级。 越小越优先',
  `create_user` int(11) DEFAULT NULL COMMENT '创建用户',
  `modify_user` int(11) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '策略详细说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '芯片匹配策略表 通过这个策略找出一类相关芯片' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for seid_self
-- ----------------------------
DROP TABLE IF EXISTS `seid_self`;
CREATE TABLE `seid_self`  (
  `seId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '自己生成的SEID',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市编号',
  `ori_seId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原始seid',
  `status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态001:初始;003:已锁定;005:已使用',
  `version` int(10) DEFAULT 0 COMMENT '版本号',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`seId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for seid_uid
-- ----------------------------
DROP TABLE IF EXISTS `seid_uid`;
CREATE TABLE `seid_uid`  (
  `uid_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证码',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市编号',
  `se_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态001:初始;003:已锁定;005:已使用',
  `version` int(10) DEFAULT 0 COMMENT '版本号',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`uid_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `seq_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `current_val` int(11) DEFAULT NULL,
  `increment_val` int(11) DEFAULT NULL,
  `min_val` int(11) DEFAULT NULL COMMENT '最小值',
  `max_val` int(11) DEFAULT NULL COMMENT '最大值',
  PRIMARY KEY (`seq_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_card
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_card`;
CREATE TABLE `sp_dp_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dpfile_id` int(11) DEFAULT NULL COMMENT '制卡文件信息ID',
  `pan` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号（卡面卡号位置打印信息）',
  `system_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系统类型1:ese;2:hce',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  `physical_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号(se芯片、手机唯一码)',
  `ats` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绑定ats',
  `exp_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片生效日期',
  `eff_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片失效日期',
  `holder_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '持卡人姓名',
  `status` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '001:一发数据入库 ;002:写入缓存，即将制卡 ;003:制卡中，已写入部分个人化数据 ;101:制卡失败(个人化APDU生成或写卡失败);004:已制卡回盘 ;102:回盘失败 ;005:已售出',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `m_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `make_time` datetime(0) DEFAULT NULL COMMENT '制卡时间',
  `saled_time` datetime(0) DEFAULT NULL COMMENT '售卡时间',
  `delete_time` datetime(0) DEFAULT NULL COMMENT '删卡时间',
  `se_uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` int(11) DEFAULT 0 COMMENT '版本号，乐观锁',
  `lock_flag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '锁定缓存标识',
  `city_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `dgi_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡数据所在表',
  `source_chnl` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片使用于的厂商渠道',
  `reserve` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_pan`(`pan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 357414 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_dgi
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_dgi`;
CREATE TABLE `sp_dp_dgi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dgi_tag_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'DGI标签名',
  `dgi_length` int(11) DEFAULT NULL COMMENT 'DGI数据长度(10进制)',
  `dgi_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'DGI数据',
  `dpcard_id` int(11) DEFAULT NULL COMMENT '主卡数据的ID',
  `encryption_flag` tinyint(1) DEFAULT NULL COMMENT '密文标识',
  `card_aid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用AID',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dpcard_index`(`dpcard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1346085 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_dgi_01
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_dgi_01`;
CREATE TABLE `sp_dp_dgi_01`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dgi_tag_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'DGI标签名',
  `dgi_length` int(11) DEFAULT NULL COMMENT 'DGI数据长度(10进制)',
  `dgi_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'DGI数据',
  `dpcard_id` int(11) DEFAULT NULL COMMENT '主卡数据的ID',
  `encryption_flag` tinyint(1) DEFAULT NULL COMMENT '密文标识',
  `card_aid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用AID',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dpcard_index`(`dpcard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 806510 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_dgi_02
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_dgi_02`;
CREATE TABLE `sp_dp_dgi_02`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dgi_tag_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'DGI标签名',
  `dgi_length` int(11) DEFAULT NULL COMMENT 'DGI数据长度(10进制)',
  `dgi_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'DGI数据',
  `dpcard_id` int(11) DEFAULT NULL COMMENT '主卡数据的ID',
  `encryption_flag` tinyint(1) DEFAULT NULL COMMENT '密文标识',
  `card_aid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用AID',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dpcard_index`(`dpcard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 387471 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_dgi_history
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_dgi_history`;
CREATE TABLE `sp_dp_dgi_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dgi_tag_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'DGI标签名',
  `dgi_length` int(11) DEFAULT NULL COMMENT 'DGI数据长度(10进制)',
  `dgi_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'DGI数据',
  `dpcard_id` int(11) DEFAULT NULL COMMENT '主卡数据的ID',
  `encryption_flag` tinyint(1) DEFAULT NULL COMMENT '密文标识',
  `card_aid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用AID',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `b_time` datetime(0) DEFAULT NULL COMMENT '备份/转移时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dpcard_index`(`dpcard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4977941 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已售卡的卡片数据备份表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_dgi_xian
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_dgi_xian`;
CREATE TABLE `sp_dp_dgi_xian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dgi_tag_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'DGI标签名',
  `dgi_length` int(11) DEFAULT NULL COMMENT 'DGI数据长度(10进制)',
  `dgi_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'DGI数据',
  `dpcard_id` int(11) DEFAULT NULL COMMENT '主卡数据的ID',
  `encryption_flag` tinyint(1) DEFAULT NULL COMMENT '密文标识',
  `card_aid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用AID',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dpcard_index`(`dpcard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1204286 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_dp_file
-- ----------------------------
DROP TABLE IF EXISTS `sp_dp_file`;
CREATE TABLE `sp_dp_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码(内部)',
  `file_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名',
  `transfer_key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'PBOC文件传输密钥',
  `transfer_key2` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子钱包文件传输密钥',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '制卡订单号',
  `card_count` int(11) DEFAULT NULL COMMENT '卡片数量',
  `real_parse_count` int(11) DEFAULT 0 COMMENT '实际解析卡片数量',
  `card_begin_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '制卡订单起始号码',
  `reserve` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段',
  `encrypt_model` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥模式1:密钥密文;2:密钥索引',
  `factor` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分散因子',
  `activate_flag` tinyint(1) DEFAULT 0 COMMENT '卡数据激活标识;0:未激活',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `m_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for stop_service_info
-- ----------------------------
DROP TABLE IF EXISTS `stop_service_info`;
CREATE TABLE `stop_service_info`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `issuerid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片码',
  `stop_service_uuid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '停服唯一标识',
  `stop_service_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '停服类型',
  `stop_service_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开始停服时间',
  `stop_service_reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '停服原因',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0 :未上报  1:上报失败  2:上报成功',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_alipay_mchnt
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alipay_mchnt`;
CREATE TABLE `tbl_alipay_mchnt`  (
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '账号ID',
  `APPID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户号',
  `PARTNER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '使用者ID',
  `USER_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `TRADE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `SIGN_TYPE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签名类型',
  `PUB_KEY` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公钥',
  `PRI_KEY` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '私钥',
  `NOTIFY_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付通知地址',
  `CHK_ST` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `CHK_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人',
  `CHK_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核时间',
  `REFUND_NOTIFY_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款通知地址',
  `BASE_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求地址',
  `CERT_PATH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证书路径',
  `CERT_PASSWORD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证书密码',
  PRIMARY KEY (`APPID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-支付宝] 支付宝支付商户信息表 tbl_alipay_MCHNT' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bat_rec_bill
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bat_rec_bill`;
CREATE TABLE `tbl_bat_rec_bill`  (
  `MCHNT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户代码',
  `SETTLE_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `CARD_CITY` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `PLT_TOTAL_NUM` decimal(12, 0) DEFAULT NULL COMMENT '平台总笔数',
  `PLT_TOTAL_AMT` decimal(12, 0) DEFAULT NULL COMMENT '平台总金额',
  `PLT_NUM` decimal(12, 0) DEFAULT NULL COMMENT '平台正常笔数',
  `PLT_AMT` decimal(12, 0) DEFAULT NULL COMMENT '平台正常金额',
  `PLT_REFUND_NUM` decimal(12, 0) DEFAULT NULL COMMENT '平台退款笔数',
  `PLT_REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '平台退款金额',
  `OTH_TOTAL_NUM` decimal(12, 0) DEFAULT NULL COMMENT '对方总笔数',
  `OTH_TOTAL_AMT` decimal(12, 0) DEFAULT NULL COMMENT '对方总金额',
  `OTH_NUM` decimal(12, 0) DEFAULT NULL COMMENT '对方正常笔数',
  `OTH_AMT` decimal(12, 0) DEFAULT NULL COMMENT '对方正常金额',
  `OTH_REFUND_NUM` decimal(12, 0) DEFAULT NULL COMMENT '对方退款笔数',
  `OTH_REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '对方退款金额',
  `REC_BAT_RESULT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账统计结果',
  `SOURCE_CHNL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `ACQ_INST_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '机构号',
  `TRANS_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对账类型',
  `ACCOUNT_AMT` decimal(12, 0) DEFAULT NULL COMMENT '划拨金额',
  `ACCOUNT_NUM` decimal(12, 0) DEFAULT NULL COMMENT '划拨笔数',
  PRIMARY KEY (`MCHNT_ID`, `SETTLE_DATE`, `TRANS_TYPE`, `SOURCE_CHNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[统计处理] 支付单对账统计表- TBL_BAT_REC_BILL' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_info_key
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_info_key`;
CREATE TABLE `tbl_bse_info_key`  (
  `KEY_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '序号',
  `KEY_TYPE` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥类型',
  `KEY_USAGE` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥描述',
  `SAVE_IDEX` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '存贮说明',
  `KEY_INDEX` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '加密机索引号',
  `KEY_VALUE` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥值',
  `PRI_KEY` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '私钥密文',
  `RSA_EXP` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公共指数',
  `KEY_CHK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密钥校验值',
  `RSVD1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留域1',
  `RSVD2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留域2',
  `RSVD3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留域3',
  `RSVD4` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留域4',
  `RSVD5` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留域5',
  `RSVD6` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留域6',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `LAST_MODIFY_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改人',
  `LAST_MODIFY_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`KEY_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_inst_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_inst_info`;
CREATE TABLE `tbl_bse_inst_info`  (
  `INSTCD` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '机构代码',
  `INSTFNAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构名称(全称)',
  `INSTSNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构名称(简称)',
  `INSTADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `ZIPCODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮编',
  `BILICENSENO` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '营业执照号码',
  `BANKCD` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开户银行代码',
  `BANKNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开户行名称',
  `ACCOUNT_NO` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行账号',
  `LEGALREPRESENTIVE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '法人代表姓名',
  `PROVINCE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属省',
  `CITY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属市',
  `COUNTY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属区县',
  `LINKMANNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人姓名',
  `LINKMANPHONE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电话',
  `LINKMANFAX` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人传真',
  `LINKMANEMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电子邮件地址',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构开通状态',
  `FLINKMANNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '财务联系人姓名',
  `FLINKMANPHONE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '财务联系人电话号码',
  `FLINKMANFAX` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '财务联系人传真',
  `FLINKMANEMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '财务联系人电子邮件地址',
  `TRNSTYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接入模式',
  `SERTYTYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '安全控制类型',
  `SEK` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主密钥保护密钥序号',
  `NOTIFY_SEK` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MAIN_KEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主密钥',
  `MAC_KEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'MAC密钥',
  `PIN_KEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'PIN密钥',
  `TRACKS_KEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '磁道密钥',
  `PUB_KEY` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSA公钥',
  `RSA_EXP` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公共指数',
  `HSM_TYPE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '安全算法',
  `IF_EXTERM` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '转终端标识',
  `RSVD1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD1',
  `RSVD2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD2',
  `RSVD3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD3',
  `RSVD4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD4',
  `RSVD5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD5',
  `RSVD6` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD6',
  `RSVD7` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD7',
  `RSVD8` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RSVD8',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `LAST_MODIFY_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改人',
  `LAST_MODIFY_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改时间',
  `CHECKFLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核标志',
  `CHECKUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人',
  `CHECKTIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`INSTCD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[基础信息] 机构基本信息-TBL_BSE_INST_INFO' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_inst_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_inst_permission`;
CREATE TABLE `tbl_bse_inst_permission`  (
  `txn_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '命令字类型',
  `inst_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构号',
  `use_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '使用标记 ‘01’启用 ‘00’禁用',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `LAST_MODIFY_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改人',
  `LAST_MODIFY_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`txn_code`, `inst_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_message_record
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_message_record`;
CREATE TABLE `tbl_bse_message_record`  (
  `track_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息追踪ID',
  `message_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息ID',
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息状态',
  `exchange` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交换机名称',
  `routing_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路由key',
  `message_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息类型',
  `message_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息数据',
  `create_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`track_id`) USING BTREE,
  INDEX `message_id_idx`(`message_id`) USING BTREE COMMENT '消息Id索引'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_pay_mch_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_pay_mch_config`;
CREATE TABLE `tbl_bse_pay_mch_config`  (
  `INST_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '受理机构',
  `PAY_WAY` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付方式',
  `PAY_TYPE` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付类型',
  `PAY_MCH_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付单位商户信息如appid',
  `CRT_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `UPD_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `CREATE_OPERATOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建的操作员',
  `UPDATE_OPERATOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新的操作员',
  PRIMARY KEY (`INST_ID`, `PAY_WAY`, `PAY_TYPE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_pay_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_pay_order`;
CREATE TABLE `tbl_bse_pay_order`  (
  `ORDER_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `INST_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '受理机构',
  `TRANS_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易日期',
  `TRANS_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易时间',
  `SETTLE_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '清算日期',
  `SETTLE_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '清算类型 T1:T+1结算 ,T0: 当日结算',
  `PAY_WAY` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `PAY_TYPE` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付类型',
  `STATE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单状态',
  `ORDER_AMOUNT` decimal(12, 0) DEFAULT NULL COMMENT '交易金额',
  `PAY_AMOUNT` decimal(12, 0) DEFAULT NULL COMMENT '实际支付金额',
  `PAY_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付单号',
  `CUR` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '币种',
  `TIME_START` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '起始时间',
  `TIME_END` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结束时间',
  `NOTIFY_URL` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通知url',
  `PAY_TIME` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付时间',
  `PAY_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付日期',
  `REC_CRT_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `REC_UPD_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  `GOODS_BODY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品描述',
  `GOODS_DETAIL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品详情',
  `VERSION` int(11) DEFAULT 0 COMMENT '乐观锁',
  `RESERVE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段  可将多条数据用 | 隔开',
  `PAY_MCHNT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付单位商户信息如appid',
  `BANK_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '付款银行',
  PRIMARY KEY (`ORDER_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-订单] 支付订单表 TBL_BSE_PAY_ORDER' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_bse_pay_refund
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bse_pay_refund`;
CREATE TABLE `tbl_bse_pay_refund`  (
  `REFUND_ORDER_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退款订单号',
  `INST_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '受理机构',
  `TRANS_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易日期',
  `TRANS_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易时间',
  `SETTLE_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '清算日期',
  `PAY_WAY` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `PAY_TYPE` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付类型',
  `STATE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款订单状态',
  `ORDER_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `ORDER_AMOUNT` decimal(12, 0) DEFAULT NULL COMMENT '订单金额',
  `REFUND_AMOUNT` decimal(12, 0) DEFAULT NULL COMMENT '退款金额',
  `REFUND_TRANS_TIME` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款时间',
  `REFUND_TRANS_DATE` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款日期',
  `PAY_MCHNT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付单位商户信息如appid',
  `REC_CRT_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `REC_UPD_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  `PAY_REFUND_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付渠道退款单号',
  `NOTIFY_URL` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通知地址',
  `REFUND_DESC` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款原因',
  `REFUND_CUR` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款币种',
  `REFUND_CHANNEL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款使用的资金渠道',
  `VERSION` int(11) DEFAULT 0 COMMENT '乐观锁',
  PRIMARY KEY (`REFUND_ORDER_NO`) USING BTREE,
  INDEX `inx1_order_refund`(`ORDER_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-订单] 支付订单退款表 - TBL_BSE_PAY_REFUND' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_file_recv_dist_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_file_recv_dist_log`;
CREATE TABLE `tbl_file_recv_dist_log`  (
  `PKG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '数据包流水号',
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包名',
  `PKG_UNK` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件唯一号',
  `PKG_TYPE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包类型',
  `PKG_VERSION` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包版本',
  `INST_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包机构代码',
  `MCHNT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包商户代码',
  `RECV_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包接收日期',
  `RECV_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包接收时间',
  `DIST_NUM` decimal(3, 0) DEFAULT NULL COMMENT '数据包调度次数',
  `PKG_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包处理状态',
  `SETTLE_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包结算日期',
  `RECV_NUMS` decimal(6, 0) DEFAULT NULL COMMENT '数据包内记录总数',
  `BRK_POINT` decimal(6, 0) DEFAULT NULL COMMENT '数据包已处理记录数',
  `SAVE_PATH` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包存储路径',
  `INNERR_CODE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内部错误码',
  `ERRCODE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部错误码',
  `RSVD` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留使用',
  PRIMARY KEY (`PKG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[文件处理] 文件登记上传下载流水表- TBL_FILE_RECV_DIST_LOG' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_jdpay_mchnt
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jdpay_mchnt`;
CREATE TABLE `tbl_jdpay_mchnt`  (
  `MCH_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户号',
  `MCH_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `RSA_PRIVATE_KEY` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'API密钥',
  `DES_KEY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'CA证书路径',
  `OPR_PASSWORD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作员密码',
  `CHK_ST` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `CHK_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人',
  `CHK_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核时间',
  `VERSION` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'V2.0' COMMENT '版本号',
  `MD5KEY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MCH_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_message_route_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_message_route_info`;
CREATE TABLE `tbl_message_route_info`  (
  `message_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统消息类型',
  `exchange` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交换机名称',
  `routing_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路由key',
  `queue_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '队列名称',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `CHK_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人',
  `CHK_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`message_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_par_iso8583_fld
-- ----------------------------
DROP TABLE IF EXISTS `tbl_par_iso8583_fld`;
CREATE TABLE `tbl_par_iso8583_fld`  (
  `MSG_RULE_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报文规则代码',
  `FLD_IDX` decimal(4, 0) NOT NULL DEFAULT 0 COMMENT '域索引',
  `FLD_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域名称',
  `FLD_DSP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域描述',
  `FLD_FLAG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域标识',
  `FLD_LEN` decimal(4, 0) DEFAULT NULL COMMENT '域长度',
  `FLD_FILL_MODE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字符串填充方式',
  `FLD_FILL_CHAR` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字符串填充字符',
  `DEFAULT_VAL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域默认值',
  `FLD_LEN_ENC_RULE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域长度编码规则',
  `FLD_LEN_CAL_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域长度计算方式',
  `FLD_ENCODE_RULE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域编码规则',
  `FLD_DATA_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域数据类型',
  `DATA_FMT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据格式',
  `FLD_CHK_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否进行域检查',
  `REFUSE_CD1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拒绝码1',
  `REFUSE_CD2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拒绝码2',
  `REFUSE_CD3` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拒绝码3',
  `REFUSE_CD4` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拒绝码4',
  `IPC_DATA_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域解析后数据类型',
  `SAVE_ORG_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否在json中保存原始信息',
  `SPEC_USE_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特殊用法标识',
  `SUBFLD_RULE_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子域规则类型',
  `SUBFLD_RULE_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子域规则代码',
  `SUBFLD_NEW_OBJ_FLAG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子域是否创建对象',
  `FLD_PARAM` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '域参数',
  `MSG_PTL_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '报文协议代码',
  `REC_CRT_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `REC_UPD_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  `REC_UPD_TIMES` decimal(10, 0) DEFAULT NULL COMMENT '记录修改次数',
  `EVENT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '事件编号',
  `OPER_ST` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作标志',
  `OPR_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作员',
  `REC_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录编号',
  PRIMARY KEY (`MSG_RULE_CD`, `FLD_IDX`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[报文配置] ISO8583报文域配置表 - tbl_par_iso8583_fld' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_rec_bill_check_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rec_bill_check_log`;
CREATE TABLE `tbl_rec_bill_check_log`  (
  `CHECK_ID` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '勾兑流水',
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `PKG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包流水号',
  `REC_DATA_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据流水号',
  `TRANS_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账业务类型',
  `REC_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账日期',
  `SETTLE_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结算日期',
  `CARD_CITY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市',
  `CARD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `SOURCE_CHNL` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单渠道',
  `TRANS_CODE_OUT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部交易代码',
  `PLT_UN_KEY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台方交易唯一键',
  `PLT_SSN` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PLT_MCHNT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台方商户代码',
  `PLT_TXN_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台方交易日期',
  `PLT_TXN_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台方交易时间',
  `PLT_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台方订单号',
  `PLT_TXN_AMT` decimal(12, 0) DEFAULT NULL COMMENT '平台方交易金额',
  `PLT_STATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '平台方订单状态',
  `OTH_UN_KEY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方交易唯一键',
  `OTH_MCHNT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方商户号',
  `OTH_TXN_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方交易日期',
  `OTH_TXN_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方交易时间',
  `OTH_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方订单号',
  `OTH_TXN_AMT` decimal(12, 0) DEFAULT NULL COMMENT '对方交易金额',
  `OTH_TXN_STAT` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方交易状态',
  `REC_RESULT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账结果',
  `REC_CRT_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `REC_UPD_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  PRIMARY KEY (`CHECK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[对账处理] 对账单勾兑流水表- TBL_REC_BILL_CHECK_LOG' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_rec_bill_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rec_bill_log`;
CREATE TABLE `tbl_rec_bill_log`  (
  `REC_DATA_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账数据流水号',
  `UN_KEY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易唯一键',
  `TRANS_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账类型',
  `TXN_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `TXN_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `APP_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公众账号ID',
  `MCH_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方商户号',
  `SUB_MCH_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子商户号',
  `TERM_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备号',
  `PAY_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方订单号',
  `MCH_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户订单号',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户标识',
  `TXN_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `TXN_STAT` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易状态',
  `PAY_BANK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '付款银行',
  `BANK_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行订单号',
  `CURRENCY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '货币种类',
  `TXN_AMT` decimal(12, 0) DEFAULT NULL COMMENT '总金额',
  `MCH_AMT` decimal(12, 0) DEFAULT NULL COMMENT '企业红包金额',
  `PAY_REFUND_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方退款单号',
  `MCH_REFUND_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户退款单号',
  `REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '退款金额',
  `MCH_REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '企业红包退款金额',
  `REFUND_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款类型',
  `REFUND_STAT` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款状态',
  `PRODUCT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `MCH_DATA_PACK` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户数据包',
  `FEE_AMT` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手续费',
  `FEE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '费率',
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `PKG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包流水号',
  `REC_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账标志位',
  `PLT_SSN` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入库时间',
  `UPDATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `ACQ_INST_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SETTLE_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结算日期',
  `CARD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  PRIMARY KEY (`REC_DATA_ID`) USING BTREE,
  UNIQUE INDEX `unkey`(`UN_KEY`, `TXN_STAT`) USING BTREE COMMENT '流水唯一记录'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[对账处理] 对账单流水表- TBL_REC_BILL_LOG' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_rec_bill_logr
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rec_bill_logr`;
CREATE TABLE `tbl_rec_bill_logr`  (
  `REC_DATA_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账数据流水号',
  `UN_KEY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易唯一键',
  `TRANS_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账类型',
  `TXN_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `TXN_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `APP_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公众账号ID',
  `MCH_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方商户号',
  `SUB_MCH_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子商户号',
  `TERM_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备号',
  `PAY_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方订单号',
  `MCH_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户订单号',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户标识',
  `TXN_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `TXN_STAT` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易状态',
  `PAY_BANK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '付款银行',
  `BANK_ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行订单号',
  `CURRENCY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '货币种类',
  `TXN_AMT` decimal(12, 0) DEFAULT NULL COMMENT '总金额',
  `MCH_AMT` decimal(12, 0) DEFAULT NULL COMMENT '企业红包金额',
  `PAY_REFUND_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方退款单号',
  `MCH_REFUND_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户退款单号',
  `REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '退款金额',
  `MCH_REFUND_AMT` decimal(12, 0) DEFAULT NULL COMMENT '企业红包退款金额',
  `REFUND_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款类型',
  `REFUND_STAT` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款状态',
  `PRODUCT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `MCH_DATA_PACK` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户数据包',
  `FEE_AMT` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手续费',
  `FEE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '费率',
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `PKG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包流水号',
  `REC_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账标志位',
  `PLT_SSN` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入库时间',
  `UPDATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `ACQ_INST_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SETTLE_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结算日期',
  PRIMARY KEY (`REC_DATA_ID`) USING BTREE,
  UNIQUE INDEX `unkey`(`UN_KEY`, `TXN_STAT`) USING BTREE COMMENT '流水唯一记录'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[对账处理] 对账单流水表- TBL_REC_BILL_LOG' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_rec_file_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rec_file_log`;
CREATE TABLE `tbl_rec_file_log`  (
  `REC_DATA_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账数据流水号',
  `UN_KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易唯一键',
  `TXN_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '命令字类型',
  `INST_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构代码',
  `MCHNT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `SYS_SEQ` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求方流水号',
  `TXN_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `TXN_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `CARD_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `CARD_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `CARD_CNT` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡计数器',
  `TXN_AMT` decimal(12, 0) DEFAULT NULL COMMENT '交易金额',
  `BEF_AMT` decimal(12, 0) DEFAULT NULL COMMENT '交易前金额',
  `TRANS_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务类型',
  `TAC` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易TAC',
  `CARD_OPR_RLT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡操作结果',
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `PKG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包流水号',
  `REC_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账标志位',
  `PLT_SSN` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入库时间',
  `UPDATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `RSVD` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留使用',
  PRIMARY KEY (`REC_DATA_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[对账处理] 对账文件流水表- TBL_REC_FILE_LOG' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_rec_file_logr
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rec_file_logr`;
CREATE TABLE `tbl_rec_file_logr`  (
  `REC_DATA_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账数据流水号',
  `UN_KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易唯一键',
  `TXN_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '命令字类型',
  `INST_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构代码',
  `MCHNT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `SYS_SEQ` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求方流水号',
  `TXN_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `TXN_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `CARD_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `CARD_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `ORDER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `CARD_CNT` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡计数器',
  `TXN_AMT` decimal(12, 0) DEFAULT NULL COMMENT '交易金额',
  `BEF_AMT` decimal(12, 0) DEFAULT NULL COMMENT '交易前金额',
  `TRANS_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务类型',
  `TAC` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易TAC',
  `CARD_OPR_RLT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡操作结果',
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `PKG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据包流水号',
  `REC_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账标志位',
  `PLT_SSN` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '入库时间',
  `UPDATE_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `RSVD` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留使用',
  PRIMARY KEY (`REC_DATA_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[对账处理] 对账文件流水表- TBL_REC_FILE_LOG' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_rec_job
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rec_job`;
CREATE TABLE `tbl_rec_job`  (
  `MSG_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账数据包名',
  `TRANS_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PKG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包流水号',
  `INST_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构代码',
  `MCHNT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `REC_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账日期',
  `REC_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账类型',
  `SETTLE_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结算日期',
  `REC_JOB_STATE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账任务状态',
  `REC_CRT_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录创建时间',
  `REC_UPD_TIME` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录修改时间',
  `CITY_CODE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  PRIMARY KEY (`MSG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[对账处理] 对账任务表- TBL_REC_JOB' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_sign_contract
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sign_contract`;
CREATE TABLE `tbl_sign_contract`  (
  `contract_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '签约协议代码',
  `is_agency` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '2' COMMENT '是否为代理商模式 01:是 02:否',
  `contract_type` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签约类型 01:微信小程序 02:微信公众号 03 微信APP纯签约 04 银联手机控件免密',
  `display_account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账户展示名称',
  `oth_notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '第三方签约回调地址',
  `state` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签约状态 0:已签约 1:未签约(初始状态，或者微信返回未签约) 2：已解约 9:签约进行中 10:解约进行中',
  `plan_id` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模板id',
  `contract_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '代扣ID 加密存储',
  `contract_signed_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '协议签署时间',
  `contract_expired_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '协议到期时间',
  `contract_termination_mode` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '协议解约方式',
  `contract_terminated_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '协议解约时间',
  `contract_termination_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '解约备注',
  `request_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户请求签约时的序列号',
  `encrypt_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '加密方式',
  `app_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签约请求appid',
  `client_version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户端版本号。预签约时华为传入',
  `pre_entrustweb_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预签约id。预签约时，微信返回',
  `notify_firm_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通知签约/解约结果给手机厂商状态 0未通知 1：已成功通知 2：通知失败',
  `create_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改时间',
  `tr_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银联的trId',
  PRIMARY KEY (`contract_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自动充值签约表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_unionpay_mchnt
-- ----------------------------
DROP TABLE IF EXISTS `tbl_unionpay_mchnt`;
CREATE TABLE `tbl_unionpay_mchnt`  (
  `PLT_CH_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商户号',
  `MCH_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `TRADE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `API_KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'API密钥',
  `CERT_PATH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证书路径',
  `CERT_PASSWORD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证书密码',
  `PAY_NOTIFY_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付通知地址',
  `CHK_ST` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `CHK_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人',
  `CHK_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核时间',
  `VERSION` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '5.1.0' COMMENT '版本号',
  `ENCODING` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'UTF-8' COMMENT '编码格式',
  `SIGN_METHOD` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '签名算法',
  `REFUND_NOTIFY_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款通知地址',
  `BASE_REQ_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求地址前缀',
  PRIMARY KEY (`PLT_CH_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-银联] 银联全渠道支付商户信息表 tbl_unionpay_mchnt' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_wxpay_mchnt
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wxpay_mchnt`;
CREATE TABLE `tbl_wxpay_mchnt`  (
  `APPID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '账号ID',
  `MCH_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户号',
  `BASE_REQ_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求地址',
  `MCH_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `TRADE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `API_KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'API密钥',
  `CERT_PATH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证书路径',
  `CERT_PASSWORD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证书密码',
  `NOTIFY_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付通知地址',
  `CHK_ST` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `CREATE_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入人',
  `CREATE_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '录入时间',
  `CHK_UID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人',
  `CHK_TIME` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核时间',
  `REFUND_NOTIFY_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款通知地址',
  `SIGN_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签约解约通知地址(代扣)',
  `PLAN_ID` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模板ID(代扣)',
  PRIMARY KEY (`APPID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-微信] 微信支付商户信息表 TBL_WXPAY_MCHNT' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tl_response_record
-- ----------------------------
DROP TABLE IF EXISTS `tl_response_record`;
CREATE TABLE `tl_response_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片名称',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `card_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `card_physics_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号',
  `seid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'se UID',
  `req_access_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求时的唯一标识',
  `response_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应代码',
  `req_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求类型，请求接口类型',
  `error_msg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误描述',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `m_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `ext` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段',
  `log_index_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方系统日志索引',
  `reference_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通半条或客户流水号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2669635 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_abnormal_warning
-- ----------------------------
DROP TABLE IF EXISTS `tm_abnormal_warning`;
CREATE TABLE `tm_abnormal_warning`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增长',
  `columncode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预警类型',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `strategy` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1:根据seid去重 防止单个用户多次失败; 2: 根据失败数量',
  `warning_time` int(8) DEFAULT NULL COMMENT '时间(分钟)',
  `quantity` int(10) DEFAULT NULL COMMENT '失败订单数',
  `failure_rate` float DEFAULT NULL COMMENT '失败率(失败订单数/总订单数)',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0:关闭;1:启用',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_account_company
-- ----------------------------
DROP TABLE IF EXISTS `tm_account_company`;
CREATE TABLE `tm_account_company`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码',
  `business_code` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务代码 业务代码。resale:售卡；recharge：充值；tksale：退卡；All：综合(西安使用）',
  `ftp_ip` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'FTP服务器IP地址',
  `ftp_port` int(2) DEFAULT NULL COMMENT 'FTP端口号',
  `ftp_user` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'FTP登录用户',
  `ftp_passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'FTP登录密码(加密)',
  `src_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'FTP服务器读取文件路径',
  `desc_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地下载存储路径',
  `file_name` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称(变量用%s代替)(format：%s***%s)',
  `date_format` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日期格式(format：yyyyMMdd)参照SimpleDateFormat',
  `date_diff` int(2) DEFAULT NULL COMMENT '对账日期前后移(默认空或0)，-1：前一天，1：后一天',
  `bak_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备份文件目录名',
  `exec_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '执行时间(format：HHmmss)',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实体类名(包括包名)',
  `delimiter` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '行数据数据项分隔符默认\'|\'',
  `start_line` int(3) DEFAULT NULL COMMENT '解析开始行(默认2)',
  `end_line` int(3) DEFAULT NULL COMMENT '解析结束行(按倒数算)(默认2)',
  `charset` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '解析文件字符编码(默认GBK)',
  `multi_separator` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '多条head和foot之间行的分隔符 默认\'\\r\\n\'',
  `group_field` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分组字段(为空不分组)',
  `filter_field` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '过滤字段(为空不过滤)(format：cardOprRlt#1,2,3  EG：过滤掉cardOprRlt等于1或2或3的行)',
  `is_repeat` tinyint(1) DEFAULT 0 COMMENT '是否重复对账(0：否(默认) 1：是)',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态(0：关闭 1：开启)',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `line_rules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//每一行的拼装规则',
  `head_rules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//头部拼装规则\"VFC,total,amt\"，total代表总条数，amt代表总金额',
  `tail_rules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//结束标志 \"AAAAAAAAA\"',
  `line_before` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//目前是固定交易码，后续会再改动',
  `limit_count` int(10) DEFAULT NULL COMMENT '// 每个文件限制记录条数，不限制条数就不填',
  `batch_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//批次号 ',
  `ftp_upload_ip` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//文件上传ip',
  `ftp_upload_port` int(2) DEFAULT NULL COMMENT '//文件上传地址端口',
  `upload_file_path` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//文件上传地址',
  `upload_file_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//文件上传名字',
  `upload_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//上传用户',
  `upload_passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//上传文件密码（加密）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_account_data
-- ----------------------------
DROP TABLE IF EXISTS `tm_account_data`;
CREATE TABLE `tm_account_data`  (
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `model_code` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_type` int(2) NOT NULL,
  `account_date` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `req_access_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_amt` decimal(12, 0) DEFAULT NULL,
  `order_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`order_no`, `account_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_account_data_h
-- ----------------------------
DROP TABLE IF EXISTS `tm_account_data_h`;
CREATE TABLE `tm_account_data_h`  (
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `model_code` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_type` int(2) NOT NULL COMMENT '1：充值 2： 售卡',
  `account_date` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `req_access_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_amt` decimal(12, 0) DEFAULT NULL,
  `order_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '补充记录时需要该字段备注说明',
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  INDEX `taah_index`(`card_code`, `account_date`, `order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '2018-03-23(包括)之前的对账数据,其中开卡(12月31号及之前的财务没有记录, 充值的11月30号及之前的没有记录, 数据库相关记录以当时表查询结果补录)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_account_file
-- ----------------------------
DROP TABLE IF EXISTS `tm_account_file`;
CREATE TABLE `tm_account_file`  (
  `card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片/城市代码',
  `account_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对账日期',
  `business_code` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对账业务代码',
  `file_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '文件类型：1：上传 2：下载',
  `file_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `file_path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件路径',
  `file_status` tinyint(2) DEFAULT NULL COMMENT '文件状态',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '统计汇总概要信息',
  `account_cnt` tinyint(2) DEFAULT NULL COMMENT '对账计数器',
  `error_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误描述',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`card_code`, `account_date`, `business_code`, `file_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理对账文件上传和下载  用于判断是否是重复对账' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_account_file_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_account_file_log`;
CREATE TABLE `tm_account_file_log`  (
  `card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片代码',
  `account_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对账日期',
  `business_code` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务代码,关联tm_account_company表',
  `txn_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '命令字类型',
  `mchnt_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `serno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通卡公司流水号(广西：系统参照号  西安：平台流水号)',
  `req_serno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求流水号(广西：终端交易序列号  西安：平台方请求方流水号)',
  `txn_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `txn_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `phy_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `txn_amt` decimal(12, 0) DEFAULT NULL COMMENT '交易金额',
  `dif_amt` decimal(12, 0) DEFAULT NULL COMMENT '交易差额',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易TAC',
  `MAC2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'MAC2',
  `card_opr_rlt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡操作结果',
  `order_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单状态',
  `result` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账结果\r\n00：对账平\r\n01：通卡公司多\r\n02：通卡公司少\r\n03：单边账(通卡公司有成功记录)\r\n04：单边账(VFC有成功记录)\r\n05：单边账(通卡公司有半条,VFC有成功记录)\r\n06：单边账(通卡公司有半条,VFC无记录)\r\n07：其他情况',
  `rlt_desc` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账结果描述',
  `error_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误代码',
  `error_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误描述',
  `msg_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `check_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '勾兑流水',
  `status` tinyint(1) DEFAULT NULL COMMENT '是否解析(0：未解析 1：已解析)',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建(入库)时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '与通卡公司对账结果信息录入表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_account_file_log_h
-- ----------------------------
DROP TABLE IF EXISTS `tm_account_file_log_h`;
CREATE TABLE `tm_account_file_log_h`  (
  `card_code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片代码',
  `account_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对账日期',
  `business_code` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务代码,关联tm_account_company表',
  `txn_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '命令字类型',
  `mchnt_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `serno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通卡公司流水号(广西：系统参照号  西安：平台流水号)',
  `req_serno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求流水号(广西：终端交易序列号  西安：平台方请求方流水号)',
  `txn_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `txn_time` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `phy_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `txn_amt` decimal(12, 0) DEFAULT NULL COMMENT '交易金额',
  `dif_amt` decimal(12, 0) DEFAULT NULL COMMENT '交易差额',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易TAC',
  `MAC2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'MAC2',
  `card_opr_rlt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡操作结果',
  `order_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单状态',
  `result` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账结果\r\n00：对账平\r\n01：通卡公司多\r\n02：通卡公司少\r\n03：单边账(通卡公司有成功记录)\r\n04：单边账(VFC有成功记录)\r\n05：单边账(通卡公司有半条,VFC有成功记录)\r\n06：单边账(通卡公司有半条,VFC无记录)\r\n07：其他情况',
  `rlt_desc` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账结果描述',
  `error_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误代码',
  `error_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '错误描述',
  `msg_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账数据包名',
  `check_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '勾兑流水',
  `status` tinyint(1) DEFAULT NULL COMMENT '是否解析(0：为解析 1：已解析)',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建(入库)时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账日志备份' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_activity
-- ----------------------------
DROP TABLE IF EXISTS `tm_activity`;
CREATE TABLE `tm_activity`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动代码',
  `activity_name` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动名称',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码',
  `firm_code` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '厂商代码',
  `model_code` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型代码',
  `activity_main_type` int(1) DEFAULT NULL COMMENT '活动主类型(1:充值活动 2：开卡+充值活动)',
  `activity_type` int(1) DEFAULT NULL COMMENT '活动类型(0：减免 1：满减 2:百分比（只在测试环境用）) 3：开卡+充值时，根据充值金额满减',
  `activity_status` int(1) DEFAULT NULL COMMENT '活动状态(0:关闭 1:启用)',
  `discount_num` int(1) DEFAULT NULL COMMENT '优惠名额',
  `recharge_amt` decimal(12, 3) DEFAULT NULL COMMENT '充值优惠基数(针对满减活动) 单位是分',
  `subtract_amt` decimal(12, 3) DEFAULT NULL COMMENT '优惠金额 单位是分',
  `activity_start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动开始时间',
  `activity_end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动结束时间',
  `activity_switch` int(1) DEFAULT NULL COMMENT '活动开关(0:未开始 1：进行中 2：已结束)',
  `user_id` bigint(18) DEFAULT NULL COMMENT '创建活动账户',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_black_list
-- ----------------------------
DROP TABLE IF EXISTS `tm_black_list`;
CREATE TABLE `tm_black_list`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动代码',
  `imei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机串号',
  `seid` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `cplc` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'cplc',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 409 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动黑名单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_business_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_business_opt_log`;
CREATE TABLE `tm_business_opt_log`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `opt_content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作内容',
  `opt_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作页面',
  `opt_userid` bigint(18) DEFAULT NULL COMMENT '操作用户ID',
  `opt_user_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作用户名',
  `opt_time` datetime(0) DEFAULT NULL COMMENT '操作/创建时间',
  `opt_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作IP',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 622 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '开卡/充值面值的变更、活动的创建及修改的操作记录(业务操作流水)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_card
-- ----------------------------
DROP TABLE IF EXISTS `tm_card`;
CREATE TABLE `tm_card`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增长',
  `cardname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型名字',
  `startamt` decimal(10, 2) DEFAULT NULL COMMENT '起充金额',
  `increasingamt` int(10) DEFAULT NULL COMMENT '递增金额',
  `status` int(1) DEFAULT NULL COMMENT '卡片服务状态(0:上线 1:开卡关闭 2:充值关闭 3:迁出关闭 4:迁入关闭 5:新增（初始状态） 6:下线 7:迁卡关闭 8：开卡和充值都关闭)',
  `userid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `cardcode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片代码(四位数字字符串标识:0001...)',
  `createtime` datetime(0) DEFAULT NULL COMMENT '卡片上线时间',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '卡片更新时间',
  `card_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型。1:亿速码卡',
  `card_stock_num` int(10) DEFAULT 0 COMMENT '卡片库存数量',
  `card_surplus_num` int(10) DEFAULT NULL COMMENT '卡片剩余数量(每小时更新一次)',
  `surplus_provisions` int(10) DEFAULT NULL COMMENT '剩余充值备付金 (元)',
  `remote_url` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通卡使用范围和优惠描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_card_move
-- ----------------------------
DROP TABLE IF EXISTS `tm_card_move`;
CREATE TABLE `tm_card_move`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `b_card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '//迁移前卡号',
  `b_order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移前订单号',
  `b_cplc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移前cplc',
  `b_device_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁卡前机型',
  `b_seid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁卡前seid',
  `b_imei` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁卡前imei',
  `a_card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移后卡号',
  `a_order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移后订单号',
  `a_cplc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移后cplc',
  `a_seid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移后seid',
  `a_imei` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移后imei',
  `a_device_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁卡后机型',
  `amount` decimal(12, 0) DEFAULT NULL COMMENT '//迁卡金额',
  `fee` decimal(12, 0) DEFAULT NULL COMMENT '//迁卡费用',
  `real_fee` decimal(12, 0) DEFAULT NULL COMMENT '//实际迁卡费用',
  `status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁卡移资状态',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '//迁卡移资类型 默认为无卡迁卡 1；',
  `outtime` datetime(0) DEFAULT NULL COMMENT '//迁出时间',
  `intime` datetime(0) DEFAULT NULL COMMENT '//迁入时间',
  `createtime` datetime(0) DEFAULT NULL,
  `updatetime` datetime(0) DEFAULT NULL,
  `cardcode` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡片代码',
  `eventid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//迁移资唯一id',
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '//',
  `ext4` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 221 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_card_threshold_warning
-- ----------------------------
DROP TABLE IF EXISTS `tm_card_threshold_warning`;
CREATE TABLE `tm_card_threshold_warning`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增长',
  `cardcode` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片代码(四位数字字符串标识:0001...)',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '库存类型',
  `spare_quantity` int(8) DEFAULT NULL COMMENT '空余数量',
  `status` int(1) DEFAULT NULL COMMENT '1:启用;0:关闭',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_delete_card_app
-- ----------------------------
DROP TABLE IF EXISTS `tm_delete_card_app`;
CREATE TABLE `tm_delete_card_app`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `jobnum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工单号',
  `createtime` datetime(0) DEFAULT NULL COMMENT '工单创建时间',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `source_chnl` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商标识',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `cardnumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `cardcode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片code',
  `IMEI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IMEI',
  `SEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `cplc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cplc',
  `phonetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机类型',
  `refund_account_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款账号类型  1:支付宝  2:银行卡号',
  `refund_account_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款账号  和 退款账号类型对应',
  `cardIsDeleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '卡片是否已删除，0为否  1为是  2为卡片正在删除中',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '处理状态',
  `refund_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否已给用户退款  1:已退款',
  `camount` decimal(10, 0) DEFAULT NULL COMMENT '开卡金额',
  `balance` decimal(10, 0) DEFAULT NULL COMMENT '卡内余额',
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款理由',
  `comment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `op_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作原因',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '对本条记录最后操作时间',
  `checkip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批人ip',
  `checkaccount` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批人账户',
  `accounttype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账户类型',
  `user_id` bigint(20) DEFAULT NULL,
  `tk_ykt_req` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退卡一卡通响应回执编号',
  `tk_card_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通返回卡类型',
  `tk_handle_time` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通返回退卡时间',
  `tk_terminal_trans_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退卡请求流水号(终端)',
  `tk_received_balance_date` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '可领余额日期',
  `tk_card_balance` int(10) DEFAULT NULL COMMENT '一卡通返回卡片余额(单位:分)',
  `tk_real_return_cash` int(10) DEFAULT NULL COMMENT '一卡通返回应退金额(单位:分)',
  `tk_query_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '查询状态 1为可办理领取余额;其他不可',
  `tk_return_card_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通返回退卡日期',
  `tk_ykt_poundage` int(10) DEFAULT NULL COMMENT '退卡一卡通手续费',
  `deletecardtype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '/删卡类型  1/代表删卡场景 2/代表维修场景 3/代表迁卡场景',
  `create_id` bigint(18) DEFAULT NULL COMMENT '//创建者id',
  `tk_reference_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//领取余额接口的系统参照号',
  `refund_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '//1代表只退开卡费，2代表只退卡余额，3代表都不退，0代表都退，',
  `card_file_0015` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'card_file_0015文件',
  `card_consume` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `app_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '申请单号',
  `batch_no` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '批次号',
  `card_balance` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删卡时手机上传的卡内余额',
  `hw_card_balance` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删卡时手机上传的卡内余额(华为)',
  `reserve` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段  可将多条数据用 | 隔开',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `card_no_seq`(`cardnumber`) USING BTREE,
  INDEX `jobnum_seq`(`jobnum`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44909 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_delete_card_op_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_delete_card_op_log`;
CREATE TABLE `tm_delete_card_op_log`  (
  `delete_card_app_id` bigint(20) DEFAULT NULL,
  `last_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updatetime` datetime(0) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_delete_card_refund_detail_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_delete_card_refund_detail_log`;
CREATE TABLE `tm_delete_card_refund_detail_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_log_id` bigint(20) NOT NULL COMMENT '总记录',
  `se_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机seid',
  `card_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片类型',
  `order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退款订单号',
  `order_real_amt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单金额',
  `real_refund_balance` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实际退款金额',
  `refund_response_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款响应码',
  `refund_response_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款响应描述',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '001' COMMENT '退款状态  // 001未退款 002退款失败  003退款成功',
  `ext2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段2',
  `ext3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留字段3',
  `createtime` datetime(0) DEFAULT NULL,
  `updatetime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1669 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_delete_card_refund_total_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_delete_card_refund_total_log`;
CREATE TABLE `tm_delete_card_refund_total_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `se_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机seid',
  `source` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录来源，0是deleteHandler创建，1是formatEseHandler创建，2是OMS平台创建，3是其它来源',
  `card_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片代码 130000',
  `card_balance` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡片上送余额',
  `real_refund_balance` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应退款总金额',
  `hw_card_balance` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片上送余额(华为)',
  `order_count` int(10) DEFAULT NULL COMMENT '应退款订单数量',
  `refund_success` int(10) NOT NULL COMMENT '实际退款成功数',
  `refund_success_amt` int(10) NOT NULL COMMENT '实际退款金额',
  `delete_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删卡是否已完 0:未完成   1:已完成',
  `is_create_jobnum` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否创建了删卡工单//1代表创建，0代表未创建',
  `reason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//无法创建工单的原因',
  `jobnum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//删卡工单号',
  `order_is_enough` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '//1代表足够，0代表不足够',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '001' COMMENT '//状态 001代表未退款  002代表部分退款 003代表退款成功',
  `createtime` datetime(0) DEFAULT NULL,
  `updatetime` datetime(0) DEFAULT NULL,
  `cardnumber` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡号',
  `card_seq` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//琴岛通,卡计数器',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `se_id_index`(`se_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5957 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_dict
-- ----------------------------
DROP TABLE IF EXISTS `tm_dict`;
CREATE TABLE `tm_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dict_hash` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典key',
  `dict_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dict_val` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dict_ord` int(10) DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `union_unique`(`dict_hash`, `dict_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_dict_firm
-- ----------------------------
DROP TABLE IF EXISTS `tm_dict_firm`;
CREATE TABLE `tm_dict_firm`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增长',
  `firmname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商名字',
  `userid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `firmcode` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '厂商代码',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_dict_model
-- ----------------------------
DROP TABLE IF EXISTS `tm_dict_model`;
CREATE TABLE `tm_dict_model`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增长',
  `dictfirmid` bigint(18) DEFAULT NULL COMMENT '手机厂商id(字典)',
  `modelname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型',
  `userid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `modelcode` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型代码(三位厂商代码+四位数字字符串标识:A010001...)',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_export_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_export_opt_log`;
CREATE TABLE `tm_export_opt_log`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `export_content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '查询参数内容',
  `export_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '导出页面',
  `export_count` int(10) DEFAULT NULL COMMENT '导出数据条数',
  `export_user_id` bigint(18) DEFAULT NULL COMMENT '操作用户Id',
  `export_user_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作用户名',
  `export_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作IP',
  `export_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据导出的操作记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_function
-- ----------------------------
DROP TABLE IF EXISTS `tm_function`;
CREATE TABLE `tm_function`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(6) DEFAULT NULL COMMENT '功能类型',
  `urlprefix` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url权限标记',
  `viewurl` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '功能url',
  `parent_id` int(11) DEFAULT NULL COMMENT '父功能',
  `status` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0:删除；1:启用',
  `idx` int(6) DEFAULT NULL COMMENT '序号',
  `icon_class` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_ganzhou_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_ganzhou_account`;
CREATE TABLE `tm_ganzhou_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `biz_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务类型 1:开卡   2:充值',
  `serial` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '我们生成的 与 通卡开卡订单绑定的唯一流水号',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开卡成功 响应的 唯一用户Id',
  `term_id_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开卡成功 响应的 唯一终端Id',
  `trade_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间  yyyy-MM-dd HH:mm:ss',
  `third_order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '第三方订单号',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `balance_before` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易前余额',
  `balance_after` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易后余额',
  `trade_amt` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `card_seq` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值计数器',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0:成功 1:失败 2:未知 3:下单成功',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_group
-- ----------------------------
DROP TABLE IF EXISTS `tm_group`;
CREATE TABLE `tm_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `groupintro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_hainan_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_hainan_account`;
CREATE TABLE `tm_hainan_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户订单号',
  `tran_sno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易流水号',
  `eqp_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备终端编号',
  `card_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易卡号',
  `mrch_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户ID',
  `batch_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '批次号',
  `card_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡类型',
  `card_balance` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值前卡余额',
  `tran_amt` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值金额（分）',
  `tran_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期YYYYMMDD',
  `tran_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间HHMMSS',
  `recharge_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值渠道（详细待定）   09-现金 01-微信 02-支付宝 00-银联',
  `eqp_sno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备流水号',
  `tran_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易大类',
  `tran_sub_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易小类',
  `settle_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账务日期',
  `tran_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易值',
  `sub_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '款项所属科目代码',
  `tran_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_hebei_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `tm_hebei_account_detail`;
CREATE TABLE `tm_hebei_account_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sam_card_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SAM卡号(虚拟SAM)',
  `card_no` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `accountNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账户号',
  `trade_amt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易金额',
  `trans_type` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `trans_state` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易状态',
  `trans_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `trans_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `ykt_order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '一卡通订单号',
  `mchnt_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作方商户号',
  `mchnt_plt_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作方平台代码',
  `plt_settle_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作方结算日期',
  `plt_order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作方平台订单号',
  `plt_time` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作方订单时间',
  `state` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '记录状态',
  `create_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_hefei_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_hefei_account`;
CREATE TABLE `tm_hefei_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `trade_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间  yyyy-MM-dd HH:mm:ss',
  `trade_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流水号',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `trade_amt` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 0:成功 1:失败 2:未知 3:未更新',
  `terminal_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端号',
  `mrch_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户号',
  `settle_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '清算时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 258 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_mobile_firm
-- ----------------------------
DROP TABLE IF EXISTS `tm_mobile_firm`;
CREATE TABLE `tm_mobile_firm`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `cardid` bigint(18) DEFAULT NULL COMMENT '卡片id',
  `dictfirmid` bigint(18) DEFAULT NULL COMMENT '手机厂商id(字典)',
  `firmname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机厂商',
  `status` int(1) DEFAULT NULL COMMENT '手机厂商服务状态(0:上线 1:开卡关闭 2:开卡充值关闭 3:下线 4:系统服务中)',
  `userid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `createtime` datetime(0) DEFAULT NULL COMMENT '该厂商的卡片上线时间',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '该厂商的卡片更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_mobile_model
-- ----------------------------
DROP TABLE IF EXISTS `tm_mobile_model`;
CREATE TABLE `tm_mobile_model`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `cardid` bigint(18) DEFAULT NULL COMMENT '卡片id',
  `firmid` bigint(18) DEFAULT NULL COMMENT '厂商id',
  `dictmodelid` bigint(18) DEFAULT NULL COMMENT '机型id(字典)',
  `modelname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型',
  `amt` decimal(12, 2) DEFAULT NULL COMMENT '机型开卡金额',
  `rechargeparvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型开卡充值面值',
  `aerialrechargeparvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型空中充值面值',
  `status` int(1) DEFAULT NULL COMMENT '机型服务状态(0:上线 1:开卡关闭 2:开卡充值关闭 3:下线 4:系统服务中)',
  `userid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `cardcode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码',
  `modelcode` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型代码 例如 A010001',
  `kk_discount_type` int(1) DEFAULT NULL COMMENT '开卡优惠类型(1:百分比/2:具体金额)',
  `kk_discount` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开卡优惠(百分比:0.7 金额:50)',
  `cz_discount_type` int(1) DEFAULT NULL COMMENT '充值优惠类型(1:具体金额/2:百分比)',
  `cz_discount` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值优惠(百分比:0.7 金额:50)',
  `fixed_quota` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值满多少固定额度时，手续费收取',
  `createtime` datetime(0) DEFAULT NULL COMMENT '该机型卡片上线时间',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '该机型卡片更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1657 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_ningbo_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_ningbo_account`;
CREATE TABLE `tm_ningbo_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `trade_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间 yyyymmddHHmmss',
  `trade_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流水号',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `batch_no` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易批次',
  `recharge_amt` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `cpu_card_balance` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户剩余金额(元)',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 0:成功 1:失败 2:未知 3:未更新',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 437 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_order_activities
-- ----------------------------
DROP TABLE IF EXISTS `tm_order_activities`;
CREATE TABLE `tm_order_activities`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_code` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动代码',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `model_code` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主机型内部编号',
  `sk_fee` decimal(12, 0) DEFAULT NULL COMMENT '开卡费(折扣前)',
  `cz_fee` decimal(12, 0) DEFAULT NULL COMMENT '充值金额(折扣前)',
  `order_real_amount` decimal(12, 0) DEFAULT NULL COMMENT '订单实际支付金额（单位：分）',
  `loc_trans_date` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易日期（订单生成日期）',
  `loc_trans_time` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本地交易时间（订单生成时间）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `toa_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68411 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[业务数据-订单活动表] 订单活动表-tm_order_activities' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_order_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_order_opt_log`;
CREATE TABLE `tm_order_opt_log`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_serno` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单流水号-order_detail表platform_serial_number',
  `opt_type` int(1) DEFAULT NULL COMMENT '操作类型\r\n0:设为成功\r\n1:退款',
  `order_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单类型 0：开卡  1：充值  2：开卡+充值',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `source_chnl` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单来源渠道',
  `old_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新前订单状态',
  `order_status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新后订单状态',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `card_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码',
  `refund_amt` decimal(12, 0) DEFAULT NULL COMMENT '退款金额',
  `card_external_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片外部编码（用于对接其他系统中的卡片唯一标识）',
  `resp_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应码',
  `resp_desc` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应码描述',
  `opt_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作状态',
  `operator` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核账号',
  `opt_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核IP',
  `user_id` bigint(18) DEFAULT NULL COMMENT '用户id',
  `role_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号类型',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_create_time`(`create_time`) USING BTREE,
  INDEX `index_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5199320 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_permission
-- ----------------------------
DROP TABLE IF EXISTS `tm_permission`;
CREATE TABLE `tm_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `showname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `urlprefix` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `regulation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL COMMENT '属于哪个功能',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_qingdao_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_qingdao_account`;
CREATE TABLE `tm_qingdao_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对账类型:对应代码里面的请求类型 RequestTypeEnum',
  `out_order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户订单号',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `card_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡内号',
  `card_no` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡面号',
  `card_cnt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡计数器',
  `order_date` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '圈存申请时间',
  `mount` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '金额',
  `collate_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片状态',
  `card_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86752 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_refund_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `tm_refund_opt_log`;
CREATE TABLE `tm_refund_opt_log`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID,自增长',
  `refund_order_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款订单号',
  `order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `refund_amt` decimal(12, 0) DEFAULT NULL COMMENT '退款金额(分)',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  `resp_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应码',
  `resp_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应信息',
  `refnum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '中心业务流水号',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5694 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_refund_opt_log_repair
-- ----------------------------
DROP TABLE IF EXISTS `tm_refund_opt_log_repair`;
CREATE TABLE `tm_refund_opt_log_repair`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID,自增长',
  `refund_order_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款订单号(易宝：支付流水号+补录日期)',
  `order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `refund_amt` decimal(12, 0) DEFAULT NULL COMMENT '退款金额(分)',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  `resp_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应码',
  `resp_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '响应信息',
  `refnum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '中心业务流水号',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1388 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_resource_sync
-- ----------------------------
DROP TABLE IF EXISTS `tm_resource_sync`;
CREATE TABLE `tm_resource_sync`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `source_chnl` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片码',
  `card_surplus_num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '未使用的卡数据',
  `surplus_provisions` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '剩余的备付金',
  `create_tm` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4494 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_role
-- ----------------------------
DROP TABLE IF EXISTS `tm_role`;
CREATE TABLE `tm_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roleintro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ROLE' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_search_balance
-- ----------------------------
DROP TABLE IF EXISTS `tm_search_balance`;
CREATE TABLE `tm_search_balance`  (
  `id` bigint(5) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '更细时间',
  `delete_card_app_id` bigint(5) DEFAULT NULL COMMENT '删卡表id',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '001' COMMENT '定时查询异常状态，001/查询中；002/查询超时；003：查询失败；1：存在；0：已删除',
  `cardno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号',
  `data_status` tinyint(4) DEFAULT 1 COMMENT '数据的状态。1/数据存在 0/数据已删除',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1856 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_shenyang_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_shenyang_account`;
CREATE TABLE `tm_shenyang_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型 recharge   resale delete',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `trade_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间  yyyy-MM-dd HH:mm:ss',
  `trade_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `balance_before` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易前余额',
  `trade_amt` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `balance_after` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易后余额',
  `card_seq` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值计数器',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 0:成功 1:失败 2:未知 3:未更新',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1064 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_suzhou_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_suzhou_account`;
CREATE TABLE `tm_suzhou_account`  (
  `account_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账类型  售卡:resale 充值:recharge',
  `cardNo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IC卡卡号',
  `online_counter` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IC交易序列号',
  `trade_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型 01:圈存  03:圈提',
  `amount` decimal(12, 0) DEFAULT NULL COMMENT '交易金额',
  `balance` decimal(12, 0) DEFAULT NULL COMMENT '交易前余额\r\n',
  `terminal_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端编号',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账计数器',
  `channel_no` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值渠道',
  `payment_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付流水',
  `trade_serial` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易流水',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值 1:成功 2:失败 3:可疑  开卡 9000:成功 9001:失败 9002:可疑',
  `trade_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `trade_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `sequence_no` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '序号',
  `ASN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identify` varchar(84) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机唯一标识',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `platform_serial_number` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '平台流水号',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`trade_serial`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '与通卡公司对账文件信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_user
-- ----------------------------
DROP TABLE IF EXISTS `tm_user`;
CREATE TABLE `tm_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `realname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'email',
  `jobuuid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  `last_time` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `warehouses` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属仓库',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 1:正常;0:删除',
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系方式',
  `home_page` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '首页显示',
  `jobnumber` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `dac_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据访问权限',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_user_store
-- ----------------------------
DROP TABLE IF EXISTS `tm_user_store`;
CREATE TABLE `tm_user_store`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增长',
  `provincecode` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省份代码(A-Z)',
  `citycode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码(00-99)',
  `areacode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '县/区代码(00-99)',
  `storecode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '门店代码(00-99)',
  `storeid` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '门店id(省份代码+城市代码+县/区代码+门店代码)',
  `roleid` tinyint(1) DEFAULT NULL COMMENT '角色权限(事先设定)\r\neg\r\n一级管理员[全国]\r\n二级管理员[省份]\r\n三级管理员[城市]\r\n四级管理员[县区]\r\n门店',
  `userid` bigint(18) DEFAULT NULL COMMENT '用户id',
  `status` tinyint(1) UNSIGNED ZEROFILL DEFAULT 0 COMMENT '状态(默认0:正常)\r\n0:正常\r\n1:停用',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_white_list
-- ----------------------------
DROP TABLE IF EXISTS `tm_white_list`;
CREATE TABLE `tm_white_list`  (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '活动代码',
  `imei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机串号',
  `seid` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `cplc` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cplc',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 456 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动黑名单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_wulumuqi_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_wulumuqi_account`;
CREATE TABLE `tm_wulumuqi_account`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `trade_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间 yyyymmddHHmmss',
  `trade_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '流水号',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `recharge_amt` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `response` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '接口响应',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态 0:成功 1:失败 2:未知 3:未更新',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_wuxi_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_wuxi_account`;
CREATE TABLE `tm_wuxi_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `trade_type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易类型 D01:开卡 D02:充值 D03:退卡退款',
  `trade_serial_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易订单号。无锡订单号。唯一。',
  `trade_time` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易时间 yyyyMMddHHmmss',
  `trade_amt` bigint(20) NOT NULL COMMENT '交易金额 十进制  单位分',
  `trade_amt_before` bigint(20) DEFAULT NULL COMMENT '交易前金额 十进制 单位分，开卡和退款不需要',
  `trade_amt_after` bigint(20) DEFAULT NULL COMMENT '交易后金额  十进制 单位分，开卡和退款不需要',
  `trade_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易状态 01 成功 02 失败 03 不明',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00' COMMENT '状态 00：未对账 01：对账结果成功 02：对账结果失败 03:已上传订单交易明细文件',
  `card_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号 order_detail.order_no 订单号在本表不唯一。因为开卡加充值订单会生成两条数据',
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账失败原因 00 成功 01 订单信息匹配失败 卡号+订单+ 金额',
  `source_channel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道来源 数字',
  `reserve` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tm_wuxi_account_trade_serial_no`(`trade_serial_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 279 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '无锡对账。开卡、充值、删卡退款都要对账' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_xi_an_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_xi_an_account`;
CREATE TABLE `tm_xi_an_account`  (
  `txncode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '命令字类型',
  `instid` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机构代码',
  `mchntid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户代码',
  `syssesq` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求方流水号',
  `txndate` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `txntime` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `city` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `cardno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `ordid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `txmamt` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `cardcnt` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡计数器',
  `befamt` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易前金额',
  `transtype` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务类型',
  `tac` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易tac',
  `cardoprrlt` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡操作结果',
  `settle_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_plt_ssn` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `refnum` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`syssesq`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_yantai_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_yantai_account`;
CREATE TABLE `tm_yantai_account`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `third_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//通卡分配的代码',
  `trade_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易代码',
  `request_serial` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//我方流水号',
  `response_serial` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//卡公司流水号',
  `trade_time` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//YYYYMMDDhhmmss',
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//市民卡号',
  `trade_money` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//交易金额',
  `create_time` datetime(0) DEFAULT NULL,
  `modify_time` datetime(0) DEFAULT NULL,
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//0对应delete_card_app的status',
  `job_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//对应delete_card_app的工单号',
  `flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//0未完成退款1完成退款',
  `return_card_date` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '//退卡时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_zhuhai_account
-- ----------------------------
DROP TABLE IF EXISTS `tm_zhuhai_account`;
CREATE TABLE `tm_zhuhai_account`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `txn_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型',
  `req_seq` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求流水号',
  `txn_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易日期',
  `txn_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易时间',
  `old_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款前我方订单状态',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方订单状态',
  `new_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款后我方订单状态',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `source_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '来源通道',
  `amt` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易金额',
  `pay_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易方式类型',
  `ord_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对方订单号',
  `order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '我方订单号',
  `create_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `modify_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tm_zhuhai_backcard
-- ----------------------------
DROP TABLE IF EXISTS `tm_zhuhai_backcard`;
CREATE TABLE `tm_zhuhai_backcard`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `job_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 我方工单号',
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `ord_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退卡订单号',
  `apud_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'apdu内容',
  `apdu_num` int(2) DEFAULT NULL COMMENT 'apdu数量',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退卡状态 020:退卡申请 025:退卡结果确认成功',
  `create_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_caller
-- ----------------------------
DROP TABLE IF EXISTS `tmm_caller`;
CREATE TABLE `tmm_caller`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `caller` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用方。接口中的caller',
  `caller_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '调用方名称',
  `firm_id` int(10) NOT NULL COMMENT '手机厂商id tmm_firm.id',
  `source_channel` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '渠道来源 数字',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'caller表，关联caller和手机厂商' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_caller_b
-- ----------------------------
DROP TABLE IF EXISTS `tmm_caller_b`;
CREATE TABLE `tmm_caller_b`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT '主键ID',
  `caller` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用方。接口中的caller',
  `caller_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '调用方名称',
  `firm_id` int(10) NOT NULL COMMENT '手机厂商id tmm_firm.id',
  `source_channel` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '渠道来源 数字',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_card_device_model
-- ----------------------------
DROP TABLE IF EXISTS `tmm_card_device_model`;
CREATE TABLE `tmm_card_device_model`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码 tm_card.cardcode',
  `firm_id` int(10) DEFAULT NULL COMMENT '厂商id tmm_firm.id',
  `model_id` int(10) DEFAULT NULL COMMENT '机型id tmm_model.id -1表示所有机型',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '型号 tmm_device_model.device_model -1表示所有型号',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态(0:上线 1:开卡关闭 2:充值关闭 3:迁出关闭 4:迁入关闭 5:新增（初始状态） 6:下线 7:迁卡关闭 8:开卡和充值都关闭) ',
  `sale_amount` bigint(18) DEFAULT NULL COMMENT '开卡金额 单位分 十进制',
  `sale_recharge_values` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开卡+充值面值',
  `recharge_values` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值面值',
  `recharge_fee_type` tinyint(2) DEFAULT 7 COMMENT '充值手续费收费类型（为空表示不收充值手续费） 4：按区间收充值费 5：固定值充值费 6：充值低于某金额收手续费  7:不收手续费',
  `recharge_fee_base` bigint(18) DEFAULT NULL COMMENT '充值手续费收费基数 单位分 十进制',
  `recharge_fee` bigint(18) DEFAULT NULL COMMENT '充值手续费收费金额 单位分 十进制 实际收费金额有变化',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14762 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_card_device_model_b
-- ----------------------------
DROP TABLE IF EXISTS `tmm_card_device_model_b`;
CREATE TABLE `tmm_card_device_model_b`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT 'ID',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片代码 tm_card.cardcode',
  `firm_id` int(10) DEFAULT NULL COMMENT '厂商id tmm_firm.id',
  `model_id` int(10) DEFAULT NULL COMMENT '机型id tmm_model.id -1表示所有机型',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '型号 tmm_device_model.device_model -1表示所有型号',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态(0:上线 1:开卡关闭 2:充值关闭 3:迁出关闭 4:迁入关闭 5:新增（初始状态） 6:下线 7:迁卡关闭 8：开卡和充值都关闭)',
  `sale_amount` bigint(18) DEFAULT NULL COMMENT '开卡金额 单位分 十进制',
  `sale_recharge_values` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开卡+充值面值',
  `recharge_values` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值面值',
  `recharge_fee_type` tinyint(2) DEFAULT 7 COMMENT '充值手续费收费类型 4：按区间收充值费 5：固定值充值费 6：充值低于某金额收手续费 7:不收手续费',
  `recharge_fee_base` bigint(18) DEFAULT NULL COMMENT '充值手续费收费基数 单位分 十进制',
  `recharge_fee` bigint(18) DEFAULT NULL COMMENT '充值手续费收费金额 单位分 十进制 实际收费金额有变化',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_card_firm
-- ----------------------------
DROP TABLE IF EXISTS `tmm_card_firm`;
CREATE TABLE `tmm_card_firm`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片id tm_card.id',
  `firm_id` int(10) DEFAULT NULL COMMENT '手机厂商id',
  `status` tinyint(2) DEFAULT NULL COMMENT '手机厂商服务状态(0:上线 1:开卡关闭 2:充值关闭 3:迁出关闭 4:迁入关闭 5:新增（初始状态） 6:下线 7:迁卡关闭 8:开卡和充值都关闭)',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_card_firm_b
-- ----------------------------
DROP TABLE IF EXISTS `tmm_card_firm_b`;
CREATE TABLE `tmm_card_firm_b`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT 'ID',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片id tm_card.id',
  `firm_id` int(10) DEFAULT NULL COMMENT '手机厂商id',
  `status` tinyint(2) DEFAULT NULL COMMENT '手机厂商服务状态(0:上线 1:开卡关闭 2:充值关闭 3:迁出关闭 4:迁入关闭 5:新增（初始状态） 6:下线 7:迁卡关闭 8:开卡和充值都关闭)',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '修改时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_device_model
-- ----------------------------
DROP TABLE IF EXISTS `tmm_device_model`;
CREATE TABLE `tmm_device_model`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机型号。子机型（如华为V8下面有2款子机型：KNT-AL10、KNT-AL20）',
  `model_id` int(10) NOT NULL COMMENT '机型ID tmm_model.id',
  `model_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型编码 保留，暂时不用',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 356 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_device_model_b
-- ----------------------------
DROP TABLE IF EXISTS `tmm_device_model_b`;
CREATE TABLE `tmm_device_model_b`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT 'ID',
  `device_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机型号。子机型（如华为V8下面有2款子机型：KNT-AL10、KNT-AL20）',
  `model_id` int(10) NOT NULL COMMENT '机型ID tmm_model.id',
  `model_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型编码 保留，暂时不用',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_firm
-- ----------------------------
DROP TABLE IF EXISTS `tmm_firm`;
CREATE TABLE `tmm_firm`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `firm_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机厂商名字',
  `firm_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '厂商代码。保留，暂时不用',
  `source_chnl` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道来源 10:华为 3:OPPO',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '手机厂商表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_firm_b
-- ----------------------------
DROP TABLE IF EXISTS `tmm_firm_b`;
CREATE TABLE `tmm_firm_b`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT '主键ID',
  `firm_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机厂商名字',
  `firm_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '厂商代码。保留，暂时不用',
  `source_chnl` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道来源 10:华为 3:OPPO',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_model
-- ----------------------------
DROP TABLE IF EXISTS `tmm_model`;
CREATE TABLE `tmm_model`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `firm_id` int(10) NOT NULL COMMENT '手机厂商id tmm_firm.id',
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型',
  `model_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型代码，保留，暂时不用',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmm_model_b
-- ----------------------------
DROP TABLE IF EXISTS `tmm_model_b`;
CREATE TABLE `tmm_model_b`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT '主键ID',
  `firm_id` int(10) NOT NULL COMMENT '手机厂商id tmm_firm.id',
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型',
  `model_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机型代码，保留，暂时不用',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tr_group_role
-- ----------------------------
DROP TABLE IF EXISTS `tr_group_role`;
CREATE TABLE `tr_group_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 287 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tr_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tr_role_permission`;
CREATE TABLE `tr_role_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_6`(`role_id`) USING BTREE,
  INDEX `FK_Reference_7`(`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9205 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tr_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tr_user_role`;
CREATE TABLE `tr_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_1`(`user_id`) USING BTREE,
  INDEX `FK_Reference_2`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xian_card_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `xian_card_auth_code`;
CREATE TABLE `xian_card_auth_code`  (
  `auth_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证码',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市编号',
  `card_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡号',
  `se_uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'seid',
  `status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态001:初始;003:已锁定;005:已使用',
  `version` int(10) DEFAULT 0 COMMENT '版本号',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`auth_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xian_card_maintain
-- ----------------------------
DROP TABLE IF EXISTS `xian_card_maintain`;
CREATE TABLE `xian_card_maintain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡号',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  `se_uid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `physic_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号或UID或ATS等通卡需要数据',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片状态 005:使用中;006:已删卡',
  `create_tm` datetime(0) DEFAULT NULL,
  `update_tm` datetime(0) DEFAULT NULL,
  `city_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_cardno`(`card_no`, `card_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207056 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xian_log
-- ----------------------------
DROP TABLE IF EXISTS `xian_log`;
CREATE TABLE `xian_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `se_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_txt` varchar(6144) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74353 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xian_seid_self
-- ----------------------------
DROP TABLE IF EXISTS `xian_seid_self`;
CREATE TABLE `xian_seid_self`  (
  `seId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '自己生成的SEID',
  `card_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市编号',
  `ori_seId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原始seid',
  `status` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态001:初始;003:已锁定;005:已使用',
  `version` int(10) DEFAULT 0 COMMENT '版本号',
  `c_time` datetime(0) DEFAULT NULL,
  `m_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`seId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xian_sp_dp_card
-- ----------------------------
DROP TABLE IF EXISTS `xian_sp_dp_card`;
CREATE TABLE `xian_sp_dp_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dpfile_id` int(11) DEFAULT NULL COMMENT '制卡文件信息ID',
  `pan` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '逻辑卡号（卡面卡号位置打印信息）',
  `system_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系统类型1:ese;2:hce',
  `card_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片类型',
  `physical_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物理卡号(se芯片、手机唯一码)',
  `ats` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绑定ats',
  `exp_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片生效日期',
  `eff_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片失效日期',
  `holder_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '持卡人姓名',
  `status` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '001:一发数据入库 ;002:写入缓存，即将制卡 ;003:制卡中，已写入部分个人化数据 ;101:制卡失败(个人化APDU生成或写卡失败);004:已制卡回盘 ;102:回盘失败 ;005:已售出',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `m_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `make_time` datetime(0) DEFAULT NULL COMMENT '制卡时间',
  `saled_time` datetime(0) DEFAULT NULL COMMENT '售卡时间',
  `delete_time` datetime(0) DEFAULT NULL COMMENT '删卡时间',
  `se_uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` int(11) DEFAULT 0 COMMENT '版本号，乐观锁',
  `lock_flag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '锁定缓存标识',
  `city_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市代码',
  `dgi_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡数据所在表',
  `source_chnl` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡片使用于的厂商渠道',
  `reserve` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_pan`(`pan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205969 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xian_sp_dp_dgi_xian
-- ----------------------------
DROP TABLE IF EXISTS `xian_sp_dp_dgi_xian`;
CREATE TABLE `xian_sp_dp_dgi_xian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dgi_tag_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'DGI标签名',
  `dgi_length` int(11) DEFAULT NULL COMMENT 'DGI数据长度(10进制)',
  `dgi_value` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'DGI数据',
  `dpcard_id` int(11) DEFAULT NULL COMMENT '主卡数据的ID',
  `encryption_flag` tinyint(1) DEFAULT NULL COMMENT '密文标识',
  `card_aid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用AID',
  `c_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dpcard_index`(`dpcard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4333876 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yt_card_data_info
-- ----------------------------
DROP TABLE IF EXISTS `yt_card_data_info`;
CREATE TABLE `yt_card_data_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `issuing_card_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '2字节发卡方代码',
  `city_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '2字节城市代码',
  `industry_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '2字节行业代码',
  `enable_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1启用标志',
  `deposit` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1押金',
  `card_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '2卡类型',
  `issuing_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '4发行日期（YYYYMMDD）',
  `issuing_device_info` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '6发行设备信息',
  `app_seq_no` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '8应用序列号，即卡号',
  `app_version` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1应用版本号',
  `reserved` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1预留',
  `app_start_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '4应用启动日期（YYYYMMDD）',
  `app_valid_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '4应用有效日期（YYYYMMDD）',
  `card_master_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1卡主类型',
  `card_sub_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1卡子类型',
  `city_union_flag` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '2城市互联互通标识',
  `create_time` datetime(0) DEFAULT NULL,
  `modify_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for cleanData
-- ----------------------------
DROP PROCEDURE IF EXISTS `cleanData`;

-- ----------------------------
-- Function structure for currval
-- ----------------------------
DROP FUNCTION IF EXISTS `currval`;
delimiter ;;
CREATE DEFINER=`vfc_sptsm_qa`@`%` FUNCTION `currval`(v_seq_name VARCHAR(50)) RETURNS int(11)
begin          
    declare value INT;           
    set value = 0;           
    select current_val into value  from sequence where seq_name = v_seq_name;     
   return value;     
end
;;
delimiter ;

-- ----------------------------
-- Function structure for getSequenceValue
-- ----------------------------
DROP FUNCTION IF EXISTS `getSequenceValue`;
delimiter ;;
CREATE DEFINER=`vfc_sptsm_qa`@`%` FUNCTION `getSequenceValue`(v_seq_name VARCHAR(50)) RETURNS int(11)
begin 
DECLARE maxVal,minVal,currentVal,incrementVal INT;
select max_val,min_val,current_val,increment_val INTO maxVal,minVal,currentVal,incrementVal from sequence where seq_name = v_seq_name;
SET currentVal = currentVal + incrementVal;
IF currentVal > maxVal THEN SET currentVal = minVal;
end if;
update sequence set current_val = currentVal 
where seq_name = v_seq_name; 
return currval(v_seq_name); 
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
