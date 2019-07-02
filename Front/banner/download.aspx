<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="Game.Web.banner.download" %>

<!DOCTYPE html>
<html style="font-size: 100px;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢乐棋牌官网</title>
    <meta name="keywords" content="欢乐棋牌,欢乐棋牌官网,微星捕鱼,微星斗地主,微星炸金花,微星牛牛,微星电玩城">
    <meta name="description" content="欢乐棋牌官网,含微星捕鱼,微星斗地主,微星炸金花,微星牛牛,微星电玩城等游戏,公平公正,正规运营,区块链棋牌">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=0">
    <meta name="format-detection" content="telephone=no">
    <script type="text/javascript" src="./source/pub_rem.js"></script>
    <link rel="stylesheet" href="./source/pub_reset.css">
    <style type="text/css">
        html {
            background: #fff;
        }

        ::-webkit-scrollbar {
            width: 16px;
            height: 10px;
        }
        /*scroll shadow radius*/
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            border-radius: 10px;
            background-color: #ddd;
        }
        /*swipe inset radius*/
        ::-webkit-scrollbar-thumb {
            border-radius: 10px;
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
            background-color: #029ed7;
        }

        .touch {
            display: block;
            width: 100%;
            height: 1rem;
            line-height: 1rem;
            color: #fff;
            font-size: 0.46rem;
            text-align: center;
            border-radius: 0.06rem;
            background-image: url(source/download_btn.png);
            background-size: 100% 100%;
        }

        .max_width {
            max-width: 720px;
            margin: 0 auto;
            padding-bottom: 2rem;
        }

        .banner {
            width: 100%;
            height: 5.17rem;
        }

            .banner img {
                width: 100%;
            }

        .dw_area {
            min-height: 1.6rem;
            padding: 0.18rem 0.22rem;
            position: relative;
        }

            .dw_area .in {
                min-height: 1.6rem;
            }

                .dw_area .in .m {
                    display: block;
                    width: 1.6rem;
                    height: 1.6rem;
                    position: absolute;
                    left: 0.27rem;
                    top: .18rem;
                }

                    .dw_area .in .m img {
                        width: 100%;
                    }

                .dw_area .in .rt_t {
                    padding: 0.15rem 0 0 1.82rem;
                    color: #ffffff;
                }

                    .dw_area .in .rt_t h3 {
                        font-size: 0.48rem;
                    }

                    .dw_area .in .rt_t span {
                        display: inline-block;
                        padding: 0.15rem 0 0 2.3rem;
                        font-size: 0.3rem;
                        background: url(./source/star.png) no-repeat 0 0.15rem;
                        background-size: 2rem 0.4rem;
                    }

        .btn {
            padding: 0.16rem 0 0.24rem;
        }

        .gray_w {
            background: #ededed;
        }

        .game {
            padding: 0.26rem 0.2rem;
            min-height: 4.17rem;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -o-box-sizing: border-box;
            overflow: hidden;
        }

        .game_pic {
            width: 100%;
            min-height: 4.17rem;
            white-space: nowrap;
            overflow-x: auto;
            overflow-scrolling: touch;
            -webkit-overflow-scrolling: touch;
            -moz-overflow-scrolling: touch;
        }

            .game_pic a img {
                width: 40%;
                margin-right: 2.4%;
            }

        .game_lis {
            margin-top: 0.38rem;
            padding: 0.3rem;
            border-top: 1px solid #d5d5d5;
            background: #ededed;
        }

            .game_lis h3 {
                font-size: 0.38rem;
                color: #333;
            }

            .game_lis ul {
                padding: 0.32rem 0.24rem 0;
                min-height: 1.7rem;
                overflow: hidden;
            }

                .game_lis ul li {
                    width: 25%;
                    float: left;
                }

                    .game_lis ul li a {
                        display: block;
                    }

                        .game_lis ul li a .m {
                            display: block;
                            width: 1.2rem;
                            height: 1.2rem;
                            margin: 0 auto;
                        }

                            .game_lis ul li a .m img {
                                width: 100%;
                            }

                        .game_lis ul li a .t {
                            width: 100%;
                            text-align: center;
                            color: #3333;
                            font-size: 0.24rem;
                            display: inline-block;
                            margin-top: 0.16rem;
                        }

        .dw_propt {
            width: 100%;
            min-height: 1.54rem;
            background: rgba(255,255,255,0.77);
            position: fixed;
            left: 0;
            bottom: 0;
            box-shadow: 0 0 2px rgba(0,0,0,0.35);
        }

        .ppt_lt {
            position: relative;
        }

        .img {
            display: block;
            width: 1.1rem;
            height: 1.1rem;
            position: absolute;
            top: 0.22rem;
            left: 0.38rem;
            overflow: hidden;
        }

            .img img {
                display: block;
                width: 100%;
                height: 100%;
            }

        .ppt_lt .lt_t {
            padding: 0.30rem 0 0 1.74rem;
            color: #333;
        }

            .ppt_lt .lt_t h3 {
                font-size: 0.4rem;
            }

            .ppt_lt .lt_t span {
                font-size: 0.28rem;
                color: #545454;
                display: block;
                margin-top: 0.15rem;
            }

        .ppt_lt_ii .lt_in {
            margin: 0 0.3rem;
            position: relative;
        }

        .ppt_lt .ppt_dw {
            display: block;
            width: 2.1rem;
            height: 0.9rem;
            line-height: 0.9rem;
            background: #43c117;
            color: #fff;
            text-align: center;
            font-size: 0.42rem;
            border-radius: 0.08rem;
            position: absolute;
            top: 0.33rem;
            right: 0.3rem;
        }

        .ppt_lt_ii .ppt_dw {
            width: 100%;
            left: 0;
            right: 0;
        }

        footer {
            min-height: 0.80rem;
            padding: 0.23rem 0;
            border-top: 1px solid #ededed;
            background: #424a55;
            text-align: center;
        }

            footer p {
                color: #c9c9c9;
                font-size: 0.28rem;
            }

                footer p:last-child {
                    margin-top: 0.1rem;
                }

        body {
            /*            background: url(source/back.jpg) no-repeat;
            background-size: 100%;*/
            overflow-x: hidden;
        }

        .dw_area .in.icons {
            margin-top: 0.3rem;
            width: 110%;
        }

            .dw_area .in.icons .m {
                position: static;
                display: inline-block;
                width: 1.25rem;
                height: 1.25rem;
                margin-right: 0.14rem;
                /*background: rgba(0, 0, 0, 0.5);*/
            }

                .dw_area .in.icons .m .name, .dw_area.game-item .m .name {
                    width: 100%;
                    text-align: center;
                    font-weight: bold;
                }

        .game-item {
            margin: 0.25rem;
            background: #eaf1f7;
            height: 2.6rem;
            border-radius: 0.06rem;
            position: relative;
        }

        .dw_area.game-item .m {
            display: inline-block;
            width: 1.25rem;
            height: 1.25rem;
            position: absolute;
        }

            .dw_area.game-item .m img {
                width: 100%;
                height: 100%;
            }

        .dw_area.game-item .tip {
            position: absolute;
            left: 0.15rem;
            top: 2.45rem;
            width: 1.5rem;
            text-align: center;
            font-size: 0.2rem;
            color: gray;
            font-weight: bold;
        }

        .down-button {
            display: block;
            background: url(source/download.png);
            background-size: 100%;
            width: 1.5rem;
            height: 0.7rem;
            top: 1.9rem;
            left: 0.15rem;
            position: absolute;
            background-repeat: no-repeat;
        }

        .dw_area.game-item .pic {
            position: absolute;
            left: 2rem;
            top: 0.2rem;
            /*background: orange;*/
            width: 4.5rem;
            height: 2.55rem;
            background-size: 100% 100%;
        }

        a:hover {
            cursor: pointer;
        }

        .weixin-tip {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            background: rgba(0,0,0,0.8);
            filter: alpha(opacity=80);
            height: 100%;
            width: 100%;
            z-index: 100;
        }

            .weixin-tip p {
                text-align: center;
                margin-top: 10%;
                padding: 0 5%;
            }
    </style>
    <style type="text/css">
        .guid {
            position: fixed;
            left: 0;
            top: 0;
            height: 100%;
            width: 100%;
            background: rgba(0,0,0,.8);
            text-align: center;
            padding: 0 .3rem;
            z-index: 99;
            display: none;
            box-sizing: border-box;
        }

            .guid img {
                max-width: 100%;
            }

        .guid-1 {
            position: relative;
            padding: .2rem .5rem 0 1rem;
        }

            .guid-1 img {
                margin-left: -0.5rem;
                margin-top: 0;
            }

            .guid-1 .guid-close {
                position: absolute;
                right: .2rem;
                top: .15rem;
                width: .5rem;
            }

        .guid-2 {
            margin-top: -0.4rem;
        }

        .guid-3 img {
            width: 40%;
            margin: 0 auto;
            display: block;
        }

        .guid-4 img {
            width: 40%;
            margin: 0 auto;
            display: block;
        }

        .guid-bottom {
            position: absolute;
            left: 0;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <div class="max_width">
        <div class="banner">
            <img src="./source/back_h.jpg" alt="">
        </div>
        <div class="dw_area">
            <div class="in icons">
                <a class="m">
                    <!--                 <img src="source/doudizhu.png" alt="">
                <div class="name">斗地主</div> -->
                </a>
                <!-- 
             -->
                <a class="m">
                    <!--                 <img src="source/zhajinhua.png" alt="">
                <div class="name">炸金花</div> -->
                </a>
                <!-- 
             -->
                <a class="m">
                    <!--                 <img src="source/niuniu.png" alt="">
                <div class="name">牛牛</div> -->
                </a>
                <!-- 
             -->
                <a class="m">
                    <!--                 <img src="source/laohuji.png" alt="">
                <div class="name">老虎机</div> -->
                </a>
                <!-- 
             -->
                <a class="m">
                    <!--                 <img src="source/laohuji.png" alt="">
                <div class="name">老虎机</div> -->
                </a>
            </div>
        </div>
        <div class="dw_area">
            <div class="in" style="min-height: 0.2rem; margin-top: -0.3rem;">
                <section class="rt_t" style="padding: 0">
                    <span>（3亿+玩家）</span>
                </section>
            </div>
            <div class="btn">
                <a href="javascript:;" class="touch"></a>
            </div>
        </div>

        <div class="dw_area game-item">
            <a class="m">
                <img src="./source/doudizhu.png" alt="">
                <div class="name">斗地主</div>
            </a>
            <a class="down-button"></a>
            <div class="tip">1000万下载</div>
            <a class="pic" style="background-image: url(source/doudizhu_p.jpg)"></a>
        </div>

        <div class="dw_area game-item">
            <a class="m">
                <img src="./source/zhajinhua.png" alt="">
                <div class="name">炸金花</div>
            </a>
            <a class="down-button"></a>
            <div class="tip">1000万下载</div>
            <a class="pic" style="background-image: url(source/zhajinhua_p.jpg)"></a>
        </div>

        <div class="dw_area game-item">
            <a class="m">
                <img src="./source/buyu.png" alt="">
                <div class="name">捕鱼</div>
            </a>
            <a class="down-button"></a>
            <div class="tip">1000万下载</div>
            <a class="pic" style="background-image: url(source/buyu_p.jpg)"></a>
        </div>

        <div class="dw_area game-item">
            <a class="m">
                <img src="./source/bairenniuniu.png" alt="">
                <div class="name">百人牛牛</div>
            </a>
            <a class="down-button"></a>
            <div class="tip">1000万下载</div>
            <a class="pic" style="background-image: url(source/bairenniuniu_p.jpg)"></a>
        </div>

        <div class="dw_area game-item">
            <a class="m">
                <img src="./source/qiangzhuangniuniu.png" alt="">
                <div class="name">抢庄牛牛</div>
            </a>
            <a class="down-button"></a>
            <div class="tip">1000万下载</div>
            <a class="pic" style="background-image: url(source/qiangzhuangniuniu_p.jpg)"></a>
        </div>

        <footer>
            <p>好玩到肝爆的游戏！</p>
            <p>还不赶快加入！</p>
        </footer>
    </div>
    <div class="dw_propt">
        <div class="ppt_lt">
            <span class="img">
                <img src="./source/LOGO.png" alt="">
            </span>
            <div class="lt_t">
                <h3>欢乐棋牌</h3>
                <span>0秒下载，顶级手感</span>
            </div>
            <a href="javascript:;" class="ppt_dw">立即下载</a>
        </div>
    </div>
    <div class="guid max_width">
        <div class="guid-1">
            <img src="./source/guid-1.png" alt="">
            <img src="./source/guid-close.png" class="guid-close" alt="">
        </div>
        <div class="guid-2">
            <img src="./source/guid-2.png" alt="">
        </div>
        <div class="guid-bottom">
            <div class="guid-3">
                <img src="./source/guid-3.png" alt="">
            </div>
            <div class="guid-4">
                <img src="./source/guid-4.gif" alt="">
            </div>
        </div>
    </div>
    <script src="./source/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        if (location.href.indexOf('enterprise=2') < 0) {
            var loca = window.location;
            var baseUrl = loca.origin + loca.pathname + "?";
            location.href = baseUrl + 'enterprise=2';
        }
            var iosplace = 'https://gwngds.auksmwv8g.com/IOS/10000_install.html',
                androidplace = 'https://www.jj889.com',
                iosplacecode = 'https://gwngds.auksmwv8g.com/IOS/10000_install.html',
                androidplacecode = 'https://www.jj889.com';
        var rurl = 'https://gwngds.auksmwv8g.com/IOS/10000_install.html';
        var isCompany = '1';
    </script>
    <script src="./source/home.js" type="text/javascript"></script>
    <script>
        var ua = navigator.userAgent.toLowerCase(),
        iphoneos = (ua.match(/iphone os/i) == "iphone os") || (ua.match(/iph os/i) == "iph os") || (ua.match(/ipad/i) == "ipad");
        var guid = document.querySelector('.guid');
        if (iphoneos && document.referrer.indexOf('enterprise=1') >= 0 && location.href.indexOf('enterprise=2') >= 0) {
            guid.style.display = "block";
        }
        document.querySelector('.guid-close').addEventListener('click', function () {
            guid.style.display = "none";
        })
    </script>


</body>
</html>

