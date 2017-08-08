(function ($) {
    'use strict';

    var patter = function (fn, span, duration) {
        var i, len, time = 0;

        while (time <= duration) {
            for (i = 0, len = fn.length; i < len; i++) {
                setTimeout((function (f) {
                    return function () {
                        window.requestAnimationFrame(f);
                    };
                }(fn[i])), time);
                time += span;
                if (time > duration) {
                    break;
                }
            }
        }
    };

    var s = $('#timer').val() | 0;

    if (s < 10) {
        $('.timer').addClass('pinch');
    }

    var timer = setInterval(function () {
        $('.timer').text(--s);
        if (s < 10) {
            $('.timer').addClass('pinch');
        }
        if (!s) {
            clearInterval(timer);
            timer = 0;
            $('form input[type="radio"]').trigger('change');
        }
    }, 1000);

    $(document).one('change', 'form input[type="radio"]', function () {
        if (timer) {
            clearInterval(timer);
            timer = 0;
        }
        $('#timer').val(s);

        var quiz = $('form input[type="radio"]:checked').val();
        var answer = $('#answer').val();

        var $options = $('label');
        var $correct = $('.option' + answer);

        $options.css({ 'border': '16px #fff solid', 'opacity': '0.25' });

        if (quiz === answer) {
            $correct.css({ 'border': '16px #afa solid', 'opacity': '1' });
        } else {
            $('.option' + quiz).css({ 'border': '16px #afa solid', 'opacity': '1' });
        }

        patter([function () {
            $('.judge').css('opacity', '');
        }, function () {
            $('.judge').css('opacity', '0');
        }], 250, 2000);

        if (quiz === answer) {
            $('.judge').addClass('correct').show();
        } else {
            $('.judge').addClass('incorrect').show();
        }
        setTimeout(function () {
            $('form').submit();
        }, 2000);
    });

}(jQuery));
