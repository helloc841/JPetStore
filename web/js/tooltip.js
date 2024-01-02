$(document).ready(function() {
    $('.icon').hover(
        function() {
            var category = $(this).data('category');
            $.ajax({
                type: 'GET',
                url: 'http://localhost:8080/JPetStore/web/tooltip?Category=' + category,
                success: function(data) {
                    var floatHTML = '';
                    for (var i = 0; i < data.length; i++) {
                        floatHTML += '<li>';
                        floatHTML += data[i].Productid + "     " + data[i].name;
                        floatHTML += '</li>';
                    }
                    $('.productMessage').html(floatHTML);
                    $('.tooltip-text').fadeIn();
                }
            });
        },
        function() {
            $('.tooltip-text').hide();
        }
    );

    $(document).on('mousemove', function(event) {
        $('.tooltip-text').css({
            top: event.pageY + 10,
            left: event.pageX + 10
        });
    });
});