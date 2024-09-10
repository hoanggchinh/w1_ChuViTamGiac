$(document).ready(function () {
    function send_api() {
        var a = $('#txtA').val();
        var b = $('#txtB').val();
        var c = $('#txtC').val();

        
        if (isNaN(a) || a.trim() === "" || parseFloat(a) <= 0) {
            $('#txtP').val('Check A\'s value again');
            $('#txtA').focus();
            return;
        }
        if (isNaN(b) || b.trim() === "" || parseFloat(b) <= 0) {
            $('#txtP').val('Check B\'s value again');
            $('#txtB').focus();
            return;
        }
        if (isNaN(c) || c.trim() === "" || parseFloat(c) <= 0) {
            $('#txtP').val('Check C\'s value again');
            $('#txtC').focus();
            return;
        }

        
        a = parseFloat(a);
        b = parseFloat(b);
        c = parseFloat(c);

        
        if (a + b <= c || a + c <= b || b + c <= a) {
            $('#txtP').val('Can\'t make trigangle');
            return;
        }

        
        var perimeter = a + b + c;
        $('#txtP').val(perimeter);
    }

    $("#button").click(function () {
        send_api();
    });
});
