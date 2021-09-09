<?php
$json = array();
if (isset($_POST['phone']) && $_POST['phone'] != "") {
    if (isset($_POST['name'])) {
        $name = $_POST['name'];
    } else {
        $name = '---';
    }
    if (isset($_POST['url'])) {
        $url = $_POST['url'];
    } else {
        $url = '---';
    }
    if (isset($_POST['param'])) {
        $param = $_POST['param'];
    } else {
        $param = '---';
    }
    if(isset($_POST['utm'])){
        $utm = $_POST['utm'];
    } else {
        $utm = '---';
    }

    $phone = urlencode($_POST['phone']);

    $token = "1367552564:AAHINBo26rD3CQEpiz3SnFBkA1-cLKJfnLs";
    $chat_id = "-472417133";
    $arr = array(
        'Заявка с сайта' => '',
        'Имя клиента: ' => $name,
        'Телефон: ' => $phone,
        'Услуга: ' => $param,
        'UTM: ' => $utm,
        'Страница заявки: ' => $url,

    );
    foreach ($arr as $key => $value) {
        $txt .= "<b>" . $key . "</b> " . $value . "%0A";
    };
    $sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$txt}", "r");
    if ($sendToTelegram) {
        echo json_encode(array('result' => 'success'));
    } else {
        echo json_encode(array('result' => 'error', 'text_error' => $json['error']['field']['name']));
    }
}
