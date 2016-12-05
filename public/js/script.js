function plusMinus(likes, id)
{
    $.ajax('/sansara/' + id + '/' + likes);

    var sansara = $('#sansara' + id);
    var s = parseInt(sansara.text());
    sansara.text(s + (likes == 'minus' ? -1 : 1));
}

function func() {
    $('#modal').modal('show');
}

//setTimeout(func,5000);

//window.onbeforeunload = function() { return "You are closing all tabs!"; }

