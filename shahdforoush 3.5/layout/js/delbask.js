$(document).ready(function () {
    var 
    $addToBasket = $("a.add2basket"),
    $basketContain = $("div.basket-contain"),
    $deldrug = $(".deldrug"),
    productID = 0;

    $addToBasket.click(function () {
        var 
      $this = $(this),
      productID = $this.data('product-id');
        console.log(productID);
        addCookie('ShoppingBasket', productID);
        console.log(getCookie('ShoppingBasket'));
        $basketContain.load('addtobasket.aspx?q=' + productID);
        return false;
    });

    $deldrug.click(function () {
        var 
      $this = $(this),
      productID = $this.data('product-id'),
      ok;
        ok = confirm("آیا از لیست خرید حذف شود؟");
        if (ok) {
            deleteCookie('ShoppingBasket', productID);
            location.reload(true)
        }
        return false;
    });

});

function addCookie(name, value) {

    //To retrieve the values of cookie named "ShoppingCart"
    var currentCookie = getCookie(name);
    if (currentCookie == null) {
        //it means this is the first item in the basket
        document.cookie = name + '=' + escape(value);
    }
    else {
        //it means the basket already has another products
        document.cookie = name + '=' + currentCookie + "," + escape(value);
    }
}

function deleteCookie(name, value) {

    //to set the cookie expiry time
    var expires = expires * 1000 * 3600 * 3;

    //because the system will check the space as %20
    // if (document.cookie.indexOf("%20") != -1)
    // {
    //     prod_name = prod_name.replace(" ", "%20");
    // }

    //In case of the removed item in the mid of the cookie
    if (document.cookie.indexOf("," + value) != -1) {
        document.cookie = document.cookie.replace("," + value, "") +
               ((expires) ? ';expires=' + new Date(today.getTime() + expires).toGMTString() : '');
    }

    //In case of the removed item is the first item in cookie
    else if (document.cookie.indexOf(value + ",") != -1) {
        document.cookie = document.cookie.replace(value + ",", "") +
               ((expires) ? ';expires=' + new Date(today.getTime() + expires).toGMTString() : '');
    }

    //In case of the removed item is the only item in cookie 
    else if (document.cookie.indexOf(value) != -1) {
        document.cookie = document.cookie.replace(value, "") +
               ((expires) ? ';expires=' + new Date(today.getTime() + expires).toGMTString() : '');
    }

    //to force the post back to reload the basket items after removing product 
    //__doPostBack('Basket1_UpdatePanel1', '');
}

function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}

function getCookie(name) {
    var sPos = document.cookie.indexOf(name + "=");
    var len = sPos + name.length + 1;
    if ((!sPos) && (name != document.cookie.substring(0, name.length))) {
        return null;
    }
    if (sPos == -1) {
        return null;
    }

    var ePos = document.cookie.indexOf('=', len);
    if (ePos == -1) ePos = document.cookie.length;
    return unescape(document.cookie.substring(len, ePos));
}

function deleteAllCookies() {
    var cookies = document.cookie.split(";");

    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i];
        var eqPos = cookie.indexOf("=");
        var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
}