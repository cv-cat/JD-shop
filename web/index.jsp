<%@ page import="com.dao.UserDao" %>
<%@ page import="com.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: zhencheng
  Date: 2021-10-15
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>京东(JD.COM)-综合网购首选-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="description" content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/index.css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/base.js"></script>
    <script src="js/index.js"></script>
</head>
<c:if test="${empty lunbos1}"> <c:redirect url="indexlist.do"></c:redirect> </c:if>
<body>
<header>
    <a href="#">
        <img src="images/header.jpg" height="80" width="100%" alt="">
    </a>
</header>
<div class="shortcut">
    <div class="w">
        <ul class="fl city">
            <li><i class="f10"></i><a href="#">江苏科技大学</a></li>
        </ul>
        <ul class="fr nav">
            <%
                if(request.getSession().getAttribute("userName")==null){
            %>
            <li>
                <a href="login.jsp">你好，请登录</a>
                <a href="register.jsp" class="f10">免费注册</a>
            </li>
            <%
            }
            %>

            <li class="space"></li>
            <li>
                <a href="cart.do">我的订单</a>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">我的京东</a>
                <i></i>
                <div class="dropdown-layer">
                    <dl class="d">
                        <dd><a href="#">待处理订单</a></dd>
                        <dd><a href="#">返修退换货</a></dd>
                        <dd><a href="#">降价商品</a></dd>
                    </dl>
                    <dl class="d">
                        <dd><a href="#">消息</a></dd>
                        <dd><a href="#">我的问答</a></dd>
                        <dd><a href="#">我的关注</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的京豆</a></dd>
                        <dd><a href="#">我的白条</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的优惠券</a></dd>
                        <dd><a href="#">我的理财</a></dd>
                    </dl>
                </div>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">京东会员</a>
            </li>

            <li class="space"></li>
            <li>
                <a href="#">企业采购</a>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">客户服务</a>
                <i></i>
                <div class="dropdown-layer">
                    <dl class="d">
                        <dd><a href="#">待处理订单</a></dd>
                        <dd><a href="#">返修退换货</a></dd>
                        <dd><a href="#">降价商品</a></dd>
                    </dl>
                    <dl class="d">
                        <dd><a href="#">消息</a></dd>
                        <dd><a href="#">我的问答</a></dd>
                        <dd><a href="#">我的关注</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的京豆</a></dd>
                        <dd><a href="#">我的白条</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的优惠券</a></dd>
                        <dd><a href="#">我的理财</a></dd>
                    </dl>
                </div>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">网站导航</a>
                <i></i>
                <div class="dropdown-layer">
                    <dl class="d">
                        <dd><a href="#">待处理订单</a></dd>
                        <dd><a href="#">返修退换货</a></dd>
                        <dd><a href="#">降价商品</a></dd>
                    </dl>
                    <dl class="d">
                        <dd><a href="#">消息</a></dd>
                        <dd><a href="#">我的问答</a></dd>
                        <dd><a href="#">我的关注</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的京豆</a></dd>
                        <dd><a href="#">我的白条</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的优惠券</a></dd>
                        <dd><a href="#">我的理财</a></dd>
                    </dl>
                </div>
            </li>
            <li class="space"></li>
            <li class="mobile">
                <a href="mobile.html">手机京东</a>
                <img src="images/mobile.png" height="60" width="60" alt="">
                <i class="close-btn">x</i>
            </li>
        </ul>
    </div>
</div>
<div class="m">
    <div class="w middle">
        <div class="logo">
            <h1>  <!-- 提高权重 便利于搜索引擎优化 -->
                <a href="indexlist.do" title="京东">京东</a>
            </h1>
        </div>
        <form action="miaosha.do?search=1" id="search">
            <div class="form">
                <input id="text" type="text" placeholder="扫描仪" name="searchsome">
                <button onclick="document.getElementById('search').submit()"><i></i></button>
            </div>
        </form>
        <div class="shopCar">
            <i></i><a href="cart.do" class="f10">我的购物车</a>
            <span>
                ${buyCounts}
            </span>
        </div>
        <div class="hotwords">
            <a href="#" class="f10">199减100</a>
            <a href="#">鼠标试用</a>
            <a href="#">农资7折</a>
            <a href="#">低至29元</a>
            <a href="#">抽奖赢空调</a>
            <a href="#">记忆棉</a>
            <a href="#">坐垫</a>
            <a href="#">1分钱买油</a>
            <a href="#">智能手表</a>
        </div>
        <div class="navitems">
            <ul>
                <li><a href="miaosha.do">秒杀</a></li>
                <li><a href="#">优惠券</a></li>
                <li><a href="#">闪购</a></li>
                <li><a href="#">拍卖</a></li>
                <li class="space "></li>
                <li><a href="#">服装城</a></li>
                <li><a href="#">京东超市</a></li>
                <li><a href="#">生鲜</a></li>
                <li><a href="#">全球购</a></li>
                <li class="space"></li>
                <li><a href="#">京东金融</a></li>
            </ul>
        </div>
        <div class="super">
            <a href="#"><img src="images/super.png" alt=""></a>
        </div>
    </div>
</div>
<div class="mr-g">
    <ul>
        <li><a href="#"><img src="uploads/mr-g-1.png" width="34px" alt="">京东超市</a></li>
        <li><a href="#"><img src="uploads/mr-g-2.png" width="34px" alt="">数码电器</a></li>
        <li><a href="#"><img src="uploads/mr-g-3.png" width="34px" alt="">京东服饰</a></li>
        <li><a href="#"><img src="uploads/mr-g-4.png" width="34px" alt="">京东生鲜</a></li>
        <li><a href="#"><img src="uploads/mr-g-5.png" width="34px" alt="">充值缴费</a></li>
        <li><a href="#"><img src="uploads/mr-g-6.png" width="34px" alt="">9.9元拼</a></li>
        <li><a href="#"><img src="uploads/mr-g-7.png" width="34px" alt="">领劵</a></li>
        <li><a href="#"><img src="uploads/mr-g-8.png" width="34px" alt="">赚钱</a></li>
    </ul>
