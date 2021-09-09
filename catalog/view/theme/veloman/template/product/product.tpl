<?php echo $header; ?>
<section class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?><?php if (!next($breadcrumbs)) { ?>
                <span><?php echo $breadcrumb['text']; ?></span><?php } else { ?>
                <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?><?php } ?>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <section id="product">
        <div class="row">
            <div class="col-lg-5">
                <h1 class="mobile-only"><?php echo $heading_title; ?></h1>
                <div class="product-item-img zoom-gallery">
                    <div class="product-label">
                        <span class="label-new">Новинка</span><?php if ($special) { ?><?php
                        $str_price = substr($price,0,-7);
                        $str_special = substr($special,0,-7);
                        $price_procent_okr = ((($str_price * 100) / $str_special) - 100) * (-1);
                        $price_procent = round($price_procent_okr);
                        ?><span class="label-stock">Акция <?php echo $price_procent;?>%</span><?php } ?>
                        <span class="label-sale">Лучший выбор</span><?php if($cat_name['0']['category_id'] == 59){ ?>
                        <span class="label-check"><img src="/catalog/view/theme/veloman/image/checked.png">Велосипед собран</span><?php } ?>
                    </div>
                    <a href="<?php echo $thumb; ?>">
                        <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>">
                    </a>
                </div>
                <?php if($cat_name['0']['category_id'] == 59){ ?>
                <a href="#modal-popup-video" class="popup-modal product-item-video">
                    <img src="/catalog/view/theme/veloman/image/play-button.png">Видеообзор
                </a>
                <?php } ?>
                <div id="modal-popup-video" class="mfp-hide popup-modal-style">
                    <div class="modal-popup-content">
                        <iframe width="100%" height="380" src="https://www.youtube.com/embed/2ouVZGMZqqs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <?php if ($images) { ?>
                <div id="owl-product-slider" class="product-item-img-slider zoom-gallery owl-carousel owl-theme">
                    <?php foreach ($images as $image) { ?>
                    <a href="<?php echo $image['popup']; ?>">
                        <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                    </a>
                    <?php } ?>
                </div>
                <script>
                    $(document).ready(function () {
                        var owl = $('#owl-product-slider');
                        owl.owlCarousel({
                            items: 3,
                            dots: true,
                            loop: false,
                            nav: false,
                            margin: 15,
                            autoplay: true,
                            autoplayTimeout: 2000,
                            autoplayHoverPause: true,
                            responsive: {
                                0: {
                                    items: 2
                                },
                                600: {
                                    items: 2
                                },
                                1000: {
                                    items: 3
                                }
                            },
                        });
                    })
                </script>
                <?php } ?>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('.zoom-gallery').magnificPopup({
                            delegate: 'a',
                            type: 'image',
                            closeOnContentClick: false,
                            closeBtnInside: false,
                            mainClass: 'mfp-with-zoom mfp-img-mobile',
                            image: {
                                verticalFit: true,
                            },
                            gallery: {
                                enabled: true
                            },
                            zoom: {
                                enabled: true,
                                duration: 300, // don't foget to change the duration also in CSS
                                opener: function (element) {
                                    return element.find('img');
                                }
                            }

                        });
                    });
                </script>
            </div>
            <div class="col-lg-6 offset-lg-1">
                <h1 class="desctop-only"><?php echo $heading_title; ?></h1><?php if ($review_status) { ?>
                <div class="product-btn">
                    <button type="button" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product_id; ?>');" class="product-btn-heart">
                        <img src="/catalog/view/theme/veloman/image/icon-like.png">Добавить в избранное
                    </button>
                    <button type="button" data-toggle="tooltip" onclick="compare.add('<?php echo $product_id; ?>');" class="product-btn-compare">
                        <img src="/catalog/view/theme/veloman/image/icon-compare.png">Добавить в сравнение
                    </button>
                    <?php if($cat_name['0']['category_id'] == 59){ ?>
                    <a href="#modal-popup-size-table" class="popup-modal product-btn-compare">
                        <img src="/catalog/view/theme/veloman/image/info-button.png">Как правильно выбрать под свой рост?
                    </a>
                    <?php } ?>
                    <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?><?php if ($rating < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span><?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span><?php } ?><?php } ?>
                    </div>
                    <?php } ?>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <h4>Краткое описание</h4>
                        <h5>Производитель: <?php echo $manufacturer; ?></h5>
                        <h5>Артикул: <?php echo $sku; ?></h5><?php if(10 <= $quantitys){ ?>
                        <h5 class="desctop-only">Наличиие:
                            <div class="product-item-count product-item-count-many">
                                <span></span><span></span><span></span><span></span></div>
                            много
                        </h5>
                        <?php } elseif ($quantitys < 10){ ?>
                        <h5 class="desctop-only">Наличиие:
                            <div class="product-item-count product-item-count-medium">
                                <span></span><span></span><span></span><span></span></div>
                            заканчиваться
                        </h5>
                        <?php } elseif($quantitys == 0){ ?>
                        <h5 class="desctop-only">Наличиие:
                            <div class="product-item-count product-item-count-low">
                                <span></span><span></span><span></span><span></span></div>
                            нет в наличии
                        </h5>
                        <?php } ?>
                        <div class="product-item-price">
                            <h4 class="desctop-only">Цена:</h4><?php if ($special) { ?>
                            <span class="price-old"><?php echo $price; ?></span>
                            <span class="price-new"><?php echo $special; ?></span>
                            <span class="price-offer">Ваша скидка <?php
                              $str_price = substr($price,0,-7);
                              $str_special = substr($special,0,-7);
                              $offer = ($str_special - $str_price)*(-1)." BYN";
                             echo $offer; ?></span><?php } else { ?>
                            <span><?php echo $price; ?></span><?php } ?><?php if(10 <= $quantitys){ ?>
                            <h5 class="mobile-only">Наличиие:
                                <div class="product-item-count product-item-count-many">
                                    <span></span><span></span><span></span><span></span></div>
                                много
                            </h5>
                            <?php } elseif ($quantitys < 10){ ?>
                            <h5 class="mobile-only">Наличиие:
                                <div class="product-item-count product-item-count-medium">
                                    <span></span><span></span><span></span><span></span></div>
                                заканчиваться
                            </h5>
                            <?php } elseif($quantitys == 0){ ?>
                            <h5 class="mobile-only">Наличиие:
                                <div class="product-item-count product-item-count-low">
                                    <span></span><span></span><span></span><span></span></div>
                                нет в наличии
                            </h5>
                            <?php } ?>
                            <a href="#modal-popup-bay" class="popup-modal btn btn-white btn-bay-sale mobile-only">
                                <img src="/catalog/view/theme/veloman/image/price-tag.png">Нашли дешевле?
                            </a>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <?php if ($products) { ?>
                                <h4></h4><?php $related_product_options = array(); ?><?php foreach ($products as $product) { ?><?php foreach ($product['options'] as $option) { ?><?php foreach($option['product_option_value'] as $option_value){ ?><?php $related_product_options[] = array(
                                           "name" => $option_value["name"], "url" => $product['href'], "img" => $option_value["image"], "photo" => $product['thumb'], ); ?><?php } ?><?php } ?><?php } ?><?php $temp = array_unique(array_column($related_product_options, 'name'));
                                $unique_arr = array_intersect_key($related_product_options, $temp);
                                //print_r($unique_arr);
                                ?>
                                <div class="product-item-related">
                                    <h4>Цвет</h4><?php foreach($unique_arr as $value_rel){ ?><?php if($value_rel['img'] !== ""){ ?>
                                    <a href="<?php echo $value_rel['url']; ?>">
                                        <img src="image/<?php echo $value_rel['img']; ?>" alt="<?php echo $value_rel[" name"]; ?>">
                                    </a>
                                    <?php } ?><?php } ?>
                                    <h4>Рост</h4><?php foreach($unique_arr as $value_rel){ ?><?php if($value_rel['img'] == ""){ ?>
                                    <a href="<?php echo $value_rel['url']; ?>" class="related-href"><?php echo $value_rel["name"]; ?></a>
                                    <?php } ?><?php } ?>
                                </div>
                                <?php } ?>
                                <!--<div class="product-item-select">
                                    <h4>Опции:</h4>
                                    <div class="row">

                                        <div class="col-lg-4">
                                            <h5>Выберите цвет</h5>
                                            <select name="1" id="1">
                                                <option value="1">Параметр 1</option>
                                                <option value="2">Параметр 2</option>
                                            </select>
                                         </div>

                                        <div class="col-lg-4">
                                        <h5>Выберите диаметр</h5>
                                            <select name="2" id="2">
                                                <option value="1">Параметр 1</option>
                                                <option value="2">Параметр 2</option>
                                            </select>
                                            </div>
                                        <div class="col-lg-4"><h5>Выберите рост</h5>
                                            <select name="3" id="3">
                                                <option value="1">Параметр 1</option>
                                                <option value="2">Параметр 2</option>
                                            </select>
                                            </div>
                                    </div>
                                </div>-->
                            </div>
                        </div>
                    </div>
                    <?php if($cat_name['0']['category_id'] == 59){ ?>
                    <div class="col-lg-5">
                        <div class="product-item-rassrochka">
                            <h4>Купи в рассрочку</h4>
                            <h6>Выберите на сколько месяцев вам удобно?</h6>
                            <form action="osform-calc-telegram.php" method="post" id="form-calc" class="calculator">
                                <div class="row">
                                    <div class="col-lg-12" id="mutationObserve">
                                        <div class="range-block">
                                            <?php
                                                if ($special) {
                                                    $end_price = substr($special,0,-6);
                                                } else {
                                                    $end_price = substr($price,0,-6);
                                                }
                                            ?>
                                            <input type="text" id="bill" class="calculator__bill" value="<?php echo $end_price; ?>" hidden="hidden">
                                            <input name="fleve1" id="flying1" class="range calculator__tip" type="range" min="3" max="8" value="1" step="1" onsubmit="return false" oninput="leve1.value = fleve1.valueAsNumber; leve2.value = fleve1.valueAsNumber">
                                            <p>Хочу на
                                                <output for="flying1" name="leve1">3</output>
                                                мес
                                            </p>
                                            <span>3 мес</span><span>8 мес</span>
                                        </div>
                                        <h3 class="calculator__result align-center" id="total">- BYN/мес</h3>
                                        <a href="#modal-popup" class="popup-modal btn-rassrochka">Оформить рассрочку</a>
                                        <a href="/rassrochka/">
                                            <img src="/catalog/view/theme/veloman/image/icon-info.png">Подробнее об рассрочке
                                        </a>
                                    </div>
                                </div>
                            </form>
                            <script>
                                $(document).ready(function () {

                                    var amount, percent, result;
                                    var calculator = $('.calculator');
                                    var calculatorBill = calculator.find('.calculator__bill');
                                    var calculatorTip = calculator.find('.calculator__tip');
                                    var calculatorResult = calculator.find('.calculator__result');
                                    var tipAmount = calculator.find('.tip-amount');
                                    $(window).on('DOMContentLoaded', function () {
                                        tipAmount.text(calculatorTip.val() + '%');
                                        amount = calculatorBill.val() * 1;
                                        percent = calculatorTip.val() * 1;
                                        result = ((amount * 0.06) + amount) / percent;
                                        calculatorResult.text(result.toFixed(0) + ' BYN/мес');
                                    });
                                    calculatorTip.on('change', function () {
                                        if (calculatorBill.val() === '' || isNaN(calculatorBill.val())) {
                                            alert('Выберите количество месяцев')
                                        } else {
                                            amount = calculatorBill.val() * 1;
                                        }
                                        tipAmount.text(calculatorTip.val() + '%');
                                        percent = calculatorTip.val() * 1;
                                        result = ((amount * 0.06) + amount) / percent;
                                        calculatorResult.text(result.toFixed(0) + ' BYN/мес');
                                    });
                                });
                            </script>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product-item-btn">
                            <input type="hidden" name="quantity" value="1" size="1" id="input-quantity" class="form-control"/>
                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/>
                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-yellow btn-cart">
                                <img src="/catalog/view/theme/veloman/image/icon-cart.png">Добавить в корзину
                            </button>
                            <a href="#modal-popup-bay" class="popup-modal btn btn-white btn-bay-sale desctop-only">
                                <img src="/catalog/view/theme/veloman/image/price-tag.png">Нашли дешевле?
                            </a>
                            <a href="#modal-popup-bay" class="popup-modal btn btn-rassrochka mobile-only">
                                <img src="/catalog/view/theme/veloman/image/price-tag.png">Купить в рассрочку!
                            </a>
                            <a href="#modal-popup-bay" class="popup-modal btn btn-red btn-bay-one">
                                <img src="/catalog/view/theme/veloman/image/paper-one-red.png">Купить в один клик
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="product-item-dis">
                            <div class="product-tab">
                                <div class="product-tab-item tab-active">
                                    <a href="#" class="tab-button" data-tab="1">Описание</a>
                                </div>
                                <div class="product-tab-item">
                                    <a href="#" class="tab-button" data-tab="2">Характеристики</a>
                                </div>
                                <div class="product-tab-item">
                                    <a href="#" class="tab-button" data-tab="3">Отзывы</a>
                                </div>
                                <div class="product-tab-item">
                                    <a href="#" class="tab-button" data-tab="4">Видеообзор</a>
                                </div>
                            </div>
                            <div class="product-tab-text tab-active" data-tab-content="1">
                                <?php echo $description; ?>
                            </div>
                            <div class="product-tab-text" data-tab-content="2">
                                <table>
                                    <thead>
                                    <tr>
                                        <td colspan="2"><strong>Характеристики</strong>
                                        </td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach ($options as $option) { ?>
                                    <tr>
                                        <td><?php echo $option['name']; ?></td>
                                        <td><?php foreach($option['product_option_value'] as $option_value){ echo $option_value["name"].' '; } ?></td>
                                    </tr>
                                    <?php } ?><?php if ($attribute_groups) { ?><?php foreach ($attribute_groups as $attribute_group) { ?>
                                    <thead>
                                    <tr>
                                        <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong>
                                        </td>
                                    </tr>
                                    </thead>
                                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                    <tr>
                                        <td><?php echo $attribute['name']; ?></td>
                                        <td><?php echo $attribute['text']; ?></td>
                                    </tr>
                                    <?php } ?><?php } ?><?php } ?></tbody></tbody>
                                </table>
                            </div>
                            <div class="product-tab-text" data-tab-content="3">
                                <?php if ($review_status) { ?>
                                <div class="tab-pane" id="tab-review">
                                    <form class="form-horizontal" id="form-review">
                                        <div id="review"></div>
                                        <h3><?php echo $text_write; ?></h3><?php if ($review_guest) { ?>
                                        <div class="form-group required">
                                            <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                            <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control"/>
                                        </div>
                                        <div class="form-group required">
                                            <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                            <textarea name="text" rows="2" id="input-review" class="form-control"></textarea>
                                        </div>
                                        <div class="form-group required">
                                            <label class="control-label"><?php echo $entry_rating; ?></label><?php echo $entry_bad; ?>
                                            <input type="radio" name="rating" value="1"/> &nbsp;
                                            <input type="radio" name="rating" value="2"/> &nbsp;
                                            <input type="radio" name="rating" value="3"/> &nbsp;
                                            <input type="radio" name="rating" value="4"/> &nbsp;
                                            <input type="radio" name="rating" value="5"/> &nbsp; <?php echo $entry_good; ?>
                                        </div>
                                        <?php echo $captcha; ?>
                                        <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-white"><?php echo $button_continue; ?></button>
                                        <?php } else { ?><?php echo $text_login; ?><?php } ?>
                                    </form>
                                </div>
                                <?php } ?>
                            </div>
                            <div class="product-tab-text" data-tab-content="4">
                                <iframe width="100%" height="400" src="https://www.youtube.com/embed/2ouVZGMZqqs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <script type="text/javascript">
                                var tabNavs = document.querySelectorAll(".tab-button"); //Кнопка переключения
                                var tabPanesItem = document.querySelectorAll(".product-tab-item"); //Блок кнопки переключения
                                var tabPanes = document.querySelectorAll(".product-tab-text"); //Блок якорь
                                for (var i = 0; i < tabNavs.length; i++) {
                                    tabNavs[i].addEventListener("click", function (e) {
                                        e.preventDefault();
                                        var activeTabAttr = e.target.getAttribute("data-tab");
                                        for (var j = 0; j < tabNavs.length; j++) {
                                            var contentAttr = tabPanes[j].getAttribute("data-tab-content");
                                            if (activeTabAttr === contentAttr) {
                                                tabNavs[j].classList.add("tab-active");
                                                tabPanes[j].classList.add("tab-active");
                                                tabPanesItem[j].classList.add("tab-active");
                                            } else {
                                                tabNavs[j].classList.remove("tab-active");
                                                tabPanes[j].classList.remove("tab-active");
                                                tabPanesItem[j].classList.remove("tab-active");
                                            }
                                        }
                                        ;
                                    });
                                }
                            </script>
                        </div>
                        <h5>
                            <?php if ($tags) { ?>
                            <span>Теги:</span><?php echo $text_tags; ?><?php for ($i = 0; $i < count($tags); $i++) { ?><?php if ($i < (count($tags) - 1)) { ?>
                            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                            ,<?php } else { ?>
                            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                            <?php } ?><?php } ?><?php } ?>
                        </h5>
                    </div>
                    <div class="col-lg-5">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product-item-delivery">
                                    <img src="/catalog/view/theme/veloman/image/delivery-truck.png">
                                    <p>Доставка по Минску до подъезда –
                                        <span>Бесплатно</span>, Доставка в пункт самовывоза (адрес. Ложинская 23) – бесплатно. Доставка собранного велосипеда в любую точку РБ – 18 руб.
                                        <a href="/dostavka/">Дополнительная информация по доставке</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="product-item-consultant" style="background-image: url('/catalog/view/theme/veloman/image/')">
                            <img src="/catalog/view/theme/veloman/image/man.png">
                            <h2>Остались вопросы?</h2>
                            <h3>Поможем подобрать для вас велосипед</h3>
                            <span>Кирилл</span>
                            <a href="#modal-popup" class="popup-modal btn btn-yellow">Помощь в подборе</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<section id="products">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="block-head">
                    <h2>С этим товаром <br>покупают</h2>
                </div>
            </div>
            <div class="col-lg-9">
                <?php echo $content_bottom; ?>
            </div>
        </div>
    </div>
