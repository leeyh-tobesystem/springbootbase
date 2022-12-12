<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="shortcut icon" href="#">
    <link rel="stylesheet" href="/index.css" />

    <script src="/jquery-2.1.4.min.js"></script>
    <script src="/index.js"></script>
    <%--    <link rel="stylesheet" href="./index.css">--%>
    <%--    <script src="./jquery-2.1.4.min.js"></script>--%>
    <%--    <script src="./index.js"></script>--%>

    <title>Title</title>
</head>
<body>
<div class="container">

    <ul class="tabs">
        <li class="tab-link" data-tab="tab-1">설정페이지</li>
        <li class="tab-link current" data-tab="tab-2">통신체크</li>
        <li class="tab-link" data-tab="tab-3">시리얼체크</li>
    </ul>

    <div id="tab-1" class="tab-content">
        <div class="sized_box" style="height: 10%"></div>
        <div>
            <div class="input-header">IP</div>
            <input id="ip" type="text" class="input-content" value="192.168.3.15" />
        </div>
        <div>
            <div class="input-header">서브넷</div>
            <input id="subnet" type="text" class="input-content" value="255.255.255.0"/>
        </div>
        <div>
            <div class="input-header">게이트웨이</div>
            <input id="gateway" type="text" class="input-content" value="192.168.3.7"/>
        </div>
        <div class="sized_box" style="height: 10%"></div>

        <div>
            <div class = "input-header">통신 포트</div>
            <input id="port" type="text" class="input-content" value="9000" />
        </div>
        <div class="sized_box" style="height: 5%"></div>
        <div>
            <div class = "input-header">통신 장비</div>
            <label class ="radio-label" id="label1"><input type="radio" id="opt1" name="device" class="radio-btn-big" value = "1" />1번항목</label>
        </div>
        <div style="margin-top: 10px;margin-bottom: 10px;">
            <div class = "input-header" style="visibility: hidden">placeholder</div>
            <label class ="radio-label" id="label2"><input type="radio" id="opt2" name="device" class="radio-btn-big" value = "2" />2번항목</label>
        </div>

        <div>
            <div class = "input-header" style="visibility: hidden">placeholder</div>
            <label class ="radio-label" id="label3"><input type="radio" id="opt3" name="device" class="radio-btn-big" value = "3" />3번항목</label>
        </div>
        <div class="sized_box" style="height: 10%"></div>

        <div id="buttons" style="text-align: center">
            <button class="button-common" style="margin-right: 25px;" onclick="save_action()">저장</button>
            <button class="button-common" style="margin-right: 25px;" onclick="init_action()">초기화</button>
            <button class="button-common" onclick="reboot_action()">재시작</button>
        </div>
    </div>
    <div id="tab-2" class="tab-content current">
        <div class="sized_box" style="height: 10%"></div>
        <textarea id="communicate_log" style="width: 100%;resize:none;height:60%">통신 체크 contents</textarea>
        <div class="sized_box" style="height: 10%"></div>
        <div style="text-align: center">
            <button class="button-clear" style="margin-right: 25px;" onclick="clear_communicate_action()">지우기</button>
        </div>
    </div>
    <div id="tab-3" class="tab-content">
        <div class="sized_box" style="height: 10%"></div>
        <textarea id="serial_log" style="width: 100%;resize:none;height:60%">시리얼 체크 contents</textarea>
        <div class="sized_box" style="height: 10%"></div>
        <div style="text-align: center">
            <button class="button-clear" style="margin-right: 25px;" onclick="clear_serial_action()">지우기</button>
        </div>
    </div>

</div>
</body>
</html>