</div>
<div class="w grid">
    <div class="grid-col1 fl">
        <ul id="navi">
            <li><a href="#">家用电器</a></li>
            <li><a href="miaosha.do">手机</a>/<a href="#">运营商</a>/<a href="#">数码</a></li>
            <li><a href="#">电脑</a>/<a href="#">办公</a></li>
            <li><a href="#">家居</a>/<a href="#">家具</a>/<a href="#">家装</a>/<a href="#">厨具</a></li>
            <li><a href="#">男装</a>/<a href="#">女装</a>/<a href="#">童装</a>/<a href="#">内衣</a></li>
            <li><a href="#">美妆</a>/<a href="#">个护清洁</a>/<a href="#">宠物</a></li>
            <li><a href="#">女鞋</a>/<a href="#">箱包</a>/<a href="#">钟表</a>/<a href="#">珠宝</a></li>
            <li><a href="#">男鞋</a>/<a href="#">运动</a>/<a href="#">户外</a></li>
            <li><a href="#">房产</a>/<a href="#">汽车</a>/<a href="#">汽车用品</a></li>
            <li><a href="#">母婴</a>/<a href="#">玩具乐器</a></li>
            <li><a href="#">食品</a>/<a href="#">酒类</a>/<a href="#">生鲜</a>/<a href="#">特产</a></li>
            <li><a href="#">艺术</a>/<a href="#">礼品鲜花</a>/<a href="#">农资绿植</a></li>
            <li><a href="#">医药保健</a>/<a href="#">计生情趣</a></li>
            <li><a href="#">图书</a>/<a href="#">文娱</a>/<a href="#">教育</a>/<a href="#">电子书</a></li>
            <li><a href="#">机票</a>/<a href="#">酒店</a>/<a href="#">旅游</a>/<a href="#">生活</a></li>
            <li><a href="#">理财</a>/<a href="#">众筹</a>/<a href="#">白条</a>/<a href="#">保险</a></li>
        </ul>
        <div class="content">
            <div>
                <div class="channel">
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">玩3C  ></a>
                    <a href="#">手机频道  ></a>
                    <a href="#">网上营业厅  ></a>
                    <a href="#">配件频道  ></a>
                    <a href="#">智能数码  ></a>
                    <a href="#">影像Club  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">手机通讯  ></a></dt>
                        <div>
                            <dd><a href="#">手机</a></dd>
                            <dd><a href="#">游戏手机</a></dd>
                            <dd><a href="#">老人机</a></dd>
                            <dd><a href="#">对讲机</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">手机维修</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">运营商  ></a></dt>
                        <div>
                            <dd><a href="#">合约机</a></dd>
                            <dd><a href="#">手机卡</a></dd>
                            <dd><a href="#">宽带</a></dd>
                            <dd><a href="#">办套餐</a></dd>
                            <dd><a href="#">充话费/流量</a></dd>
                            <dd><a href="#">中国电信</a></dd>
                            <dd><a href="#">中国移动</a></dd>
                            <dd><a href="#">中国联通</a></dd>
                            <dd><a href="#">京东通信</a></dd>
                            <dd><a href="#">挑靓号</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">手机配件  ></a></dt>
                        <div>
                            <dd><a href="#">手机壳</a></dd>
                            <dd><a href="#">贴膜</a></dd>
                            <dd><a href="#">手机存储卡</a></dd>
                            <dd><a href="#">数据线</a></dd>
                            <dd><a href="#">充电器</a></dd>
                            <dd><a href="#">手机耳机</a></dd>
                            <dd><a href="#">创意配件</a></dd>
                            <dd><a href="#">手机饰品</a></dd>
                            <dd><a href="#">手机电池</a></dd>
                            <dd><a href="#">苹果周边</a></dd>
                            <dd><a href="#">移动电源</a></dd>
                            <dd><a href="#">蓝牙耳机</a></dd>
                            <dd><a href="#">手机支架</a></dd>
                            <dd><a href="#">车载配件</a></dd>
                            <dd><a href="#">拍照配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">摄像摄影  ></a></dt>
                        <div>
                            <dd><a href="#">数码相机</a></dd>
                            <dd><a href="#">微单相机</a></dd>
                            <dd><a href="#">单反相机</a></dd>
                            <dd><a href="#">拍立得</a></dd>
                            <dd><a href="#">运动相机</a></dd>
                            <dd><a href="#">摄像机</a></dd>
                            <dd><a href="#">镜头</a></dd>
                            <dd><a href="#">户外器材</a></dd>
                            <dd><a href="#">影棚器材</a></dd>
                            <dd><a href="#">冲印服务</a></dd>
                            <dd><a href="#">数码相框</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">数码配件  ></a></dt>
                        <div>
                            <dd><a href="#">存储卡</a></dd>
                            <dd><a href="#">三脚架/云台</a></dd>
                            <dd><a href="#">相机包</a></dd>
                            <dd><a href="#">滤镜</a></dd>
                            <dd><a href="#">闪光灯/手柄</a></dd>
                            <dd><a href="#">相机清洁/贴膜</a></dd>
                            <dd><a href="#">机身附件</a></dd>
                            <dd><a href="#">镜头附件</a></dd>
                            <dd><a href="#">读卡器</a></dd>
                            <dd><a href="#">支架电池/充电器</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">影音娱乐  ></a></dt>
                        <div>
                            <dd><a href="#">耳机/耳麦</a></dd>
                            <dd><a href="#">音箱/音响</a></dd>
                            <dd><a href="#">智能音箱</a></dd>
                            <dd><a href="#">便携/无线音箱</a></dd>
                            <dd><a href="#">收音机</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                            <dd><a href="#">MP3/MP4</a></dd>
                            <dd><a href="#">专业音频</a></dd>
                            <dd><a href="#">音频线</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">智能设备  ></a></dt>
                        <div>
                            <dd><a href="#">智能手环</a></dd>
                            <dd><a href="#">智能手表</a></dd>
                            <dd><a href="#">智能眼镜</a></dd>
                            <dd><a href="#">智能机器人</a></dd>
                            <dd><a href="#">运动跟踪器</a></dd>
                            <dd><a href="#">健康监测</a></dd>
                            <dd><a href="#">智能配饰</a></dd>
                            <dd><a href="#">智能家居</a></dd>
                            <dd><a href="#">体感车 </a></dd>
                            <dd><a href="#">无人机 </a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电子教育  ></a></dt>
                        <div>
                            <dd><a href="#">学生平板</a></dd>
                            <dd><a href="#">点读机/笔</a></dd>
                            <dd><a href="#">早教益智</a></dd>
                            <dd><a href="#">录音笔</a></dd>
                            <dd><a href="#">电纸书典</a></dd>
                            <dd><a href="#">电子词</a></dd>
                            <dd><a href="#">复读机</a></dd>
                            <dd><a href="#">翻译机</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">玩3C  ></a>
                    <a href="#">电脑办公  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">GAME+  ></a>
                    <a href="#">装机大师  ></a>
                    <a href="#">私人定制  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电脑整机  ></a></dt>
                        <div>
                            <dd><a href="#">笔记本</a></dd>
                            <dd><a href="#">游戏本</a></dd>
                            <dd><a href="#">平板电脑</a></dd>
                            <dd><a href="#">平板电脑配件</a></dd>
                            <dd><a href="#">台式机</a></dd>
                            <dd><a href="#">一体机</a></dd>
                            <dd><a href="#">服务器/工作站</a></dd>
                            <dd><a href="#">笔记本配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电脑配件  ></a></dt>
                        <div>
                            <dd><a href="#">显示器</a></dd>
                            <dd><a href="#">CPU</a></dd>
                            <dd><a href="#">主板</a></dd>
                            <dd><a href="#">显卡</a></dd>
                            <dd><a href="#">硬盘</a></dd>
                            <dd><a href="#">内存</a></dd>
                            <dd><a href="#">机箱</a></dd>
                            <dd><a href="#">电源</a></dd>
                            <dd><a href="#">散热器</a></dd>
                            <dd><a href="#">显示器</a></dd>
                            <dd><a href="#">支架</a></dd>
                            <dd><a href="#">刻录机/光驱</a></dd>
                            <dd><a href="#">声卡/扩展卡</a></dd>
                            <dd><a href="#">装机配件</a></dd>
                            <dd><a href="#">SSD固态硬盘</a></dd>
                            <dd><a href="#">组装电脑</a></dd>
                            <dd><a href="#">USB分线器</a></dd>
                            <dd><a href="#">主板CPU套装</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">外设产品  ></a></dt>
                        <div>
                            <dd><a href="#">鼠标键盘</a></dd>
                            <dd><a href="#">键鼠套装</a></dd>
                            <dd><a href="#">网络仪表仪器</a></dd>
                            <dd><a href="#">U盘</a></dd>
                            <dd><a href="#">移动硬盘</a></dd>
                            <dd><a href="#">鼠标垫</a></dd>
                            <dd><a href="#">摄像头</a></dd>
                            <dd><a href="#">线缆</a></dd>
                            <dd><a href="#">手写板</a></dd>
                            <dd><a href="#">硬盘盒</a></dd>
                            <dd><a href="#">电脑工具</a></dd>
                            <dd><a href="#">电脑清洁</a></dd>
                            <dd><a href="#">UPS电源插座</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">游戏设备  ></a></dt>
                        <div>
                            <dd><a href="#">游戏机</a></dd>
                            <dd><a href="#">游戏耳机</a></dd>
                            <dd><a href="#">手柄/方向盘</a></dd>
                            <dd><a href="#">游戏软件</a></dd>
                            <dd><a href="#">游戏周边</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">网络产品  ></a></dt>
                        <div>
                            <dd><a href="#">路由器</a></dd>
                            <dd><a href="#">网络机顶盒</a></dd>
                            <dd><a href="#">交换机</a></dd>
                            <dd><a href="#">网络存储</a></dd>
                            <dd><a href="#">网卡</a></dd>
                            <dd><a href="#">5G/4G上网</a></dd>
                            <dd><a href="#">网线</a></dd>
                            <dd><a href="#">网络配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">办公设备  ></a></dt>
                        <div>
                            <dd><a href="#">投影机</a></dd>
                            <dd><a href="#">投影配件</a></dd>
                            <dd><a href="#">打印机</a></dd>
                            <dd><a href="#">传真设备</a></dd>
                            <dd><a href="#">验钞/</a></dd>
                            <dd><a href="#">扫描设点钞机</a></dd>
                            <dd><a href="#">复合机备</a></dd>
                            <dd><a href="#">碎纸机</a></dd>
                            <dd><a href="#">考勤门禁</a></dd>
                            <dd><a href="#">收银机</a></dd>
                            <dd><a href="#">会议音频视频</a></dd>
                            <dd><a href="#">保险柜</a></dd>
                            <dd><a href="#">装订/封装机</a></dd>
                            <dd><a href="#">安防监控</a></dd>
                            <dd><a href="#">办公家具</a></dd>
                            <dd><a href="#">白板</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">文具  ></a></dt>
                        <div>
                            <dd><a href="#">笔类</a></dd>
                            <dd><a href="#">本册/便签</a></dd>
                            <dd><a href="#">办公文具</a></dd>
                            <dd><a href="#">文件收纳</a></dd>
                            <dd><a href="#">学生文具</a></dd>
                            <dd><a href="#">计算器</a></dd>
                            <dd><a href="#">画具画材</a></dd>
                            <dd><a href="#">财会用品</a></dd>
                            <dd><a href="#">文房四宝</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">耗材  ></a></dt>
                        <div>
                            <dd><a href="#">硒鼓/墨粉</a></dd>
                            <dd><a href="#">墨盒</a></dd>
                            <dd><a href="#">色带</a></dd>
                            <dd><a href="#">纸类</a></dd>
                            <dd><a href="#">刻录光盘</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">服务产品  ></a></dt>
                        <div>
                            <dd><a href="#">延保服务</a></dd>
                            <dd><a href="#">上门安装</a></dd>
                            <dd><a href="#">维修保养</a></dd>
                            <dd><a href="#">电脑软件</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
            <div>
                <div class="channel">
                    <a href="#">天天5折  ></a>
                    <a href="#">家电馆  ></a>
                    <a href="#">家电专卖店  ></a>
                    <a href="#">家电服务  ></a>
                    <a href="#">企业采购  ></a>
                    <a href="#">商用电器  ></a>
                    <a href="#">以旧换新  ></a>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">电视  ></a></dt>
                        <div>
                            <dd><a href="#">超薄电视</a></dd>
                            <dd><a href="#">全面屏电视</a></dd>
                            <dd><a href="#">智能电视</a></dd>
                            <dd><a href="#">OLED电视</a></dd>
                            <dd><a href="#">智慧屏</a></dd>
                            <dd><a href="#">4K超清电视</a></dd>
                            <dd><a href="#">55英寸</a></dd>
                            <dd><a href="#">65英寸</a></dd>
                            <dd><a href="#">电视配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">空调  ></a></dt>
                        <div>
                            <dd><a href="#">空调挂机</a></dd>
                            <dd><a href="#">空调柜机</a></dd>
                            <dd><a href="#">中央空调</a></dd>
                            <dd><a href="#">变频空调</a></dd>
                            <dd><a href="#">一级能效</a></dd>
                            <dd><a href="#">移动空调</a></dd>
                            <dd><a href="#">以旧换新</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">洗衣机  ></a></dt>
                        <div>
                            <dd><a href="#">以旧换新</a></dd>
                            <dd><a href="#">滚筒洗衣机</a></dd>
                            <dd><a href="#">洗烘一体机</a></dd>
                            <dd><a href="#">波轮洗衣机</a></dd>
                            <dd><a href="#">迷你洗衣机</a></dd>
                            <dd><a href="#">烘干机</a></dd>
                            <dd><a href="#">洗衣机配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">冰箱  ></a></dt>
                        <div>
                            <dd><a href="#">多门</a></dd>
                            <dd><a href="#">对开门</a></dd>
                            <dd><a href="#">三门</a></dd>
                            <dd><a href="#">双门</a></dd>
                            <dd><a href="#">冷柜/冰吧</a></dd>
                            <dd><a href="#">酒柜</a></dd>
                            <dd><a href="#">冰箱配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫大电  ></a></dt>
                        <div>
                            <dd><a href="#">油烟机</a></dd>
                            <dd><a href="#">燃气灶</a></dd>
                            <dd><a href="#">烟灶套装</a></dd>
                            <dd><a href="#">集成灶</a></dd>
                            <dd><a href="#">消毒柜</a></dd>
                            <dd><a href="#">洗碗机</a></dd>
                            <dd><a href="#">电热水器</a></dd>
                            <dd><a href="#">燃气热水器</a></dd>
                            <dd><a href="#">空气能热水器</a></dd>
                            <dd><a href="#">太阳能热水器</a></dd>
                            <dd><a href="#">嵌入式厨电</a></dd>
                            <dd><a href="#">烟机灶具配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">厨卫小电  ></a></dt>
                        <div>
                            <dd><a href="#">天天抢五折</a></dd>
                            <dd><a href="#">破壁机</a></dd>
                            <dd><a href="#">电烤箱</a></dd>
                            <dd><a href="#">电饭煲</a></dd>
                            <dd><a href="#">电压力锅</a></dd>
                            <dd><a href="#">电炖锅</a></dd>
                            <dd><a href="#">豆浆机</a></dd>
                            <dd><a href="#">料理机</a></dd>
                            <dd><a href="#">咖啡机</a></dd>
                            <dd><a href="#">电饼铛</a></dd>
                            <dd><a href="#">榨汁机/原汁机</a></dd>
                            <dd><a href="#">电水壶/热水瓶</a></dd>
                            <dd><a href="#">微波炉</a></dd>
                            <dd><a href="#">电火锅</a></dd>
                            <dd><a href="#">养生壶</a></dd>
                            <dd><a href="#">电磁炉</a></dd>
                            <dd><a href="#">面包机</a></dd>
                            <dd><a href="#">空气炸锅</a></dd>
                            <dd><a href="#">面条机</a></dd>
                            <dd><a href="#">电陶炉</a></dd>
                            <dd><a href="#">煮蛋器</a></dd>
                            <dd><a href="#">电烧烤炉</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">生活电器  ></a></dt>
                        <div>
                            <dd><a href="#">取暖电器</a></dd>
                            <dd><a href="#">加湿器</a></dd>
                            <dd><a href="#">空气净化器</a></dd>
                            <dd><a href="#">吸尘器</a></dd>
                            <dd><a href="#">除螨仪</a></dd>
                            <dd><a href="#">扫地机器人</a></dd>
                            <dd><a href="#">除湿机</a></dd>
                            <dd><a href="#">干衣机</a></dd>
                            <dd><a href="#">蒸汽拖把/拖地机</a></dd>
                            <dd><a href="#">挂烫机/熨斗</a></dd>
                            <dd><a href="#">电话机</a></dd>
                            <dd><a href="#">饮水机</a></dd>
                            <dd><a href="#">净水器</a></dd>
                            <dd><a href="#">电风扇</a></dd>
                            <dd><a href="#">冷风扇</a></dd>
                            <dd><a href="#">毛球修剪器</a></dd>
                            <dd><a href="#">生活电器配件</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">个护健康  ></a></dt>
                        <div>
                            <dd><a href="#">剃须刀</a></dd>
                            <dd><a href="#">电动牙刷</a></dd>
                            <dd><a href="#">电吹风</a></dd>
                            <dd><a href="#">美容器</a></dd>
                            <dd><a href="#">洁面仪</a></dd>
                            <dd><a href="#">按摩器</a></dd>
                            <dd><a href="#">健康秤</a></dd>
                            <dd><a href="#">卷/直发器</a></dd>
                            <dd><a href="#">剃/脱毛器</a></dd>
                            <dd><a href="#">理发器</a></dd>
                            <dd><a href="#">足浴盆</a></dd>
                            <dd><a href="#">足疗机</a></dd>
                            <dd><a href="#">按摩椅</a></dd>
                        </div>
                    </dl>
                </div>
                <div class="cate_detail">
                    <dl>
                        <dt><a href="#">视听影音  ></a></dt>
                        <div>
                            <dd><a href="#">家庭影院</a></dd>
                            <dd><a href="#">KTV音响</a></dd>
                            <dd><a href="#">迷你音响</a></dd>
                            <dd><a href="#">DVD</a></dd>
                            <dd><a href="#">功放</a></dd>
                            <dd><a href="#">回音壁</a></dd>
                            <dd><a href="#">麦克风</a></dd>
                        </div>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    <div class="grid-col2 fl">
        <div class="grid-col2-t">
            <ul class="t-img">
                <c:forEach var="e" items="${lunbos1}">
                    <li><a href="#"><img src="images/${e.pPic}" height="340" width="790" alt=""></a></li>
                </c:forEach>
                <%--<li><a href="#"><img src="images/banner.jpg" height="340" width="790" alt=""></a></li>--%>
                <%--<li><a href="#"><img src="images/banner1.jpg" height="340" width="790" alt=""></a></li>--%>
                <%--<li><a href="#"><img src="images/banner2.jpg" height="340" width="790" alt=""></a></li>--%>
                <%--<li><a href="#"><img src="images/banner3.jpg" height="340" width="790" alt=""></a></li>--%>
            </ul>
            <div>
                <a href="javascript:;" class="arrow-l"><</a>
                <a href="javascript:;" class="arrow-r">></a>
            </div>
            <ol class="circle">
            </ol>
        </div>
        <div class="grid-col2-b">
            <c:forEach var="e" items="${lunbos2}" varStatus="s">
                <c:if test="${s.index == 0}">
                    <div class="fl"><img src="images/${e.pPic}" alt=""></div>
                </c:if>
                <c:if test="${s.index == 1}">
                    <div class="fr"><img src="images/${e.pPic}" alt=""></div>
                </c:if>
            </c:forEach>
            <%--<div class="fl"><img src="images/l.jpg" alt=""></div>--%>
            <%--<div class="fr"><img src="images/r.jpg" alt=""></div>--%>
        </div>
    </div>
    <div class="grid-col3 fr">
        <div class="login">
            <div class="login-t">
                <%
                    if(request.getSession().getAttribute("userName")==null){
                        %>
                        Hi ,欢迎来到京东！<br/>
                        <a href="login.jsp">登录</a>
                        <a href="register.jsp">注册</a>
                        <a href="#" class="user_info">
                            <img src="images/no_login.jpg" alt="">
                        </a>
                        <%
                    }else{
                        User user=new UserDao().getUserByName((String) request.getSession().getAttribute("userName"));
                        %>
                        Hi &nbsp;<%=(String) request.getSession().getAttribute("userName")%>，欢迎来到京东！<br/>
                        <a href="loginout.do">退出登录</a>
                        <a href="#" class="user_info">
                            <img src="uploads/head/<%=user.getHead()%>" onerror="this.src='images/no_login.jpg'" width="40px" height="40px"/>
                        </a>
                        <%
                    }
                %>
            </div>
            <div class="login-b">
                <a href="#">新人福利</a>
                <a href="#">PLUS会员</a>
            </div>
        </div>
        <div class="news">
            <div class="news-t">
                <a href="#" class="cuxiao">促销</a>
                <a href="#" class="gg">公告</a>
                <p><a href="#" class="more">更多</a></p>
                <div class="redline"></div>
                <div class="redline"></div>
            </div>
            <div class="news-b">
                <ul class="news-l">
                    <li><a href="#">挑战三天不洗头</a></li>
                    <li><a href="#">挑战三天不洗头</a></li>
                    <li><a href="#">挑战三天不洗头</a></li>
                    <li><a href="#">挑战三天不洗头</a></li>
                </ul>
                <ul class="news-r">
                    <li>
                        <a href="#">
                            <span>HOT</span>
                            JD页面太ex了，┭┮﹏┭┮
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>最新</span>
                            中国手机市场大洗牌：小米第6，OPPO第二，华为远超苹果
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>热议</span>
                            双十一手机销量首战战报：苹果第五，华为屈居第二，新王者诞生
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>热评</span>
                            华为含泪清库存！128G+4200mAh至退场价！
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 服务拓展模块 -->
        <div class="expand">
            <ul>
                <li><a href="#"><i></i><span>话费</span></a></li>
                <li><a href="#"><i></i><span>机票</span></a></li>
                <li><a href="#"><i></i><span>酒店</span></a></li>
                <li><a href="#"><i></i><span>游戏</span></a></li>
                <li><a href="#"><i></i><span>企业购</span></a></li>
                <li><a href="#"><i></i><span>加油卡</span></a></li>
                <li><a href="#"><i></i><span>电影票</span></a></li>
                <li><a href="#"><i></i><span>火车票</span></a></li>
                <li><a href="#"><i></i><span>众筹</span></a></li>
                <li><a href="#"><i></i><span>理财</span></a></li>
                <li><a href="#"><i></i><span>礼品卡</span></a></li>
                <li><a href="#"><i></i><span>白条</span></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="countdown w">
    <div class="countdown-hd fl">
        <h3>京东秒杀</h3>
        <div class="hd_countdown">
            <strong>24:00</strong>点场 倒计时(2021.12.24)
            <div class="timer">
                <span class="hour">1</span>
                <span class="minute">2</span>
                <span class="second">3</span>
            </div>
        </div>
    </div>
    <div class="countdown-bd fl">
        <ul class="kuan">
            <c:forEach var="e" items="${lunbos3}">
                <li><a href="#"><img src="uploads/${e.pPic}" alt=""></a></li>
            </c:forEach>
            <%--<li><a href="#"><img src="uploads/today01.png" alt=""></a></li>--%>
            <%--<li><a href="#"><img src="uploads/today02.png" alt=""></a></li>--%>
            <%--<li><a href="#"><img src="uploads/today03.png" alt=""></a></li>--%>
            <%--<li><a href="#"><img src="uploads/today04.png" alt=""></a></li>--%>
        </ul>
    </div>