</section>
<section id="sale">
    <div class="texture-07"><img src="/catalog/view/theme/veloman/image/texture-07.png"></div>
    <div class="container">
        <div class="row">
            <div class="texture-discount"><img src="/catalog/view/theme/veloman/image/discount.png"></div>
            <div class="col-lg-3">
                <div class="block-head">
                    <h2>Получи<br>скидку!</h2>
                    <p>Получи 40 рублей бонус на покупку любых аксесуаров и запчастей в нашем магазине при покупке велосипеда.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <h3>Успей до конца действия акции!</h3>
                <div class="price-clock">
                    <div class="time"></div>
                </div>
                <form class="popup-form" method="post" id="mail_send_sale" enctype="multipart/form-data">
                    <input type="hidden" name="param" value="Получить скидку">
                    <input type="tel" name="phone" placeholder="Ваш телефон" required>
                    <button type="submit" class="btn btn-yellow" id="send-btn_sale">Получить скидку!</button>
                </form>
                <div class="mail_send-sacsses"></div>
                <div class="mail_send-sacsses-p"></div>
            </div>
        </div>
    </div>
</section>
<section id="why">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="block-head">
                    <h2>Почему<br>мы?!</h2>
                    <p>Более 250 отзывов на картах google, yandex, onliner рейтинг 4,5.</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="why-item">
                    <img src="/catalog/view/theme/veloman/image/icon-01.png">
                    <h4><span>TEST</span></h4>
                    <p>Тест-драйв любого велосипеда перед покупкой.</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="why-item">
                    <img src="/catalog/view/theme/veloman/image/icon-02.png">
                    <h4>+<span>250</span></h4>
                    <p>Более 250 моделей всегда в наличии в офлайн магазине.</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="why-item">
                    <img src="/catalog/view/theme/veloman/image/icon-03.png">
                    <h4><span>HOT</span></h4>
                    <p>Своя мастерских в Минске, профессиональные инструменты и оборудование. Запчасти в наличии.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript"><!--
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function () {
                $('#recurring-description').html('');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#button-cart').on('click', function () {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function () {
                $('#button-cart').button('loading');
            },
            complete: function () {
                $('#button-cart').button('reset');
            },
            success: function (json) {
                if (json['success']) {
                    setTimeout(function () {
                        $('#cart > button').html('<img src="/catalog/view/theme/veloman/image/bag3.png"><span id="cart-total"> ' + json['total'] + '</span>');
                    }, 100);

                    //$('html, body').animate({scrollTop: 0}, 'slow');

                    $('#cart > ul').load('index.php?route=common/cart/info ul li');

                    //Modal mess
                    $('#modal-popup-add-cart-mess').html(json['success']);
                    $.magnificPopup.open({
                        items: {
                            src: $('#modal-popup-add-cart')
                        },
                        type: 'inline',
                        modal: false
                    });
                    setTimeout(function () {
                        $.magnificPopup.close();
                    }, 4000);

                    //alert('Товар добавлен в корзину');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('button[id^=\'button-upload\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').val(json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function () {
                $('#button-review').button('loading');
            },
            complete: function () {
                $('#button-review').button('reset');
            },
            success: function (json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
    });

    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
    //--></script><!--popUp-->
<div id="modal-popup-size-table" class="mfp-hide popup-modal-style">
    <div class="modal-popup-content">
        <h3>Таблица ростовок</h3>
        <table>
            <thead>
            <tr>
                <td>Рост</td>
                <td>Размер</td>
            </tr>
            </thead>
            <tr>
                <td>170-180</td>
                <td>52"</td>
            </tr>
            <tr>
                <td>180-190</td>
                <td>54"</td>
            </tr>
        </table>
    </div>
</div><?php echo $footer; ?>
