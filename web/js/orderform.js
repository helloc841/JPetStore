$(function (){
    $('#isship').on('change',function (){
        var display = $('.ship').css('display');
        console.log(display)
        if (display === 'none')
            $('.ship').show();
        else
            $('.ship').hide();
    })
})