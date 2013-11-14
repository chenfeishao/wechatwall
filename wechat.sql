-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 07 月 08 日 12:57
-- 服务器版本: 5.5.30
-- PHP 版本: 5.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wechat`
--

-- --------------------------------------------------------

--
-- 表的结构 `wechat`
--

CREATE TABLE IF NOT EXISTS `wechat` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT NULL,
  `fakeId` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `wechat`
--

INSERT INTO `wechat` (`id`, `type`, `fakeId`, `nickName`, `content`, `time`, `status`) VALUES
(2987, 1, '112590120', 'Sheldon__Yang', '太阳你', '2013-07-07 14:33', 0),
(2985, 1, '112590120', 'Sheldon__Yang', 'i&nbsp;need&nbsp;a&nbsp;man', '2013-07-07 14:32', 0),
(2983, 1, '112590120', 'Sheldon__Yang', '太阳你', '2013-07-07 14:32', 0),
(2981, 1, '112590120', 'Sheldon__Yang', '操了', '2013-07-07 14:32', 0),
(2979, 1, '112590120', 'Sheldon__Yang', '干你', '2013-07-07 14:32', 0),
(2977, 1, '112590120', 'Sheldon__Yang', '尼玛', '2013-07-07 14:32', 0),
(2974, 1, '112590120', 'Sheldon__Yang', '我日', '2013-07-07 14:32', 0),
(2973, 1, '112590120', 'Sheldon__Yang', '出来', '2013-07-07 14:32', 0),
(2971, 1, '112590120', 'Sheldon__Yang', '擦', '2013-07-07 14:32', 0),
(2969, 1, '112590120', 'Sheldon__Yang', '你主人是谁', '2013-07-04 21:05', 0),
(2967, 1, '112590120', 'Sheldon__Yang', '杨雄伟', '2013-07-04 21:04', 0),
(2965, 2, '112590120', 'Sheldon__Yang', '', '2013-07-04 21:04', 0),
(2963, 1, '112590120', 'Sheldon__Yang', '爱你', '2013-07-04 21:03', 0),
(2961, 1, '112590120', 'Sheldon__Yang', '我饿了', '2013-07-04 14:14', 0),
(2948, 2, '112590120', 'Sheldon__Yang', '', '2013-07-04 00:03', 0),
(2941, 1, '112590120', 'Sheldon__Yang', '呵呵', '2013-07-03 14:25', 0),
(2995, 1, '112590120', 'Sheldon__Yang', 'm', '2013-07-07 14:37', 0),
(2992, 1, '112590120', 'Sheldon__Yang', 'n', '2013-07-07 14:37', 0),
(2991, 1, '112590120', 'Sheldon__Yang', 'yunff', '2013-07-07 14:37', 0),
(2989, 1, '112590120', 'Sheldon__Yang', '日你', '2013-07-07 14:37', 0),
(2997, 1, '112590120', 'Sheldon__Yang', '。', '2013-07-07 14:39', 0),
(3001, 1, '112590120', 'Sheldon__Yang', '你好，', '2013-07-07 14:39', 0),
(2999, 1, '112590120', 'Sheldon__Yang', '也是', '2013-07-07 14:39', 0),
(3011, 1, '112590120', 'Sheldon__Yang', '日日日', '2013-07-07 14:40', 0),
(3009, 1, '112590120', 'Sheldon__Yang', '他他他', '2013-07-07 14:39', 0),
(3007, 1, '112590120', 'Sheldon__Yang', '。', '2013-07-07 14:39', 0),
(3005, 1, '112590120', 'Sheldon__Yang', '擦你', '2013-07-07 14:39', 0),
(3003, 1, '112590120', 'Sheldon__Yang', '擦了', '2013-07-07 14:39', 0),
(3015, 1, '112590120', 'Sheldon__Yang', '嘻嘻', '2013-07-07 14:40', 0),
(3013, 1, '112590120', 'Sheldon__Yang', 'vv', '2013-07-07 14:40', 0),
(3019, 1, '112590120', 'Sheldon__Yang', '呼呼', '2013-07-07 14:40', 0),
(3017, 1, '112590120', 'Sheldon__Yang', '呵呵', '2013-07-07 14:40', 0),
(3023, 1, '112590120', 'Sheldon__Yang', '呵呵', '2013-07-07 14:41', 0),
(3021, 1, '112590120', 'Sheldon__Yang', '哈哈', '2013-07-07 14:40', 0),
(3029, 1, '112590120', 'Sheldon__Yang', '烦烦烦', '2013-07-07 14:41', 0),
(3027, 1, '112590120', 'Sheldon__Yang', '尼玛', '2013-07-07 14:41', 0),
(3025, 1, '112590120', 'Sheldon__Yang', '你你', '2013-07-07 14:41', 0),
(3031, 1, '112590120', 'Sheldon__Yang', '人', '2013-07-07 14:43', 0),
(3035, 1, '112590120', 'Sheldon__Yang', '好啊', '2013-07-07 14:43', 0),
(3033, 1, '112590120', 'Sheldon__Yang', '你', '2013-07-07 14:43', 0),
(3037, 1, '112590120', 'Sheldon__Yang', '还好啊', '2013-07-07 14:43', 0),
(3039, 1, '112590120', 'Sheldon__Yang', '你呢', '2013-07-07 14:44', 0),
(3041, 1, '112590120', 'Sheldon__Yang', '你还会吗', '2013-07-07 14:44', 0),
(3043, 1, '112590120', 'Sheldon__Yang', '你好呢', '2013-07-07 14:44', 0),
(3049, 1, '112590120', 'Sheldon__Yang', '你怎么了', '2013-07-07 14:44', 0),
(3047, 1, '112590120', 'Sheldon__Yang', '为什么啊？', '2013-07-07 14:44', 0),
(3045, 1, '112590120', 'Sheldon__Yang', '。。&nbsp;', '2013-07-07 14:44', 0),
(3051, 1, '112590120', 'Sheldon__Yang', 'how&nbsp;are&nbsp;u？', '2013-07-07 14:46', 0),
(3053, 1, '112590120', 'Sheldon__Yang', '你怎么了', '2013-07-07 14:47', 0),
(3055, 1, '112590120', 'Sheldon__Yang', '擦你哦', '2013-07-07 14:49', 0),
(3057, 1, '112590120', 'Sheldon__Yang', 'pages', '2013-07-07 14:52', 0),
(3059, 1, '112590120', 'Sheldon__Yang', '你', '2013-07-07 14:52', 0),
(3063, 1, '112590120', 'Sheldon__Yang', '惊呆了', '2013-07-07 17:25', 0),
(3061, 1, '112590120', 'Sheldon__Yang', '小伙伴', '2013-07-07 17:25', 0),
(3067, 1, '112590120', 'Sheldon__Yang', 'update', '2013-07-07 17:29', 0),
(3065, 1, '112590120', 'Sheldon__Yang', '刷新', '2013-07-07 17:29', 0),
(3069, 1, '112590120', 'Sheldon__Yang', '刷新吧亲', '2013-07-07 17:30', 0),
(3071, 1, '112590120', 'Sheldon__Yang', '成功', '2013-07-07 17:30', 0),
(3073, 1, '112590120', 'Sheldon__Yang', '是不', '2013-07-07 17:31', 0),
(3075, 1, '112590120', 'Sheldon__Yang', 'ajax刷漆', '2013-07-07 17:31', 0),
(3077, 1, '112590120', 'Sheldon__Yang', 'ajax', '2013-07-07 17:31', 0),
(3081, 1, '112590120', 'Sheldon__Yang', '。。。', '2013-07-07 17:32', 0),
(3079, 1, '112590120', 'Sheldon__Yang', '刷新啊亲', '2013-07-07 17:32', 0),
(3085, 1, '112590120', 'Sheldon__Yang', '...', '2013-07-07 17:32', 0),
(3083, 1, '112590120', 'Sheldon__Yang', '晕了', '2013-07-07 17:32', 0),
(3089, 1, '112590120', 'Sheldon__Yang', '跪了', '2013-07-07 17:33', 0),
(3087, 1, '112590120', 'Sheldon__Yang', 'gei', '2013-07-07 17:33', 0),
(3091, 1, '112590120', 'Sheldon__Yang', '呜呜', '2013-07-07 17:37', 0),
(3093, 1, '112590120', 'Sheldon__Yang', '我日', '2013-07-07 17:44', 0),
(3097, 1, '112590120', 'Sheldon__Yang', '滚滚滚&nbsp;给&nbsp;给给给给', '2013-07-07 18:08', 0),
(3095, 1, '112590120', 'Sheldon__Yang', '吃vv', '2013-07-07 18:07', 0),
(3107, 1, '112590120', 'Sheldon__Yang', '尼玛', '2013-07-07 18:09', 0),
(3105, 1, '112590120', 'Sheldon__Yang', '问尼玛答骂我干嘛啊擦', '2013-07-07 18:09', 0),
(3103, 1, '112590120', 'Sheldon__Yang', '我日啊', '2013-07-07 18:09', 0),
(3101, 1, '112590120', 'Sheldon__Yang', '斌生', '2013-07-07 18:09', 0),
(3099, 1, '112590120', 'Sheldon__Yang', '呵呵呵', '2013-07-07 18:09', 0),
(3109, 1, '112590120', 'Sheldon__Yang', '我日啊', '2013-07-07 18:10', 0),
(3115, 1, '112590120', 'Sheldon__Yang', '嘎嘎嘎嘎', '2013-07-07 18:11', 0),
(3113, 1, '112590120', 'Sheldon__Yang', '嘎嘎嘎嘎', '2013-07-07 18:11', 0),
(3111, 1, '112590120', 'Sheldon__Yang', '烦烦烦', '2013-07-07 18:11', 0),
(3128, 1, '112590120', 'Sheldon__Yang', '去洗澡', '2013-07-07 18:12', 0),
(3126, 1, '112590120', 'Sheldon__Yang', '吃饭', '2013-07-07 18:12', 0),
(3124, 1, '112590120', 'Sheldon__Yang', '呵呵', '2013-07-07 18:12', 0),
(3123, 1, '112590120', 'Sheldon__Yang', '嘻嘻', '2013-07-07 18:12', 0),
(3121, 1, '112590120', 'Sheldon__Yang', '哈哈', '2013-07-07 18:12', 0),
(3119, 1, '112590120', 'Sheldon__Yang', '呵呵呵', '2013-07-07 18:12', 0),
(3117, 1, '112590120', 'Sheldon__Yang', '哈哈哈哈', '2013-07-07 18:12', 0),
(3130, 1, '112590120', 'Sheldon__Yang', '我去啊', '2013-07-07 18:15', 0),
(3132, 1, '112590120', 'Sheldon__Yang', '苏偶擦啊', '2013-07-07 18:20', 0),
(3134, 1, '112590120', 'Sheldon__Yang', '腹股沟给&nbsp;&nbsp;刚刚&nbsp;&nbsp;', '2013-07-07 18:20', 0),
(3138, 1, '112590120', 'Sheldon__Yang', '呵呵呵呵呵和&nbsp;', '2013-07-07 18:21', 0),
(3136, 1, '112590120', 'Sheldon__Yang', '呵呵呵呵呵', '2013-07-07 18:21', 0),
(3146, 1, '112590120', 'Sheldon__Yang', '你&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;', '2013-07-07 18:30', 1),
(3144, 1, '112590120', 'Sheldon__Yang', '擦你啊', '2013-07-07 18:30', 1),
(3142, 1, '112590120', 'Sheldon__Yang', '尼玛', '2013-07-07 18:30', 1),
(3140, 1, '112590120', 'Sheldon__Yang', '滚滚滚', '2013-07-07 18:30', 1),
(3148, 1, '112590120', 'Sheldon__Yang', '天气', '2013-07-07 18:30', 1),
(3154, 1, '112590120', 'Sheldon__Yang', '天气武汉', '2013-07-07 18:31', 1),
(3152, 1, '112590120', 'Sheldon__Yang', '尼玛', '2013-07-07 18:31', 1),
(3150, 1, '112590120', 'Sheldon__Yang', '天气', '2013-07-07 18:31', 1),
(3158, 1, '112590120', 'Sheldon__Yang', '北京天气', '2013-07-07 18:31', 1),
(3156, 1, '112590120', 'Sheldon__Yang', '武汉天气', '2013-07-07 18:31', 1),
(3162, 1, '112590120', 'Sheldon__Yang', '滚滚滚', '2013-07-07 18:37', 1),
(3160, 1, '112590120', 'Sheldon__Yang', '我擦', '2013-07-07 18:37', 1),
(3164, 1, '112590120', 'Sheldon__Yang', '嘎嘎嘎嘎滚滚滚', '2013-07-07 18:37', 0),
(3166, 1, '112590120', 'Sheldon__Yang', '嘎嘎嘎嘎嘎嘎嘎', '2013-07-07 18:38', 1),
(3168, 1, '112590120', 'Sheldon__Yang', '男男女女你你你&nbsp;', '2013-07-07 18:38', 1),
(3172, 1, '112590120', 'Sheldon__Yang', '刷新啊', '2013-07-07 18:43', 1),
(3170, 1, '112590120', 'Sheldon__Yang', '我我我我', '2013-07-07 18:43', 1),
(3174, 1, '112590120', 'Sheldon__Yang', '尼玛', '2013-07-07 18:43', 1),
(3176, 1, '112590120', 'Sheldon__Yang', '嘎嘎嘎嘎', '2013-07-07 18:43', 1),
(3180, 1, '112590120', 'Sheldon__Yang', '尼玛哦', '2013-07-07 18:46', 1),
(3178, 1, '112590120', 'Sheldon__Yang', '嘎嘎嘎嘎嘎嘎嘎', '2013-07-07 18:46', 1),
(3182, 1, '112590120', 'Sheldon__Yang', '尼玛哦', '2013-07-07 18:46', 1),
(3186, 1, '112590120', 'Sheldon__Yang', '刚刚', '2013-07-07 22:35', 0),
(3184, 1, '112590120', 'Sheldon__Yang', '。。。', '2013-07-07 22:35', 0),
(3190, 1, '112590120', 'Sheldon__Yang', '我去', '2013-07-07 22:40', 1),
(3188, 1, '112590120', 'Sheldon__Yang', '哈哈', '2013-07-07 22:40', 0),
(100171196, 1, '524821575', '小嘟嘟', '额。。去哪里', '2013-07-08 00:21', 1),
(100171194, 1, '1122571521', '杨召', '查分1110200225', '2013-07-08 00:21', 0),
(100171192, 1, '524821575', '小嘟嘟', '去你的小妞&nbsp;&nbsp;你是笨牛', '2013-07-08 00:21', 0),
(100171187, 1, '524821575', '小嘟嘟', '哈哈&nbsp;&nbsp;猪头', '2013-07-08 00:20', 0),
(100171185, 1, '682016181', '左松涛', '艹', '2013-07-08 00:20', 0),
(100171184, 1, '23171425', '你的微笑', '查分1010100c18', '2013-07-08 00:19', 0),
(100171183, 1, '1646060920', '.', '拜拜', '2013-07-08 00:19', 0),
(100171182, 1, '1646060920', '.', '傻逼', '2013-07-08 00:19', 0),
(100171181, 1, '1703010500', '魔童', '查分1110652217', '2013-07-08 00:19', 0),
(100171177, 1, '524821575', '小嘟嘟', '喂&nbsp;&nbsp;笨蛋', '2013-07-08 00:19', 0),
(100171176, 1, '1646060920', '.', '看你妹看', '2013-07-08 00:19', 0),
(100171174, 1, '524821575', '小嘟嘟', '怎么不回了&nbsp;&nbsp;死机了么', '2013-07-08 00:18', 0),
(100171172, 1, '1646060920', '.', '做过什么？', '2013-07-08 00:18', 0),
(100171170, 1, '1703010500', '魔童', '查分', '2013-07-08 00:18', 0),
(100171168, 1, '1646060920', '.', '做过吗？', '2013-07-08 00:18', 0),
(100171166, 1, '1646060920', '.', '然后呢？', '2013-07-08 00:18', 0),
(100171164, 1, '1646060920', '.', '会撸吗？', '2013-07-08 00:18', 0),
(100171163, 1, '1915076761', '啊你呀谁哟~', '查分1210200629', '2013-07-08 00:18', 0),
(100171161, 1, '1703010500', '魔童', '3', '2013-07-08 00:18', 0),
(100171159, 1, '1646060920', '.', '会撸妈？', '2013-07-08 00:17', 0),
(100171157, 1, '524821575', '小嘟嘟', '你是安装没成功的机器人吧', '2013-07-08 00:17', 0),
(100171155, 1, '1646060920', '.', '你是谁？', '2013-07-08 00:17', 0),
(100171153, 1, '1646060920', '.', '你是谁？', '2013-07-08 00:17', 0),
(100171151, 1, '524821575', '小嘟嘟', '我要帅来干什么', '2013-07-08 00:17', 0),
(100171149, 1, '1646060920', '.', '谁是你老公', '2013-07-08 00:17', 0),
(100171147, 1, '1646060920', '.', '傻逼', '2013-07-08 00:16', 0),
(100171145, 1, '1646060920', '.', '那你还说？', '2013-07-08 00:16', 0),
(100171143, 1, '524821575', '小嘟嘟', '还可以是猪头？', '2013-07-08 00:16', 0),
(100171141, 1, '1646060920', '.', '怎么输了？', '2013-07-08 00:16', 0),
(100171138, 1, '1646060920', '.', '不玩爱？', '2013-07-08 00:16', 0),
(100171137, 1, '524821575', '小嘟嘟', '你是笨蛋吗', '2013-07-08 00:16', 0),
(100171135, 1, '1646060920', '.', '切', '2013-07-08 00:16', 0),
(100171132, 1, '2372324863', '仙人球的梦', '查分&nbsp;&nbsp;&nbsp;&nbsp;1210911213', '2013-07-08 00:15', 0),
(100171130, 1, '1646060920', '.', '鸡巴小的帅哥喜欢吗？', '2013-07-08 00:15', 0),
(100171127, 1, '23171425', '你的微笑', '查分1010100c18', '2013-07-08 00:15', 0),
(100171125, 1, '1646060920', '.', '喜欢什么？', '2013-07-08 00:15', 0),
(100171123, 1, '1154210080', '图样~', '我是天才', '2013-07-08 00:15', 0),
(100171119, 1, '1646060920', '.', '选什么？', '2013-07-08 00:15', 0),
(100171117, 1, '1154210080', '图样~', '你是机器人吗', '2013-07-08 00:15', 0),
(100171115, 1, '524821575', '小嘟嘟', '回是啊', '2013-07-08 00:14', 0),
(100171112, 1, '1703010500', '魔童', '查分怎么查', '2013-07-08 00:14', 0),
(100171110, 1, '1646060920', '.', '求指导？', '2013-07-08 00:14', 0),
(100171108, 1, '524821575', '小嘟嘟', '你是笨蛋么&nbsp;&nbsp;哈哈', '2013-07-08 00:14', 0),
(100171106, 1, '1154210080', '图样~', '尔康!', '2013-07-08 00:14', 0),
(100171199, 1, '524821575', '小嘟嘟', '哎&nbsp;&nbsp;你是男的还是女的啊', '2013-07-08 00:22', 0),
(100171201, 1, '524821575', '小嘟嘟', '我都不知道你在哪&nbsp;怎么验', '2013-07-08 00:23', 1),
(100171203, 1, '112590120', 'Sheldon__Yang', '。。。', '2013-07-08 00:24', 0),
(100171205, 1, '2194528220', '_', '聊天', '2013-07-08 00:25', 0),
(100171204, 1, '524821575', '小嘟嘟', '那你怎么不睡。', '2013-07-08 00:25', 0),
(100171444, 1, '2894413060', 'summer', '查分1110511114', '2013-07-08 01:32', 0),
(100171442, 1, '2891512240', '对方正在输入…', '世界大战哪一年？', '2013-07-08 01:31', 0),
(100171440, 1, '2891512240', '对方正在输入…', '什么时候恢复？', '2013-07-08 01:30', 0),
(100171439, 1, '14226235', '范范范羊羊', '？？', '2013-07-08 01:18', 0),
(100171437, 1, '14226235', '范范范羊羊', '湖南伢？', '2013-07-08 01:18', 0),
(100171435, 1, '14226235', '范范范羊羊', '你哪里人？', '2013-07-08 01:17', 0),
(100171433, 1, '14226235', '范范范羊羊', '为什么', '2013-07-08 01:17', 0),
(100171431, 1, '14226235', '范范范羊羊', '你好', '2013-07-08 01:17', 0),
(100171430, 1, '14226235', '范范范羊羊', '查分1010100606', '2013-07-08 01:16', 0),
(100171429, 1, '23171425', '你的微笑', '百度吊丝', '2013-07-08 01:09', 0),
(100171428, 1, '23171425', '你的微笑', '查分1010100c19', '2013-07-08 01:07', 0),
(100171427, 1, '23171425', '你的微笑', '查分1010100c01', '2013-07-08 01:06', 0),
(100171425, 1, '23171425', '你的微笑', '查分', '2013-07-08 01:05', 0),
(100171424, 1, '23171425', '你的微笑', '查分1010100c18', '2013-07-08 01:04', 0),
(100171422, 1, '23171425', '你的微笑', '天气武汉', '2013-07-08 01:04', 0),
(100171420, 1, '23171425', '你的微笑', '一下那个你懂不会', '2013-07-08 01:03', 0),
(100171418, 1, '23171425', '你的微笑', '4', '2013-07-08 01:02', 0),
(100171416, 1, '23171425', '你的微笑', '3', '2013-07-08 01:02', 0),
(100171415, 1, '23171425', '你的微笑', '查分1010100c18', '2013-07-08 01:01', 0),
(100171413, 1, '23171425', '你的微笑', '3', '2013-07-08 01:00', 0),
(100171411, 1, '23171425', '你的微笑', '2', '2013-07-08 01:00', 0),
(100171410, 1, '339803240', '^(oo)^?', '我操', '2013-07-08 00:59', 0),
(100171409, 1, '339803240', '^(oo)^?', '在么？', '2013-07-08 00:59', 0),
(100171408, 1, '339803240', '^(oo)^?', '人呢', '2013-07-08 00:59', 0),
(100171407, 1, '339803240', '^(oo)^?', '鸡巴', '2013-07-08 00:58', 0),
(100171406, 1, '2323044781', '吴', '查分1010200239', '2013-07-08 00:58', 0),
(100171404, 1, '339803240', '^(oo)^?', '说话', '2013-07-08 00:58', 0),
(100171403, 1, '1798899720', '宋柯', '查分1110643125', '2013-07-08 00:57', 0),
(100171400, 1, '2378955481', '離～塵', '查分1110921201', '2013-07-08 00:56', 0),
(100171395, 1, '1040378680', '纸团子', '查分1010641120', '2013-07-08 00:55', 0),
(100171394, 1, '1040378680', '纸团子', '查分1010641120', '2013-07-08 00:54', 0),
(100171932, 1, '2043585721', '张少立夫', '查分1210311326&nbsp;&nbsp;&nbsp;&nbsp;', '2013-07-08 09:30', 0),
(100171931, 1, '110330975', '赤那', '查分1211011203', '2013-07-08 09:27', 0),
(100171930, 1, '682016181', '左松涛', '查分1210100b10', '2013-07-08 09:27', 0),
(100171929, 1, '433599615', '张以达。', '查分＋1110732215', '2013-07-08 09:26', 0),
(100171928, 1, '433599615', '张以达。', '查分＋1110732203', '2013-07-08 09:26', 0),
(100171927, 1, '144855440', '萌姐就是Me', '查分1110200728', '2013-07-08 09:26', 0),
(100171926, 1, '2966853300', '肥君子', '查分1210211104', '2013-07-08 09:25', 0),
(100171925, 1, '737198981', '欧阳松', '查分1210641238', '2013-07-08 09:24', 0),
(100171924, 1, '918540061', '汪舟', '查分1010411517', '2013-07-08 09:23', 0),
(100171923, 1, '728654620', 'monster', '查分1110441208', '2013-07-08 09:23', 0),
(100171922, 1, '1233542921', '蒋礼锐', '查分1111121118', '2013-07-08 09:23', 0),
(100171921, 1, '1091778361', 'L_thanks赖', '查分1210621130', '2013-07-08 09:23', 0),
(100171920, 1, '920423960', '失心疯。', '查分1110200b29', '2013-07-08 09:21', 0),
(100171919, 1, '1697814801', '给力芬', '查分1211011305', '2013-07-08 09:20', 0),
(100171918, 1, '1697814801', '给力芬', '查分&nbsp;&nbsp;1211011305', '2013-07-08 09:19', 0),
(100171917, 1, '110679235', '刘洲宇', '查分1110200809', '2013-07-08 09:19', 0),
(100171916, 1, '330217815', '浅陌年华', '查分1110611401', '2013-07-08 09:19', 0),
(100171915, 1, '1697814801', '给力芬', '查分1211011305', '2013-07-08 09:17', 0),
(100171913, 1, '1012290381', '寂雨落辰', '查分1210411309', '2013-07-08 09:17', 0),
(100171912, 1, '1066451501', '张某人', '查分1210200b32&nbsp;&nbsp;', '2013-07-08 09:16', 0),
(100171911, 1, '2766241062', '小显', '查分1210621137', '2013-07-08 09:16', 0),
(100171910, 1, '1826272004', 'wd', '查分1211112106', '2013-07-08 09:15', 0),
(100171909, 1, '1756864582', 'Y岳钲Z', '查分1110100a23', '2013-07-08 09:15', 0),
(100171908, 1, '1725903681', '陈玉', '查分1210100213', '2013-07-08 09:14', 0),
(100171907, 1, '1959553242', '郑金娥', '查分+1210812206', '2013-07-08 09:12', 0),
(100171906, 1, '1826272004', 'wd', '查分1211112106', '2013-07-08 09:12', 0),
(100171904, 1, '1184287441', '小小晓', '查分1210411301', '2013-07-08 09:11', 0),
(100171903, 1, '1760376760', '丁丛', '查分1010100921', '2013-07-08 09:10', 0),
(100171902, 1, '1184287441', '小小晓', '查分1210411301', '2013-07-08 09:10', 0),
(100171901, 1, '511009160', '静', '查分0910641135', '2013-07-08 09:09', 0),
(100171900, 1, '1697146704', 'Ramsey拉姆塞', '查分1110411102', '2013-07-08 09:08', 0),
(100171899, 1, '303180295', 'Echo', '查分1110314115', '2013-07-08 09:07', 0),
(100171898, 1, '2950838400', '张晨', '查分1210441312', '2013-07-08 09:07', 0),
(100171897, 1, '1970226901', '林立', '查分1210441218', '2013-07-08 09:06', 0),
(100171895, 1, '178887920', '周域平', '查分1110113102', '2013-07-08 09:05', 0),
(100171894, 1, '2020062021', '飞', '查分1210131127', '2013-07-08 09:05', 0),
(100171893, 1, '1486536981', '王柳', '查分1110921314', '2013-07-08 09:05', 0),
(100171892, 1, '1486536981', '王柳', '查分1110921314', '2013-07-08 09:04', 0),
(100171891, 1, '214962320', 'kamilia懒懒', '查分1110411114', '2013-07-08 09:01', 0),
(100171890, 1, '2057003540', '李龙飞', '查分1010641204', '2013-07-08 09:01', 0),
(100171889, 1, '1090478120', 'Instructor刘', '查分1110200219', '2013-07-08 09:00', 0),
(100171888, 1, '2280659241', '醉人醉酒醉倾城', '查分1210641224', '2013-07-08 08:59', 0),
(100171887, 1, '2704616220', 'Crazy', '查分&nbsp;0910641101', '2013-07-08 08:59', 0),
(100171886, 1, '2310585440', '嘿嘿', '查分1110642108', '2013-07-08 08:57', 0),
(100171885, 1, '103306280', '阿镇', '查分1110113126', '2013-07-08 08:55', 0),
(100171884, 1, '103306280', '阿镇', '查分1110113126', '2013-07-08 08:55', 0),
(100171883, 1, '433599615', '张以达。', '查分＋1110732203', '2013-07-08 08:54', 0),
(100171882, 1, '433599615', '张以达。', '查分1110732203', '2013-07-08 08:54', 0),
(100171881, 1, '2288614001', '＊阳『影』', '查分1210200c20', '2013-07-08 08:54', 0),
(100171880, 1, '47151525', 'SNOooW', '查分1110732203', '2013-07-08 08:54', 0),
(100171933, 1, '1438062544', '魏琪', '查分1210441120', '2013-07-08 09:34', 0),
(100171934, 1, '2534620501', '康2481--advancer', '查分1210100d02', '2013-07-08 09:35', 0),
(100172645, 1, '1271672701', 'lcf', '鏌ュ垎锛?210200a07', '2013-07-08 12:12', 0),
(100172643, 1, '1205012781', 'my', '鏌ュ垎1210100c13', '2013-07-08 12:12', 0),
(100172641, 1, '2051091240', '杩疯凯棣', '鏌ュ垎1010631103', '2013-07-08 12:11', 0),
(100172639, 1, '1316048120', 'san..', '鏌ュ垎1011011337', '2013-07-08 12:10', 0),
(100172637, 1, '1659545701', '瀹囧畽澶у笣', '鏌ュ垎1210921228', '2013-07-08 12:09', 0),
(100172635, 1, '2519272541', 'BU?', '鏌ュ垎1210151112', '2013-07-08 12:08', 0),
(100172633, 1, '23866215', '鍘熻壊', '鏌ュ垎<br/>1010132207', '2013-07-08 12:08', 0),
(100172631, 1, '1184287441', '灏忓皬鏅', '鏌ュ垎1210411301', '2013-07-08 12:07', 0),
(100172629, 1, '581027335', '鍠冦?', '鏌ュ垎1110921213', '2013-07-08 12:04', 0),
(100172627, 1, '695686181', '钄″竻', '鏌ュ垎1210752108', '2013-07-08 12:02', 0),
(100172625, 1, '1451745760', '璧靛睍', '鏌ュ垎1110612225', '2013-07-08 12:01', 0),
(100172623, 1, '1486536981', '鐜嬫煶', '鏌ュ垎1110921314', '2013-07-08 12:01', 0),
(100172621, 1, '565554015', '鏅', '鏌ュ垎1110612106', '2013-07-08 12:01', 0),
(100172619, 1, '1138398820', '楹﹀厹', '鏌ュ垎1110322216', '2013-07-08 12:00', 0),
(100172617, 1, '1336683361', 'sniper', '鏌ュ垎1210652120', '2013-07-08 12:00', 0),
(100172615, 1, '1316048120', 'san..', '鏌ュ垎1011011337', '2013-07-08 12:00', 0),
(100172613, 1, '983421440', '鐧芥按鍒?姞杈ｆ?-', '鏌ュ垎1210700107', '2013-07-08 12:00', 0),
(100172611, 1, '983421440', '鐧芥按鍒?姞杈ｆ?-', '1210700107+鏌ュ垎', '2013-07-08 12:00', 0),
(100172609, 1, '2966853300', '鑲ュ悰瀛', '鏌ュ垎1210211104', '2013-07-08 11:59', 0),
(100172607, 1, '983421440', '鐧芥按鍒?姞杈ｆ?-', '1210700107鏌ュ垎', '2013-07-08 11:59', 0),
(100172605, 1, '1091778361', 'L_thanks璧', '鏌ュ垎1210621130', '2013-07-08 11:58', 0),
(100172603, 1, '1590642100', '鐎', '澶╂皵涓婇ザ', '2013-07-08 11:57', 0),
(100172601, 1, '1590642100', '鐎', '澶╂皵濠烘簮', '2013-07-08 11:56', 0),
(100172599, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '浣犵殑澶?nbsp;鍍忕毊鐞?nbsp;涓?剼韪㈠埌榛勯工妤', '2013-07-08 11:56', 0),
(100172597, 1, '421652680', '鏋楀墤杈', '鏌ュ垎1011011209', '2013-07-08 11:56', 0),
(100172594, 1, '1590642100', '鐎', '姝︽眽澶╂皵', '2013-07-08 11:56', 0),
(100172593, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '浣犵殑澶达紵', '2013-07-08 11:56', 0),
(100172591, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '鍫佃溅', '2013-07-08 11:56', 0),
(100172589, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '鍦ㄩ珮閫熶笂鍫佃溅锛', '2013-07-08 11:56', 0),
(100172587, 1, '2983358501', 'Mr.Lin', '鏌ュ垎1110611209', '2013-07-08 11:56', 0),
(100172585, 1, '253681400', '鐜嬪皬灞丱_o', '鏌ュ垎1110100837', '2013-07-08 11:56', 0),
(100172583, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '鎺??锛', '2013-07-08 11:55', 0),
(100172581, 1, '1590642100', '鐎', '鏌ュ垎1010200530', '2013-07-08 11:55', 0),
(100172579, 1, '812839462', '鏋楀?涓?ⅵ', '鏌ュ垎1210131112', '2013-07-08 11:55', 0),
(100172576, 1, '16016725', '999浜鸿禐杩', '鏌ュ垎&nbsp;1010641209', '2013-07-08 11:55', 0),
(100172575, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '鍦ㄩ珮閫熶笂鍫佃溅鏄?釜绁為┈浜嬪効锛侊紒锛侊紵锛燂紵', '2013-07-08 11:55', 0),
(100172573, 1, '2954028140', '鏉庢椇鑱', '鏌ュ垎1110441324', '2013-07-08 11:55', 0),
(100172571, 1, '1994772601', '鍟緙<span class="emoji emoji2665"></span>', '璇磋瘽', '2013-07-08 11:55', 0),
(100172569, 1, '2954028140', '鏉庢椇鑱', '&nbsp;鏌ュ垎1110441324', '2013-07-08 11:55', 0),
(100172566, 1, '420142840', '姝??', '鏌ュ垎1110411219', '2013-07-08 11:55', 0),
(100172565, 1, '2878511680', '榛戝皬濡', '鏌ュ垎1210200829', '2013-07-08 11:54', 0),
(100172563, 1, '1587648780', '鏉ㄨ穬瀹', '鏌ュ垎1110611302', '2013-07-08 11:54', 0),
(100172561, 1, '1024759481', '澶╁ぉ澶╄摑銆', '鏌ュ垎1210921413', '2013-07-08 11:54', 0),
(100172559, 1, '2591900741', 'Ken*', '鐭ラ亾浜嗭紝璋㈣阿锝', '2013-07-08 11:53', 0),
(100172557, 1, '2975105061', '鐜嬬寷', '鏌ュ垎1210200931', '2013-07-08 11:53', 0),
(100172555, 1, '2591900741', 'Ken*', '浠?箞鏃跺?缁存姢濂斤紵', '2013-07-08 11:53', 0),
(100172553, 1, '2591900741', 'Ken*', '鏌ュ垎1210100e05', '2013-07-08 11:53', 0),
(100172551, 1, '1184287441', '灏忓皬鏅', '鏌ュ垎1210411301', '2013-07-08 11:53', 0),
(100172548, 1, '1440140960', '瓒婏綖锝', '鏌ュ垎1110313105', '2013-07-08 11:51', 0),
(100172546, 1, '1967227601', 'star', '鏌ュ垎1210511126', '2013-07-08 11:51', 0),
(100172649, 1, '4320155', '鐜嬬偧<span class="emoji emoji2728"></span><span clas', '鏌ュ垎1010411321', '2013-07-08 12:13', 0),
(100172647, 1, '13183995', 'L', '鏌ュ垎1010100c14', '2013-07-08 12:13', 0),
(100172657, 1, '1715222401', 'Kim-Taeyeon', '鏌ュ垎1111011513<br/><br/>', '2013-07-08 12:16', 0),
(100172654, 1, '2104266604', '璐逛紛', '鏌ュ垎1210532112', '2013-07-08 12:16', 0),
(100172652, 1, '240383415', '<span class="emoji emoji1f43b"></span><span class=', '鏌ュ垎0810441130', '2013-07-08 12:14', 0),
(100172659, 1, '2889801302', '绁濈?鏉', '&nbsp;1210100219', '2013-07-08 12:17', 0),
(100172661, 1, '1012290381', '瀵傞洦钀借景', '鏌ュ垎1210411309', '2013-07-08 12:18', 0),
(100172663, 1, '2889801302', '绁濈?鏉', '鏌ュ垎1210100219', '2013-07-08 12:18', 0),
(100172665, 1, '1253082801', '鍚翠竴鏉', '鏌ュ垎1210611604', '2013-07-08 12:18', 0),
(100172668, 1, '1730632483', '淇', '鍛靛懙', '2013-07-08 12:19', 0),
(100172672, 1, '1730632483', '淇', '鍐嶅懙鍛', '2013-07-08 12:19', 0),
(100172669, 1, '971584100', 'yolanda', '鏌ュ垎1110651128', '2013-07-08 12:19', 0),
(100172674, 1, '1730632483', '淇', '鐜板湪淇?ソ娌', '2013-07-08 12:19', 0),
(100172678, 1, '829179501', '瀛熷瓙璐', '鏌ュ垎1210921403', '2013-07-08 12:20', 0),
(100172676, 1, '829179501', '瀛熷瓙璐', '鏌ュ垎1210921403', '2013-07-08 12:19', 0),
(100172682, 1, '199613655', '。', '查分1110200424', '2013-07-08 12:20', 0),
(100172680, 1, '1730632483', '信', '查分1110412101', '2013-07-08 12:20', 0),
(100172684, 1, '2509639423', '喻升', '查分1110511112', '2013-07-08 12:21', 0),
(100172686, 1, '1558687141', '梁滔', '查分1210100833', '2013-07-08 12:23', 0),
(100172688, 1, '1970226901', '林立', '查分1210441218', '2013-07-08 12:23', 0),
(100172690, 1, '357182240', '余小伟', '查分1210211117', '2013-07-08 12:24', 0),
(100172694, 1, '682533580', '猹叔', '&nbsp;说话', '2013-07-08 12:24', 0),
(100172692, 1, '2170569621', '文显博', '查分1211011522', '2013-07-08 12:24', 0),
(100172696, 1, '682533580', '猹叔', '你几岁', '2013-07-08 12:24', 0),
(100172698, 1, '1826272004', 'wd', '查分1211112106', '2013-07-08 12:24', 0),
(100172700, 1, '682533580', '猹叔', '我12岁', '2013-07-08 12:24', 0),
(100172702, 1, '2170569621', '文显博', '查分1211011522', '2013-07-08 12:25', 0),
(100172704, 1, '682533580', '猹叔', '你结婚没', '2013-07-08 12:25', 0),
(100172706, 1, '682533580', '猹叔', '骗人', '2013-07-08 12:25', 0),
(100172708, 1, '906426381', '心翼醉', '查分1210200f31', '2013-07-08 12:25', 0),
(100172710, 1, '906426381', '心翼醉', '查分1210200f31', '2013-07-08 12:25', 0),
(100172712, 1, '682533580', '猹叔', '恶心', '2013-07-08 12:25', 0),
(100172714, 1, '682533580', '猹叔', '呼吸困难', '2013-07-08 12:26', 0),
(100172716, 1, '682533580', '猹叔', '啥', '2013-07-08 12:26', 0),
(100172719, 1, '612176000', '&nbsp;&nbsp;&nbsp;眼眸。', '查分1210812110', '2013-07-08 12:27', 0),
(100172718, 1, '682533580', '猹叔', '刘璐是谁', '2013-07-08 12:27', 0),
(100172721, 1, '2545551320', '<span class="emoji emoji1f457"></span>GXY', '查分1210800622', '2013-07-08 12:27', 0),
(100172725, 1, '682533580', '猹叔', '土木的小&nbsp;tony是个撒比', '2013-07-08 12:27', 0),
(100172723, 1, '112590120', 'Sheldon__Yang', '&quot;你好', '2013-07-08 12:27', 0),
(100172729, 1, '682533580', '猹叔', '你觉得呢？', '2013-07-08 12:27', 0),
(100172727, 1, '1726070203', '困兽之斗', '查分1110312103', '2013-07-08 12:27', 0),
(100172731, 1, '15659475', 'Eiffel&nbsp;Tsui', '查分1010731426', '2013-07-08 12:27', 0),
(100172733, 1, '112590120', 'Sheldon__Yang', '&#39;呵呵', '2013-07-08 12:28', 0),
(100172735, 1, '682533580', '猹叔', '土木的小Tony是个都逼', '2013-07-08 12:28', 0),
(100172737, 1, '682533580', '猹叔', '呵呵', '2013-07-08 12:28', 0),
(100172739, 1, '682533580', '猹叔', '麻痹啊', '2013-07-08 12:28', 0),
(100172741, 1, '682533580', '猹叔', '渣', '2013-07-08 12:28', 0),
(100172743, 1, '682533580', '猹叔', '吖', '2013-07-08 12:29', 0),
(100172745, 1, '682533580', '猹叔', '拉粑粑吧啊啊啊啊啊', '2013-07-08 12:29', 0),
(100172749, 1, '2916382201', '親親親親<span class="emoji emoji1f349"></span>', '查分1210611620', '2013-07-08 12:30', 1),
(100172747, 1, '737198981', '欧阳松', '查分1210641238', '2013-07-08 12:30', 1),
(100172751, 1, '2361600961', '黄振', '查分1210100720', '2013-07-08 12:30', 1),
(100172753, 1, '12126065', '博', '查分1210532109', '2013-07-08 12:31', 0),
(100172755, 1, '845572081', '汪祚坤', '查分&nbsp;&nbsp;&nbsp;1210652209', '2013-07-08 12:31', 0),
(100172757, 1, '2462358682', '铭清－你在想什么', '查分1010241236', '2013-07-08 12:31', 0),
(100172759, 1, '2338917520', '于小分儿', '查分1110721301', '2013-07-08 12:32', 0),
(100172761, 1, '81926525', '申彗星', '查分1210911234', '2013-07-08 12:33', 0),
(100172763, 1, '1693591461', '笑眼勾魂', '翻译口味', '2013-07-08 12:33', 0),
(100172765, 1, '170745315', '龙海', '查分2013040258', '2013-07-08 12:33', 0),
(100172767, 1, '870669521', '我不懂浪漫', '查分1210315208', '2013-07-08 12:35', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
