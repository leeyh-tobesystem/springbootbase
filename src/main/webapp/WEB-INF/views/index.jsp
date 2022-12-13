<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>index</title>

    <link rel="shortcut icon" href="#">

    <link rel="stylesheet" href="/ui-component/boot-strap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/ui-component/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="/ui-component/jquery-ui/1.13.2/css/jquery-ui.min.css" />
    <link rel="stylesheet" href="/ui-component/jqGrid/4.7/plugins/css/ui.multiselect.css" />
    <link rel="stylesheet" href="/ui-component/jqGrid/4.7/css/ui.jqgrid.css" />

    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace.min.css" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-part2.min.css" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-skins.min.css" />
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-rtl.min.css" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-patch.css" />

    <link rel="stylesheet" href="/ui-component/select2/4.0.13/css/select2.min.css" />


    <script src="/ui-component/jquery/3.6.1/js/jquery.min.js"></script>
    <script src="/ui-component/jqGrid/4.7/js/i18n/grid.locale-kr.js"></script>
    <script src="/ui-component/jquery-ui/1.13.2/js/jquery-ui.min.js"></script>
    <script src="/ui-component/jqGrid/4.7/plugins/js/ui.multiselect.js"></script>
    <script src="/ui-component/jqGrid/4.7/js/jquery.jqGrid.min.js"></script>


    <!-- ace settings handler -->
    <script src="/ui-component/ace-theme/js/ace-extra.min.js"></script>

    <!--[if lte IE 8]>
    <script src="/ui-component/ace-theme/js/html5shiv.min.js"></script>
    <script src="/ui-component/ace-theme/js/respond.min.js"></script>
    <![endif]-->
    <script src="/ui-component/select2/4.0.13/js/i18n/ko.js"></script>
    <script src="/ui-component/select2/4.0.13/js/select2.min.js"></script>

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
                ,{name: 'col3', index: 'col3'}
            ],
            caption: "글자테스트나눔바른고딕",
            autowidth: true,
            height: 500,
            pager: '#jqGrid_pager',
            rowNum: 100,
            rowList: [100, 200, 300, 400, 1000],
            cmTemplate: { sortable: false },
            shrinkToFit: false,
            viewrecords: true,
            multiselect: true,
            loadonce: false,
        });
        $("#jqGrid").jqGrid('navGrid', '#jqGrid_pager', {
            add: false,
            edit: false,
            del: false,
            search: false,
            refresh: false
        });
        $("#jqGrid").jqGrid('navButtonAdd', '#jqGrid_pager', {
            caption: "열 조정",
            title: "열 조정",
            buttonicon: "fa fa-list-alt bigger-110 column_chooser_icon",
            onClickButton: function() {
                $.extend(true, $.ui.multiselect, {
                    defaults: {searchable :false},
                    locale: {addAll: '모두 보임', removeAll: '모두 숨김', itemsCount: '사용할 열의 수'},
                });

                $("#jqGrid").jqGrid('columnChooser', {
                    dialog_opts: {modal: true, resizable: false},
                });
            },
            position : 'last'
        });

        jqgridPagerIcons();

        $("#select2").select2();

        $(".ui-pg-selbox").select2({
            minimumResultsForSearch: Infinity,
            height: '20px',
        });
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
<%--    <i class="fa fa-user"></i>--%>
    <%--jqGrid test--%>
    <div style="width: 80%; padding: 20px;">
        <table id="jqGrid"></table>
        <div id="jqGrid_pager"></div>
    </div>

<%--    <div style="width: 80%; padding: 20px;">--%>
<%--        <select id="select2" style="width: 200px;">--%>
<%--            <option>1</option>--%>
<%--            <option>2</option>--%>
<%--            <option>3</option>--%>
<%--            <option>4</option>--%>
<%--        </select>--%>
<%--    </div>--%>

    <div style="width: 80%; padding: 20px;">

    </div>
</body>
</html>
