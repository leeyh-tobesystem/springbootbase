<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>index</title>

    <link rel="shortcut icon" href="#">

    <link rel="stylesheet" href="/ui-component/boot-strap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/ui-component/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="/ui-component/jquery-ui/1.13.2/css/jquery-ui.min.css" />
    <link rel="stylesheet" href="/ui-component/jqGrid/4.7/css/ui.jqgrid.css" />
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace.min.css" />
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-patch.css" />


    <script src="/ui-component/jquery/3.6.1/js/jquery.min.js"></script>
<%-- import 시 모든 fa <i> 태그를 svg로 replace 해줌 오류를 만듬 --%>
<%-- <script src="/ui-component/font-awesome/6.2.1/js/all.min.js"></script> --%>
    <script src="/ui-component/jquery-ui/1.13.2/js/jquery-ui.min.js"></script>
    <script src="/ui-component/jqGrid/4.7/js/jquery.jqGrid.min.js"></script>
    <script src="/ui-component/jqGrid/4.7/js/i18n/grid.locale-kr.js"></script>
</head>
<style>
</style>
<script>
    $(document).ready(function() {
        window.FontAwesomeConfig = { autoReplaceSvg: false };


        $("#jqGrid").jqGrid({
            datatype: "local",
            mtype: 'POST',
            colNames: ['col1','col2','col3'],
            colModel: [
                {name: 'col1', index: 'col1', key: true}
                ,{name: 'col2', index: 'col2'}
                ,{name: 'col3', index: 'col3', sortable: true}
            ],
            caption: "글자테스트나눔바른고딕",
            autowidth: true,
            height: 500,
            pager: '#jqGrid_pager',
            rowNum: 100,
            rowList: [100, 200, 300, 400, 1000],
            shrinkToFit: false,
            viewrecords: true,
            multiselect: true,
            loadonce: false,
        });

        jqgridPagerIcons();
    });

    function jqgridPagerIcons() {
        var replace =
            {
                'ui-icon-seek-first' : 'ace-icon fa fa-angle-double-left bigger-140',
                'ui-icon-seek-prev' : 'ace-icon fa fa-angle-left bigger-140',
                'ui-icon-seek-next' : 'ace-icon fa fa-angle-right bigger-140',
                'ui-icon-seek-end' : 'ace-icon fa fa-angle-double-right bigger-140'
            };
        $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
            var icon = $(this);
            var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
            if($class in replace) icon.attr('class', 'ui-icon '+replace[$class]);
        })
    }

</script>

<body>
    <%--font-awesome test--%>
    <i class="fa fa-user"></i>
    <%--jqGrid test--%>
    <div style="width: 80%; padding: 20px;">
        <table id="jqGrid"></table>
        <div id="jqGrid_pager"></div>
    </div>
</body>
</html>
