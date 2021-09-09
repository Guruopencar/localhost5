<?php
$json = array();
if (isset($_POST['phone']) && $_POST['phone'] != "") {

    $name = $_POST['name'];
    $step1 = $_POST['step1'];
    $step2 = $_POST['step2'];
    $step3 = $_POST['step3'];
    $step4 = $_POST['step4'];
    $step5 = $_POST['step5'];

    $phone = urlencode($_POST['phone']);

    $token = "1538458121:AAHwp43OFXi9FMZmJziC2-eF9qA38ZPXW50";
    $chat_id = "-532422342";
    $arr = array(
        'Quiz с сайта жара.бел' => '',
        'Имя: ' => $name,
        'Телефон: ' => $phone,
        'Шаг 1: ' => $step1,
        'Шаг 2: ' => $step2,
        'Шаг 3: ' => $step3,
        'Шаг 4: ' => $step4,
        'Шаг 5: ' => $step5,
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