</div>
<div class="recomment w">
    <div class="recom-l">
        <p>每日推荐</p>
    </div>
    <div class="recom-r">
        <ul>
            <c:forEach var="e" items="${lunbos4}">
                <li><a href="detail.do?pID=${e.autoID}"><img src="uploads/${e.pPic}" alt=""></a></li>
                <%--<li><a href="#"><img src="uploads/recom01.webp"></a></li>--%>
            </c:forEach>
            <c:forEach var="e" items="${lunbos4}">
                <li><a href="detail.do?pID=${e.autoID}"><img src="uploads/${e.pPic}" alt=""></a></li>
                <%--<li><a href="#"><img src="uploads/recom01.webp"></a></li>--%>
            </c:forEach>
            <%--<li><a href="#"><img src="uploads/recom01.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom02.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom03.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom04.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom05.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom06.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom01.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom02.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom03.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom04.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom05.webp"></a></li>--%>
            <%--<li><a href="#"><img src="uploads/recom06.webp"></a></li>--%>
        </ul>
    </div>
</div>
<div class="floor w">
    <div class="home_electric">
        <div class="box-hd">
            <h3>家用电器</h3>
            <div class="tab-list">
                <ul>
                    <li><a href="#" class="f10">热门</a>|</li>
                    <li><a href="#">大家电</a>|</li>
                    <li><a href="#">生活电器</a>|</li>
                    <li><a href="#">厨房电器</a>|</li>
                    <li><a href="#">应季电器</a>|</li>
                    <li><a href="#">空气/净水</a>|</li>
                    <li><a href="#">高端电器</a></li>
                </ul>
            </div>
        </div>
        <div class="box-bd">
            <ul class="tab-con">
                <li class="w199">
                    <ul class="tab-con-list">
                        <li><a href="#">节能补贴</a></li>
                        <li><a href="#">4k电视</a></li>
                        <li><a href="#">空气净化器</a></li>
                        <li><a href="#">IH电饭煲</a></li>
                        <li><a href="#">滚筒洗衣机</a></li>
                        <li><a href="#">电热水器</a></li>
                    </ul>
                    <%--<img src="uploads/floor-1-1.png" alt="">--%>
                    <a href="detail.do?pID=${floor1[1].pID}">
                        <img src="uploads/${floor1[1].pPhoto}" alt="">
                    </a>
                </li>
                <li class="w329">
                    <%--<img src="uploads/floor-1-b01.png" alt="">--%>
                        <a href="detail.do?pID=${floor1[0].pID}">
                            <img src="uploads/${floor1[0].pPhoto}" alt="">
                        </a>
                </li>
                <li class="w219">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor1[2].pID}">
                            <%--<img src="uploads/floor-1-2.png" alt="">--%>
                            <img src="uploads/${floor1[2].pPhoto}" alt="">
                        </a>
                    </div>
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor1[3].pID}">
                            <%--<img src="uploads/floor-1-3.png" alt="">--%>
                            <img src="uploads/${floor1[3].pPhoto}" alt="">
                        </a>
                    </div>
                </li>
                <li class="w220">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor1[4].pID}">
                            <%--<img src="uploads/floor-1-4.png" alt="">--%>
                            <img src="uploads/${floor1[4].pPhoto}" alt="">
                        </a>
                    </div>
                </li>
                <li class="w220">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor1[5].pID}">
                            <%--<img src="uploads/floor-1-5.png" alt="">--%>
                            <img src="uploads/${floor1[5].pPhoto}" alt="">
                        </a>
                    </div>
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor1[6].pID}">
                            <%--<img src="uploads/floor-1-6.png" alt="">--%>
                            <img src="uploads/${floor1[6].pPhoto}" alt="">
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="phone_address">
        <div class="box-hd">
            <h3>手机通讯</h3>
            <div class="tab-list">
                <ul>
                    <li><a href="#" class="f10">热门</a>|</li>
                    <li><a href="#">大家电</a>|</li>
                    <li><a href="#">生活电器</a>|</li>
                    <li><a href="#">厨房电器</a>|</li>
                    <li><a href="#">应季电器</a>|</li>
                    <li><a href="#">空气/净水</a>|</li>
                    <li><a href="#">高端电器</a></li>
                </ul>
            </div>
        </div>
        <div class="box-bd">
            <ul class="tab-con">
                <li class="w199">
                    <ul class="tab-con-list">
                        <li><a href="#">节能补贴</a></li>
                        <li><a href="#">4k电视</a></li>
                        <li><a href="#">空气净化器</a></li>
                        <li><a href="#">IH电饭煲</a></li>
                        <li><a href="#">滚筒洗衣机</a></li>
                        <li><a href="#">电热水器</a></li>
                    </ul>
                    <%--<img src="uploads/floor-1-1.png" alt="">--%>
                    <a href="detail.do?pID=${floor2[1].pID}">
                        <img src="uploads/${floor2[1].pPhoto}" alt="" width="187px" height="227px">
                    </a>
                </li>
                <li class="w329">
                    <%--<img src="uploads/floor-1-b01.png" alt="">--%>
                        <a href="detail.do?pID=${floor2[0].pID}">
                            <img src="uploads/${floor2[0].pPhoto}" alt="" width="329px" height="360px">
                        </a>
                </li>
                <li class="w219">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor2[2].pID}">
                            <%--<img src="uploads/floor-1-2.png" alt="">--%>
                            <img src="uploads/${floor2[2].pPhoto}" alt="" width="219px" height="180px">
                        </a>
                    </div>
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor2[3].pID}">
                            <%--<img src="uploads/floor-1-3.png" alt="">--%>
                            <img src="uploads/${floor2[3].pPhoto}" alt="" width="219px" height="178px">
                        </a>
                    </div>
                </li>
                <li class="w220">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor2[4].pID}">
                            <%--<img src="uploads/floor-1-4.png" alt="">--%>
                            <img src="uploads/${floor2[4].pPhoto}" alt="" width="220px" height="359px">
                        </a>
                    </div>
                </li>
                <li class="w220">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor2[5].pID}">
                            <%--<img src="uploads/floor-1-5.png" alt="">--%>
                            <img src="uploads/${floor2[5].pPhoto}" alt="" width="220px" height="180px">
                        </a>
                    </div>
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor2[6].pID}">
                            <%--<img src="uploads/floor-1-6.png" alt="">--%>
                            <img src="uploads/${floor2[6].pPhoto}" alt="" width="219px" height="178px">
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="computer_working">
        <div class="box-hd">
            <h3>电脑办公</h3>
            <div class="tab-list">
                <ul>
                    <li><a href="#" class="f10">热门</a>|</li>
                    <li><a href="#">大家电</a>|</li>
                    <li><a href="#">生活电器</a>|</li>
                    <li><a href="#">厨房电器</a>|</li>
                    <li><a href="#">应季电器</a>|</li>
                    <li><a href="#">空气/净水</a>|</li>
                    <li><a href="#">高端电器</a></li>
                </ul>
            </div>
        </div>
        <div class="box-bd">
            <ul class="tab-con">
                <li class="w199">
                    <ul class="tab-con-list">
                        <li><a href="#">节能补贴</a></li>
                        <li><a href="#">4k电视</a></li>
                        <li><a href="#">空气净化器</a></li>
                        <li><a href="#">IH电饭煲</a></li>
                        <li><a href="#">滚筒洗衣机</a></li>
                        <li><a href="#">电热水器</a></li>
                    </ul>
                    <%--<img src="uploads/floor-1-1.png" alt="">--%>
                    <a href="detail.do?pID=${floor3[1].pID}">
                        <img src="uploads/${floor3[1].pPhoto}" alt="" width="187px" height="227px">
                    </a>
                </li>
                <li class="w329">
                    <%--<img src="uploads/floor-1-b01.png" alt="">--%>
                        <a href="detail.do?pID=${floor3[0].pID}">
                            <img src="uploads/${floor3[0].pPhoto}" alt="" width="329px" height="360px">
                        </a>
                </li>
                <li class="w219">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor3[2].pID}">
                            <%--<img src="uploads/floor-1-2.png" alt="">--%>
                            <img src="uploads/${floor3[2].pPhoto}" alt="" width="219px" height="180px">
                        </a>
                    </div>
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor3[3].pID}">
                            <%--<img src="uploads/floor-1-3.png" alt="">--%>
                            <img src="uploads/${floor3[3].pPhoto}" alt="" width="219px" height="178px">
                        </a>
                    </div>
                </li>
                <li class="w220">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor3[4].pID}">
                            <%--<img src="uploads/floor-1-4.png" alt="">--%>
                            <img src="uploads/${floor3[4].pPhoto}" alt="" width="220px" height="359px">
                        </a>
                    </div>
                </li>
                <li class="w220">
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor3[5].pID}">
                            <%--<img src="uploads/floor-1-5.png" alt="">--%>
                            <img src="uploads/${floor3[5].pPhoto}" alt="" width="220px" height="180px">
                        </a>
                    </div>
                    <div class="tab-con-item">
                        <a href="detail.do?pID=${floor3[6].pID}">
                            <%--<img src="uploads/floor-1-6.png" alt="">--%>
                            <img src="uploads/${floor3[6].pPhoto}" alt="" width="219px" height="178px">
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="fixedtool">
    <ul>
        <li>京东秒杀</li>
        <li>发现好货</li>
        <li>家用电器</li>
        <li>手机通讯</li>
        <li>电脑办公</li>
        <li>联系客服</li>
    </ul>
