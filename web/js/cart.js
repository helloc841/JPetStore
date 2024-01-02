$(function (){
    $('.Quantity').on('keyup',function (){
        var ControlId = $(this).attr('id');
        var username = $(this).data('username');
        var price = $(this).data('price');
        var itemId = $(this).data('itemid');
        var Quantity = $(this).val();
        console.log(isNaN(Quantity));
        if (isNaN(Quantity))
            alert('Please input the right number!')
        else if (Quantity.indexOf('.') != -1)
            alert('Please input the right number!')
        else if (Quantity != ''){
            $.ajax({
                type    : 'GET',
                url     : 'http://localhost:8080/JPetStore/web/ajaxcart?username='+username+'&itemId='+itemId+'&quantity='+Quantity,
                success : function (data){
                    price = price.substring(1);
                    console.log(price);
                    totalContent = Quantity * price;
                    var number = ControlId.substring(ControlId.length - 1);
                    var totalId = 'total_'+number;
                    var ControlTotal = document.getElementById(totalId);
                    ControlTotal.textContent = '$'+totalContent;
                }
            })
        }
    })
})