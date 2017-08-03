(function ($) {
    'use strict';

    $(document).on('click', 'form input[type="button"]', function () {
        var quiz = $('form input[type="radio"]:checked').val();
        var answer = $('#answer').val();

        if (quiz === answer) {
            console.log('正解');
        } else {
            console.log('不正解');
        }
        $('form').submit();
    });

}(jQuery));
