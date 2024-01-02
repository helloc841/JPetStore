$(function (){
   $('#keyword').on('keyup',function (){
     var keyword = $(this).val();
     if (keyword != '' && keyword != null){
         $.ajax({
             type     :'GET',
             url      : 'http://localhost:8080/JPetStore/web/ajaxsearch?keyword='+keyword,
             success  : function (data){
                 console.log(data);
                 var productListHTML = '';
                 var length = (data.length < 5)?data.length:5;
                 for(var i = 0; i < length;i++){
                     productListHTML += '<li class=\"productAutoItem\"data-image="';
                     productListHTML += data[i].image;
                     productListHTML += '" data-itemid="'
                     productListHTML += data[i].itemid;
                     productListHTML += '">';
                     productListHTML += data[i].itemname;
                     productListHTML += '</li>';
                 }
                 $('#productAutoList').html(productListHTML);
                 $('#productAutoComplete').show();
             },
             error    : function (errorMsg){
                 console.log(errorMsg);
             }
         })
     }
     else{
         $('#productAutoComplete').hide();
     }
   });
   $(document).on('click','.productAutoItem',function (){
       var image = $(this).data('image');
       var Category = getCategory(image);
       var itemid = $(this).data('itemid');
       var username = $('#keyword').data('username');
       $('#productAutoComplete').hide();
       $('keyword').val('');
       if (username != undefined)
       window.location.href = 'http://localhost:8080/JPetStore/web/itemdetail?itemid='+itemid+'&Category='+Category+"&username="+username;
       else
           window.location.href ='http://localhost:8080/JPetStore/web/itemdetail?itemid='+itemid+'&Category='+Category;
   })
    function getCategory (image){
        var substr_3 =  image.slice(0,3);
        var substr_4 = image.slice(0,4);
        if (substr_3 === 'cat') return 'CAT';
        else if (substr_3 === 'dog') return 'DOG';
        else if (substr_4 === 'bird') return "BIRD";
        else return "FISH";
    }
    $('#productAutoComplete').on('mouseleave',function (){
        $(this).hide();
        $('keyword').val('');
    })
});