</div>
<footer>
    <div class="service">
        <!-- 服务模块 -->
        <div class="w">
            <ul>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
            </ul>
        </div>
    </div>
    <!-- 帮助模块 -->
    <div class="w help">
        <div class="fl">
            <dl>
                <dt>购物指南</dt>
                <dd><a href="#">购物流程</a></dd>
                <dd><a href="#">会员介绍</a></dd>
                <dd><a href="#">生活旅行</a></dd>
                <dd><a href="#">常见问题</a></dd>
                <dd><a href="#">大家电</a></dd>
                <dd><a href="#">联系客服</a></dd>
            </dl>
            <dl>
                <dt>配送方式</dt>
                <dd><a href="#">上门自提</a></dd>
                <dd><a href="#">211限时达</a></dd>
                <dd><a href="#">配送服务查询</a></dd>
                <dd><a href="#">配送费收取标准</a></dd>
                <dd><a href="#">海外配送</a></dd>
            </dl>
            <dl>
                <dt>支付方式</dt>
                <dd><a href="#">货到付款</a></dd>
                <dd><a href="#">在线支付</a></dd>
                <dd><a href="#">分期付款</a></dd>
                <dd><a href="#">邮局汇款</a></dd>
                <dd><a href="#">公司转账</a></dd>
            </dl>
            <dl>
                <dt>售后服务</dt>
                <dd><a href="#">售后政策</a></dd>
                <dd><a href="#">价格保护</a></dd>
                <dd><a href="#">退款说明</a></dd>
                <dd><a href="#">返修/退换货</a></dd>
                <dd><a href="#">取消订单</a></dd>
            </dl>
            <dl>
                <dt>特色服务</dt>
                <dd><a href="#">夺宝岛</a></dd>
                <dd><a href="#">DIY装机</a></dd>
                <dd><a href="#">延保服务</a></dd>
                <dd><a href="#">京东E卡</a></dd>
                <dd><a href="#">京东通信</a></dd>
                <dd><a href="#">京鱼座智能</a></dd>
            </dl>
        </div>
        <div class="fr coverage">
            <h5>京东自营覆盖区县</h5>
            <p>京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
            <a href="#">查看详情 > </a>
        </div>
    </div>
    <div class="w copyright">
        <p>
            <a href="#">关于我们</a>
            <span> | </span>0
            <a href="#">联系我们</a>
            <span> | </span>
            <a href="#">联系客服</a>
            <span> | </span>
            <a href="#">合作招商</a>
            <span> | </span>
            <a href="#">商家帮助</a>
            <span> | </span>
            <a href="#">营销中心</a>
            <span> | </span>
            <a href="#">手机京东</a>
            <span> | </span>
            <a href="#">友情链接</a>
            <span> | </span>
            <a href="#">销售联盟</a>
            <span> | </span>
            <a href="#">京东社区</a>
            <span> | </span>
            <a href="#">风险监测</a>
            <span> | </span>
            <a href="#">隐私政策</a>
            <span> | </span>
            <a href="#">京东公益</a>
            <span> | </span>
            <a href="#">English Site</a>
            <span> | </span>
            <a href="#">Media & IR</a>
        </p>
        <div>
            <p>京公网安备 11000002000088号<span>|</span>京ICP证070359号<span>|</span>互联网药品信息服务资格证编号(京)-经营性-2014-0008<span>|</span>新出发京零 字第大120007号</p>
            <p>互联网出版许可证编号新出网证(京)字150号<span>|</span>出版物经营许可证<span>|</span>网络文化经营许可证京网文[2014]2148-348号<span>|</span>违法和不良信息举报电话：4006561155</p>
            <p>Copyright © 2004 - 2021  京东JD.com 版权所有<span>|</span>消费者维权热线：4006067733经营证照|(京)网械平台备字(2021)第00003号<span>|</span>营业执照</p>
            <p>Global Site<span>|</span>Сайт России<span>|</span>Situs Indonesia<span>|</span>Sitio de España<span>|</span>เว็บไซต์ประเทศไทย</p>
            <p>京东旗下网站：京东钱包<span>|</span>京东云</p>
        </div>
        <p class="foot-icon">
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
        </p>
        <p>--- 19软件 zc  ---</p>
    </div>
</footer>
<div class="m-copyright">
    <p>Copyright © 2004-2021 京东JD.com 版权所有</p>
</div>
<div class="commonNav">
    <ul>
        <li><a href="#"><img src="uploads/nav-5.png" width="100%" alt=""></a></li>
        <li><a href="#"><img src="uploads/nav-2.png" width="100%" alt=""></a></li>
        <li><a href="#"><img src="uploads/nav-3.png" width="100%" alt=""></a></li>
        <li><a href="#"><img src="uploads/nav-4.png" width="100%" alt=""></a></li>
    </ul>
</div>
</body>
</html>

