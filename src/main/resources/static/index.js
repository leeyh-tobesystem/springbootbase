var local_url;

$(document).ready(function(){
    local_url = window.location.href;

    $('ul.tabs li').click(function(){
        var tab_id = $(this).attr('data-tab');

        if(tab_id == 'tab-2') {
            location.href="./communicate.html";
        }else if(tab_id == 'tab-1') {
            location.href="./index.html";
        }else if(tab_id == 'tab-3') {
            location.href="./serial.html";
        }

        if(tab_id == 'tab-2') {
            location.href="/communicate";
        }else if(tab_id == 'tab-1') {
            location.href="/index";
        }else if(tab_id == 'tab-3') {
            location.href="/serial";
        }
    });
});

function save_action() {
    var ip = $("#ip").val();
    var subnet = $("#subnet").val();
    var gateway = $("#gateway").val();
    var port = $("#port").val();
    var device = $('input:radio[name="device"]:checked').val( ) ;
    var label = $("#label"+device).text();

    var param_array = [];

    param_array.push(ip);
    param_array.push(subnet);
    param_array.push(gateway);
    param_array.push(port);
    param_array.push(label);

    var param_str = param_array.join(',');

    var keyword = '/save?';

    console.log(param_str);

    $.ajax({
        type: "POST",
        url: local_url+keyword+param_str,
        success: function(data) {
            alert(data);
        },
        error: function(xhr, status, error) {
            alert(error);
        }
    });

}

function init_action() {

    var keyword = '/init';

    $.ajax({
        type: "POST",
        url: local_url+keyword,
        success: function(data) {
            alert(data);
        },
        error: function(xhr, status, error) {
            alert(error);
        }
    });
}

function reboot_action() {
    var keyword = "/reboot";

    $.ajax({
        type: "POST",
        url: local_url+keyword,
        success: function(data) {
            alert(data);
        },
        error: function(xhr, status, error) {
            alert(error);
        }
    });
}

function clear_communicate_action(){
    var keyword = "/clear";

    $.ajax({
        type: "POST",
        url: local_url+keyword,
        success: function(data) {
            alert(data);
        },
        error: function(xhr, status, error) {
            alert(error);
        }
    });
}

function clear_serial_action(){
    var keyword = "/clear";

    $.ajax({
        type: "POST",
        url: local_url+keyword,
        success: function(data) {
            alert(data);
        },
        error: function(xhr, status, error) {
            alert(error);
        }
    });
}