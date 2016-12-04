function plusMinus(likes, id)
{
    $.ajax('/sansara/' + id + '/' + likes);

    var sansara = $('#sansara' + id);
    var s = parseInt(sansara.text());
    sansara.text(s + (likes == 'minus' ? -1 : 1));
}
