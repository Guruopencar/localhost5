// AJAX отправка формы Остались вопросы в модальном окне
$(function() {
    $('#mail_send').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: 'post',
            url: '/wp-content/themes/weba/js/mail_send_telegram.php',
            dataType: 'json',
            data: $('#mail_send').serialize(),
            beforeSend: function(json) { //событие кнопки до отправки письма
                $('#send-btn').attr('disabled', 'disabled');
            },
            success: function(json) { //при удачной проверке
                if (json.result == 'success') {
                    //alert('Отпраленно!');
                    $('#mail_send').hide(100);
                    $('#modal-popup .modal-popup-content .mail_send-sacsses').text('Ваша заявка принята!');
                    $('#modal-popup .modal-popup-content .mail_send-sacsses-p').text('Мы перезвоним Вам в ближайшее время!');
                } else {
                    //alert('Ошибка отправки!');
                    $('#modal-popup .modal-popup-content .mail_send-sacsses').text('Ваша заявка НЕ отправленна! Попробуйте повторить.');
                }
            },
            complete: function(json) {
                $('#send-btn').prop('disabled', false);
            }
        });
        return false;
    });
});