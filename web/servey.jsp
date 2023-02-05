<%--
  Created by IntelliJ IDEA.
  User: zhencheng
  Date: 2021-10-21
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户调查</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/servey.css" />
</head>

<body class="default lang-zh-Hans allinone showqnumcode-X">
<div class="outerframe">
    <table class="innerframe">
        <tbody>
        <tr>
            <td>
                <form id="limesurvey" name="limesurvey" autocomplete="off" action="servey.do" method="post">
                    <table class="welcome-table">
                        <tbody>
                        <tr>
                            <td class="survey-description">
                                <noscript><span
                                        class='warningjs'>注意：您的浏览器已禁用JavaScript。您可能无法回答调查中所有的问题。请核实浏览器参数。</span></noscript>
                                <h1>登录页满意度调查</h1>
                                <p class="surveydescription"></p>
                            </td>
                        </tr>
                        <tr>
                            <td class="survey-welcome">
                                <span class="surveywelcome">
                                    <p>
                                        尊敬用户您好：</p>
                                    <p>
                                        为了给您提供更加完善的服务，我们希望收集并了解您在页面的使用情况。对您的配合和支持表示衷心的感谢！</p>
                                </span>
                                <span class="x-questions"></span>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <input type="text" id="runonce" value="0" style="display: none;">

                    <div id="group-0">
                        <input type="hidden" name="screen" id="screen" value="1536x864">
                        <table class="group">
                            <tbody>
                            <tr>
                                <td align="center">
                                    <br>
                                    <div class="left"><span class="group-name"></span></div>
                                    <br>

                                    <div id="question15470" class="list-radio mandatory">
                                        <table class="question-wrapper">
                                            <tbody>
                                            <tr>
                                                <td class="questiontext">
                                                    <span class="asterisk">*</span><span
                                                        class="qnumcode" style="display: none;">
                                                                    </span>您对登录页整体满意度如何？<br><span
                                                        class="questionhelp"></span>

                                                    <span class="questionhelp" id="vmsg_15470"></span>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="survey-question-help">

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="answer">

                                                    <ul class="answers-list radio-list">


                                                        <li class="answer-item radio-item">
                                                            <input class="radio" type="radio" value="非常满意"
                                                                   name="manyi" id="manyi1">
                                                            <label for="manyi1"
                                                                   class="answertext">非常满意</label>
                                                        </li>


                                                        <li class="answer-item radio-item">
                                                            <input class="radio" type="radio" value="满意"
                                                                   name="manyi" id="manyi2">
                                                            <label for="manyi2"
                                                                   class="answertext">满意</label>
                                                        </li>


                                                        <li class="answer-item radio-item">
                                                            <input class="radio" type="radio" value="一般"
                                                                   name="manyi" id="manyi3">
                                                            <label for="manyi3"
                                                                   class="answertext">一般</label>
                                                        </li>


                                                        <li class="answer-item radio-item">
                                                            <input class="radio" type="radio" value="不满意"
                                                                   name="manyi" id="manyi4">
                                                            <label for="manyi4"
                                                                   class="answertext">不满意</label>
                                                        </li>


                                                        <li class="answer-item radio-item">
                                                            <input class="radio" type="radio" value="非常不满意"
                                                                   name="manyi" id="manyi5">
                                                            <label for="manyi5"
                                                                   class="answertext">非常不满意</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                    <div id="question15477" class="text-long">
                                        <table class="question-wrapper">
                                            <tbody>
                                            <tr>
                                                <td class="questiontext">
                                                    <span class="asterisk"></span><span class="qnumcode"
                                                                                        style="display: none;">
                                                </span>您对登录页有什么想法，请大声说出来吧！（例如：哪里有问题，哪些功能做得不够好等）<br><span
                                                        class="questionhelp"></span>
                                                    <span class="questionhelp" id="vmsg_15477"></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="survey-question-help">

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="answer">
                                                    <p class="question answer-item text-item ">
                                                        <label for="answers"
                                                               class="hide label">答案</label>
                                                        <textarea class="textarea  empty" name="answers"
                                                                  id="answers" rows="5" cols="40">
                                                        </textarea>
                                                    </p>

                                                </td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="group-1">
                        <input type="hidden" name="screen" id="screen">
                        <table class="group">
                            <tbody>
                            <tr>
                                <td align="center">
                                    <br>
                                    <div class="left"><span class="group-name"></span></div>
                                    <br>
                                    <div id="question15478" class="multiple-short-txt">
                                        <table class="question-wrapper">
                                            <tbody>
                                            <tr>
                                                <td class="questiontext">
                                                    <span class="asterisk"></span><span class="qnumcode"
                                                                                        style="display: none;"> </span>
                                                    <p>
                                                        如果您对京东的使用体验有任何想法，欢迎微信搜索并关注“<span
                                                            style="color:#ff0000;">京东用户体验中心</span>”公众号，参与更多用户体验活动。
                                                    </p>
                                                    <br><span class="questionhelp"></span>

                                                    <span class="questionhelp" id="vmsg_15478"></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="survey-question-help">

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="answer">
                                                    <ul
                                                            class="subquestions-list questions-list text-list">
                                                        <li class="question-item answer-item text-item">

                                                            <label for="names"
                                                                   style="width: 48px;">姓名</label>
                                                            <span>

                                                                <input class="text  empty" type="text"
                                                                       size="20" name="names" value="" id="names">

                                                            </span>
                                                        </li>
                                                        <li class="question-item answer-item text-item">
                                                            <label for="phone"
                                                                   style="width: 48px;">手机号</label>
                                                            <span>
                                                                <input class="text  empty" type="text"
                                                                       size="20" name="phone" value="" id="phone">
                                                            </span>
                                                        </li>
                                                    </ul>

                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <table class="navigator-table">
                        <tbody>
                        <tr>

                            <td class="submit-buttons">
                                <input type="hidden" name="move" value="movenext" id="movenext">
                                <button
                                        class="submit ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
                                        type="button" accesskey="l" value="提交 " name="move2" id="movesubmitbtn1"
                                        role="button" aria-disabled="false">
                                                <span class="ui-button-text">
                                                    提交
                                                </span>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </form>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
<script src="js/servey.js"></script>
</html>