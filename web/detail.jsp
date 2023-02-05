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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>京东(JD.COM)-综合网购首选-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="description" content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/detail.css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/base.js"></script>
    <script src="js/detail.js"></script>
</head>
<body>
<header>
    <a href="#">
        <img src="images/header.jpg" height="80"  width="100%" alt="" >
    </a>
</header>
<div class="shortcut">
    <div class="w">
        <ul class="fl city">
            <li><i class="f10"></i><a href="#">江科大666#666</a></li>
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
                <a href="#">手机京东</a>
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
<div class="de_container">
    <div class="w">
        <div class="crumb_wrap">
            <c:if test="${pInfo.type == 2}">
                <a href="#">手机、数码、通讯</a>>
                <a href="#">手机</a>>
                <a href="#">5G phone</a>
                <%--<div class="fl"><img src="images/${e.pPic}" alt=""></div>--%>
            </c:if>
            <c:if test="${pInfo.type == 1}">
                <a href="#">家用电器、数码、空调、数码、洗衣机</a>>
                <a href="#">家用电器、数码</a>>
                <a href="#">家用电器</a>
                <%--<div class="fl"><img src="images/${e.pPic}" alt=""></div>--%>
            </c:if>
            <c:if test="${pInfo.type == 3}">
                <a href="#">电脑、数码、笔记本、显卡、CPU、机箱</a>>
                <a href="#">电脑、数码、笔记本</a>>
                <a href="#">电脑、笔记本</a>
                <%--<div class="fl"><img src="images/${e.pPic}" alt=""></div>--%>
            </c:if>
            <%--<a href="#">手机、数码、通讯</a> >--%>
            <%--<a href="#">手机</a> >--%>
            <%--<a href="#">Apple苹果</a> >--%>
            <%--<a href="#">iphone 6S系类</a>--%>
        </div>
        <div class="product_intro">
            <div class="preview_wrap fl">
                <div class="preview_img">
                    <img src="uploads/${pInfo.pPhoto}" width="100%" height="400px" alt="">
                    <div class="mask"></div>
                    <div class="big">
                        <img src="uploads/${pInfo.pPhoto}" width="800px" height="800px" alt="" class="bigimg">
                    </div>
                </div>
                <div class="preview_list">
                    <a href="javascript:;" class="arrow_prev"><</a>
                    <a href="javascript:;" class="arrow_next">></a>
                    <ul class="list_item">
                        <li class="current"><img src="uploads/${pInfo.pPhoto}" alt="" width="56px" height="56px"></li>
                        <li><img src="uploads/b2.jpg" alt="" width="56px"></li>
                        <li><img src="uploads/b3.jpg" alt="" width="56px"></li>
                        <li><img src="uploads/b4.jpg" alt="" width="56px"></li>
                        <li><img src="uploads/b5.jpg" alt="" width="56px"></li>
                    </ul>
                </div>
            </div>
            <div class="itemInfo_wrap fr">
                <div class="sku_name">
                    ${pInfo.pName}
                    <%--【超级爆款】华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+128GB天空之境全网通版双4G手机--%>
                </div>
                <div class="news">
                    购买1-50件时享受单件价￥4758，超出数量以结算价为准
                </div>
                <div class="summary">
                    <dl class="summary_price">
                        <dt>闪购价</dt>
                        <dd>
                            <i class="price">${pInfo.price}</i>
                            <a href="#">降价通知</a>
                            <div class="remark">累计评价${pInfo.comments}</div>
                        </dd>
                    </dl>
                    <dl class="summary_promotion">
                        <dt>促销</dt>
                        <dd>
                            <em>加购价</em> 满999.00另加20.00元，或满1999.00另加30.00元，或满2999.00另加40.00元，即可在购物车换购热销商品 详情》
                        </dd>
                    </dl>
                    <dl class="summary_support">
                        <dt>支持</dt>
                        <dd>以旧换新，闲置手机回收 4G套餐超值抢 礼品购</dd>
                    </dl>
                    <dl class="summary_stock">
                        <dt>配送至</dt>
                        <dd>
                            江科大6#222有货 支持 99元免运费 |货到付款 |211限时达
                            <br>由自营发货，并提供售后服务。11:00前完成下单，预计今天（10月24日）送达
                        </dd>
                    </dl>
                    <dl class="choose_color">
                        <dt>选择颜色</dt>
                        <dd>
                            <a href="javasript:;" class="current">天空之境</a>
                            <a href="javasript:;">亮黑色</a>
                            <a href="javasript:;">极光色</a>
                            <a href="javasript:;">赤茶橘</a>
                            <a href="javasript:;">珠光贝母</a>
                            <a href="javasript:;">嫣紫色</a>
                            <a href="javasript:;">墨玉蓝</a>
                        </dd>
                    </dl>
                    <dl class="choose_version">
                        <dt>选择版本</dt>
                        <dd>
                            <a href="javascript:;" class="current">公开版</a>
                            <a href="javascript:;">移动4G</a>
                        </dd>
                    </dl>
                    <dl class="choose_version">
                        <dt>内存容量</dt>
                        <dd>
                            <a href="javascript:;" class="current">8G+218G</a>
                            <a href="javascript:;">8G+256G</a>
                            <a href="javascript:;">8G+512G</a>
                        </dd>
                    </dl>
                    <dl class="choose_type">
                        <dt>购买方式</dt>
                        <dd>
                            <a href="javascript:;" class="current">官方标配</a>
                            <a href="javascript:;">移动优惠购</a>
                            <a href="javascript:;">电信优惠购</a>
                        </dd>
                    </dl>
                    <dl class="choose_type">
                        <dt>套餐</dt>
                        <dd>
                            <a href="javascript:;" class="current">保护套餐</a>
                            <a href="javascript:;">充电套餐</a>
                        </dd>
                    </dl>
                    <form action="cart.do?pID=${pInfo.pID}" method="post" id="gogogo">
                        <div class="choose_btns">
                            <div class="choose_amount">
                                <input type="text" value="1" name="pNumber">
                                <a href="javascript:;" class="add">+</a>
                                <a href="javascript:;" class="reduce">-</a>
                            </div>
                            <a href="#" class="addCar" onclick="document.getElementById('gogogo').submit()">加入购物车</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="product_detail">
            <div class="aside fl">
                <div class="tab_list">
                    <ul>
                        <li class="first_tab current">猜你喜欢</li>
                        <li class="second_tab">推荐品牌</li>
                    </ul>
                </div>
                <div class="tab_con">
                    <ul>
                        <li>
                            <img src="uploads/iphoneXR.jpg" width="100%" alt="">
                            <h5>Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待</h5>
                            <div class="aside_price">￥4499.00</div>
                            <a href="#" class="as_addcar">加入购物车</a>
                        </li>
                        <li>
                            <img src="uploads/iphoneXR.jpg" width="100%" alt="">
                            <h5>Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待</h5>
                            <div class="aside_price">￥4499.00</div>
                            <a href="#" class="as_addcar">加入购物车</a>
                        </li>
                        <li>
                            <img src="uploads/iphoneXR.jpg" width="100%" alt="">
                            <h5>Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待</h5>
                            <div class="aside_price">￥4499.00</div>
                            <a href="#" class="as_addcar">加入购物车</a>
                        </li>
                        <li>
                            <img src="uploads/iphoneXR.jpg" width="100%" alt="">
                            <h5>Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待</h5>
                            <div class="aside_price">￥4499.00</div>
                            <a href="#" class="as_addcar">加入购物车</a>
                        </li>
                        <li>
                            <img src="uploads/iphoneXR.jpg" width="100%" alt="">
                            <h5>Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待</h5>
                            <div class="aside_price">￥4499.00</div>
                            <a href="#" class="as_addcar">加入购物车</a>
                        </li>
                        <li>
                            <img src="uploads/iphoneXR.jpg" width="100%" alt="">
                            <h5>Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待</h5>
                            <div class="aside_price">￥4499.00</div>
                            <a href="#" class="as_addcar">加入购物车</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="detail fr">
                <div class="detail_tab_list">
                    <ul>
                        <li class="current">商品介绍</li>
                        <li>规格与包装</li>
                        <li>商品评价（50000）</li>
                    </ul>
                </div>
                <div class="detail_tab_con">
                    <div class="item">
                        <ul class="item_info">
                            <li>商品名称：华为P30 Pro</li>
                            <li>商品编号：100004323294</li>
                            <li>商品毛重：0.54kg</li>
                            <li>商品产地：中国大陆</li>
                            <li>CPU型号：麒麟980</li>
                            <li>运行内存：8GB</li>
                            <li>机身内存：128GB</li>
                            <li>存储卡：NM存储卡</li>
                            <li>摄像头数量：后置四摄</li>
                            <li>后置摄像头：4000万像素</li>
                            <li>前置摄像头：3200万像素</li>
                            <li>分辨率：全高清FHD+</li>
                            <li>热点：人脸识别，快速充电，无线充电，液冷散热，高倍率变焦，屏幕指纹，防水防尘，NFC，曲面屏</li>
                            <li>操作系统：Android(安卓)</li>
                        </ul>
                        <p><a href="#" class="more">查看更多参数</a></p>
                        <img src="uploads/intro01.jpg" alt="">
                        <img src="uploads/intro02.jpg" alt="">
                    </div>
                    <div class="item">
                        <ul class="item_info line">
                            <li>
                                <h3>主体</h3>
                                <dl>
                                    <dl><dd>入网型号</dd><dt>VOG-AL00</dt></dl>
                                    <dl><dd>品牌</dd><dt>华为（HUAWEI）</dt></dl>
                                    <dl><dd>产品名称</dd><dt>P30 Pro</dt></dl>
                                    <dl><dd>上市年份</dd><dt>2019年</dt></dl>
                                    <dl><dd>上市月份</dd><dt>4月</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>基本信息</h3>
                                <dl>
                                    <dl><dd>机身颜色</dd><dt>天空之境</dt></dl>
                                    <dl><dd>机身长度（mm）</dd><dt>158</dt></dl>
                                    <dl><dd>机身重量（g）</dd><dt>192</dt></dl>
                                    <dl><dd>机身材质工艺</dd><dt>以官网信息为准</dt></dl>
                                    <dl><dd>机身宽度（mm）</dd><dt>73.4</dt></dl>
                                    <dl><dd>机身材质分类</dd><dt>金属边框、玻璃后盖</dt></dl>
                                    <dl><dd>机身厚度（mm）</dd><dt><8.41/dt></dl>
                                    <dl><dd>运营商标志或内容</dd><dt>无</dt></dl>
                                    <dl><dd>输入方式</dd><dt>触控</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>主芯片</h3>
                                <dl>
                                    <dl><dd>CPU品牌</dd><dt>海思（Hisilicon）</dt></dl>
                                    <dl><dd>CPU型号</dd><dt>麒麟980</dt></dl>
                                    <dl><dd></dd><dt></dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>存储</h3>
                                <dl>
                                    <dl><dd>存储卡</dd><dt>NM存储卡</dt></dl>
                                    <dl><dd>运行内存</dd><dt>8GB</dt></dl>
                                    <dl><dd>最大存储扩展容量</dd><dt>256GB</dt></dl>
                                    <dl><dd>机身存储</dd><dt>128GB</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>屏幕</h3>
                                <dl>
                                    <dl><dd>分辨率</dd><dt>FHD+ 2340*1080 像素（备注：该分辨率对应标准矩形，实际屏幕采用圆角和珍珠屏设计，有效像素略少。）</dt></dl>
                                    <dl><dd>屏幕像素密度（ppi）</dd><dt>398 PPI</dt></dl>
                                    <dl><dd>屏幕材质类型</dd><dt>OLED</dt></dl>
                                    <dl><dd>屏幕色彩</dd><dt>1670万色</dt></dl>
                                    <dl><dd>屏幕比例</dd><dt>其它屏幕比例</dt></dl>
                                    <dl><dd>主屏幕尺寸（英寸）</dd><dt>6.47英寸</dt></dl>
                                    <dl><dd>触摸屏类型</dd><dt>电容屏</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>后置摄像头</h3>
                                <dl>
                                    <dl><dd>功能备注</dd><dt>同时支持华为Time-of-Flight（ToF）摄像头</dt></dl>
                                    <dl><dd>后摄3摄像素</dd><dt>800万像素</dt></dl>
                                    <dl><dd>后摄2摄像头的功能</dd><dt>超广角</dt></dl>
                                    <dl><dd>后摄2摄像素</dd><dt>2000万像素</dt></dl>
                                    <dl><dd>后摄主摄光圈</dd><dt>其他</dt></dl>
                                    <dl><dd>后摄4摄像头的功能</dd><dt>ToF</dt></dl>
                                    <dl><dd>摄像头数量</dd><dt>后置四摄</dt></dl>
                                    <dl><dd>闪光灯</dd><dt>LED灯</dt></dl>
                                    <dl><dd>后摄主摄光学防抖</dd><dt>支持光学防抖</dt></dl>
                                    <dl><dd>后摄3摄像头的功能</dd><dt>其他</dt></dl>
                                    <dl><dd>后摄3摄光学防抖</dd><dt>支持光学防抖</dt></dl>
                                    <dl><dd>后摄的主摄像素</dd><dt>4000万像素</dt></dl>
                                    <dl><dd>后摄2摄光圈</dd><dt>f/2.2</dt></dl>
                                    <dl><dd>后摄2摄光学防抖</dd><dt>不支持光学防抖</dt></dl>
                                    <dl><dd>拍照特点</dd><dt>数码变焦；光学变焦；自动对焦；美颜；微距；全景；滤镜；HDR；夜间拍摄；美肤录像</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>前置摄像头</h3>
                                <dl>
                                    <dl><dd>功能备注</dd><dt>备注： 不同拍照模式的照片像素可能有差异，请以实际为准。</dt></dl>
                                    <dl><dd>前摄主摄光圈</dd><dt>f/2.0</dt></dl>
                                    <dl><dd>前摄的主摄像素</dd><dt>3200万像素</dt></dl>
                                    <dl><dd>拍照特点</dd><dt>美颜；全景；滤镜；美肤录像</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>电池信息</h3>
                                <dl>
                                    <dl><dd>电池是否可拆卸</dd><dt>电池不可拆卸</dt></dl>
                                    <dl><dd>充电器</dd><dt>10V/4A</dt></dl>
                                    <dl><dd>无线充电</dd><dt>支持无线充电</dt></dl>
                                    <dl><dd>电池容量（mAh）</dd><dt>4200mAh（典型值）</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>操作系统</h3>
                                <dl>
                                    <dl><dd>操作系统</dd><dt>Android(安卓)</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>网络支持</h3>
                                <dl>
                                    <dl><dd>副卡网络频率</dd><dt>和主卡相同</dt></dl>
                                    <dl><dd>双卡机类型</dd><dt>双卡双待</dt></dl>
                                    <dl><dd>高清语音通话（VOLTE）</dd><dt>移动VOLTE；联通VOLTE；电信VOLTE</dt></dl>
                                    <dl><dd>SIM卡类型</dd><dt>Nano SIM</dt></dl>
                                    <dl><dd>网络频率(4G)FDD</dd><dt>B4；B5；B2；B1；B3；B6；B7；B8；B12；B17；B18；B19；B20；B26</dt></dl>
                                    <dl><dd>副SIM卡3G/2G网络</dd><dt>3G WCDMA(联通)；2G GSM(移动/联通)；2G CDMA(电信)</dt></dl>
                                    <dl><dd>副SIM卡4G网络</dd><dt>4G TD-LTE(移动)；4G FDD-LTE(联通、电信)</dt></dl>
                                    <dl><dd>最大支持SIM卡数量</dd><dt>2个</dt></dl>
                                    <dl><dd>网络频率（2G/3G）</dd><dt>2G：GSM 850/900/1800/1900；3G：TD-SCDMA 1900/2000；3G：WCDMA 850/900/1900/2100</dt></dl>
                                    <dl><dd>5G网络</dd><dt>不支持5G</dt></dl>
                                    <dl><dd>4G网络</dd><dt>4G TD-LTE(移动)；4G FDD-LTE(联通、电信)；4G FDD-LTE(联通)</dt></dl>
                                    <dl><dd>3G/2G网络</dd><dt>3G TD-SCDMA(移动)；3G WCDMA(联通)；3G CDMA2000(电信)；2G GSM(移动/联通)</dt></dl>
                                    <dl><dd>网络频率(4G)TDD</dd><dt>B34；B38；B39；B40；B41</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>数据接口</h3>
                                <dl>
                                    <dl><dd>数据传输接口</dd><dt>WIFI；NFC；蓝牙；WiFi热点</dt></dl>
                                    <dl><dd>耳机接口类型</dd><dt>Type-C</dt></dl>
                                    <dl><dd>数据线</dd><dt>USB3.1</dt></dl>
                                    <dl><dd>充电接口类型</dd><dt>Type-C</dt></dl>
                                    <dl><dd>NFC/NFC模式</dd><dt>支持（点对点模式）;支持（读卡器模式）;支持卡模拟</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>手机特性</h3>
                                <dl>
                                    <dl><dd>三防标准</dd><dt>IP68</dt></dl>
                                    <dl><dd>生物识别</dd><dt>人脸识别；屏幕光学指纹；正面指纹</dt></dl>
                                    <dl><dd>传感器</dd><dt>高度测量；陀螺仪；距离感应；光线感应；红外遥控；GPS/A-GPS；北斗；霍尔感应器</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>辅助功能</h3>
                                <dl>
                                    <dl><dd>常用功能</dd><dt>录音；手势识别；超大字体；重力感应</dt></dl>
                                </dl>
                            </li>
                            <li>
                                <h3>包装清单</h3>
                                <dl>
                                    <dl><dt>手机（含内置电池）*1 标配 快速指南*1 标配 华为SuperCharge充电器*1 标配 三包凭证*1 标配 Type-C耳机*1 标配 Type-C 数据线*1 标配 取卡针 *1 标配 TPU保护壳*1 标配</dt></dl>
                                </dl>
                            </li>
                        </ul>
                    </div>
                    <div class="item">
                        <div class="rate">
                            <div class="rate-l fl">
                                <strong>100<span>%</span></strong><br><span>好评度</span>
                            </div>
                            <div class="rate-r fl">
                                <h3>买家印象</h3>
                                <ul>
                                    <li>"性价比高(2177)"</li>
                                    <li>"系统流畅(1860)"</li>
                                    <li>"外观漂亮(1823)"</li>
                                    <li>"功能齐全(1689)"</li>
                                    <li>"支持国产机(1488)"</li>
                                    <li>"反应快(1392)"</li>
                                    <li>"照相不错(1119)"</li>
                                    <li>"通话质量好(865)"</li>
                                    <li>"国民手机(831)"</li>
                                </ul>
                            </div>
                        </div>
                        <div class="comment-info">
                            <a href="#">全部评价 (32)</a>
                            <a href="#">好评 (32)</a>
                            <a href="#">中评 (32)</a>
                            <a href="#">差评 (32)</a>
                        </div>
                        <ul class="comment-main">
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年10月24日 17:46
                                    </div>
                                    <div class="main-bd">
                                        还行！<br />
                                        颜色分类：金 8G+218G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年10月20日 07:46
                                    </div>
                                    <div class="main-bd">
                                        很满意！<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 1949年10月01日 17:46
                                    </div>
                                    <div class="main-bd">
                                        帮朋友买的，没拆开来看，据说还不错，拍国旗很好！<br />
                                        颜色分类：金  电信20G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 1991年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        蟹不肉！<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2030年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        Krin980 YYDS<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        手里的Mate40 XS不香了<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年7月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        <br />
                                        50X拍东京奥运会裁判
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2015年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        这都2021了，不会还有人用p30吧<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2015年10月22日 17:46
                                    </div>
                                    <div class="main-bd">
                                        拿舍友钱买的，挺好用的<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
<%--                            <c:forEach begin="1" end="${comments}" step="1" varStatus="s">--%>
<%--                                <li>--%>
<%--                                    <a href="#"></a>--%>
<%--                                    <div class="comment-main-r">--%>
<%--                                        <div class="main-top">--%>
<%--                                            ${s.name} 评论于 ${s.date}--%>
<%--                                        </div>--%>
<%--                                        <div class="main-bd">--%>
<%--                                            ${s.str}<br />--%>
<%--                                            ${s.type}--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                            </c:forEach>--%>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        帮朋友买的，没拆开来看，据说还不错，很满意！<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2019年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        帮朋友买的，没拆开来看，据说还不错，很满意！<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年11月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        sixsixsix<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#"></a>
                                <div class="comment-main-r">
                                    <div class="main-top">
                                        b***1 (匿名) 评论于 2021年10月02日 17:46
                                    </div>
                                    <div class="main-bd">
                                        奥里给<br />
                                        颜色分类：金  电信4G
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
            <span> | </span>
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
    </div>
</footer>
</body>
</html>
