<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <?php if ($noindex) { ?>
    <!-- OCFilter Start -->
    <meta name="robots" content="noindex,nofollow"/>
    <!-- OCFilter End --><?php } ?>
    <link rel="shortcut icon" href="catalog/view/theme/veloman/image/favicon.png" type="image/png">
    <title><?php echo $title; ?></title>

<?php if ($noindex) { ?>
<!-- OCFilter Start -->
<meta name="robots" content="noindex,nofollow" />
<!-- OCFilter End -->
<?php } ?>
      
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?><?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?><?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>"/>
    <?php } ?><?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?><?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?><?php foreach ($analytics as $analytic) { ?><?php echo $analytic; ?><?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min2.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!--Quiz-->
    <script src="catalog/view/javascript/js/quiz/js/jquery.bxslider.min.js"></script>
    <script src="catalog/view/javascript/js/quiz/js/jquery.form.js"></script>
    <script src="catalog/view/javascript/js/quiz/js/jquery.validate.js"></script>
    <!-- sytle -->
    <link rel="stylesheet" href="catalog/view/theme/veloman/stylesheet/bootstrap-grid.min.css">
    <link rel="stylesheet" href="catalog/view/theme/veloman/stylesheet/magnific-popup.css">
    <link rel="stylesheet" href="catalog/view/theme/veloman/stylesheet/animate.css">
    <link rel="stylesheet" href="/catalog/view/javascript/font-awesome/css/font-awesome.min.css">
    <!-- Owl Stylesheets -->
    <link rel="stylesheet" href="catalog/view/javascript/js/owl-carusel/owl.carousel.min.css">
    <link rel="stylesheet" href="catalog/view/javascript/js/owl-carusel/owl.theme.default.min.css">
    <!-- Owl javascript -->
    <script src="catalog/view/javascript/js/owl-carusel/owl.carousel.js"></script>
    <!-- mask -->
    <script src="catalog/view/javascript/js/jquery.maskedinput.min.js"></script>
    <!-- popup -->
    <script src="catalog/view/javascript/js/jquery.magnific-popup.min.js"></script>
    <!--Style-->
    <link rel="stylesheet" href="catalog/view/theme/veloman/stylesheet/style.css">
    <link rel="stylesheet" href="catalog/view/theme/veloman/stylesheet/responsive.css">
    <link rel="stylesheet" href="catalog/view/javascript/ocfilter/nouislider.min.css">
    <script src="catalog/view/javascript/ocfilter/nouislider.min.js"></script>
    <script src="catalog/view/javascript/ocfilter/ocfilter.js"></script>
</head>
<body class="<?php echo $class; ?>">
<div class="mobile-menu">
    <div class="mobile-menu-btn-close">x</div>
    <div class="head-logo">
        <a href="<?php echo $home; ?>">
            <img src="<?php echo $logo; ?>" alt="veloman.by">
        </a>
    </div>
    <h4>Навигация:</h4>
    <a href="/index.php?route=product/compare">Сравнение товаров</a>
    <a href="<?php echo $wishlist; ?>">Избранные товары</a>
    <a href="/dostavka/">Доставка</a>
    <a href="/oplata/">Оплата</a>
    <a href="/garantiya/">Гарантия</a>
    <a href="/o-nas/">О нас</a>
    <a href="/prokat/">Прокат</a>
    <a href="/remont/">Ремонт</a>
    <a href="/сontakt/">Контакты</a>
    <h4>Прием заявок:</h4>
    <a href="tel:+375333350909"><img src="/catalog/view/theme/veloman/image/icon-mts.png">+375 33 335-09-09</a>
    <a href="tel:+375293350909"><img src="/catalog/view/theme/veloman/image/icon-vel.png">+375 29 335-09-09</a>
    <p>Пн-Сб 09:00 - 21:00</p>
    <h5>Сервисный центр:</h5>
    <a href="tel:+375293360909"><img src="/catalog/view/theme/veloman/image/icon-vel.png">+375 29 336-09-09</a>
    <h4>Адрес магазина:</h4>
    <p>г.Минск, ул. Ложинская 23</p>
    <h5>Время работы магазина:</h5>
    <p>Пн-Сб 10:00 - 20:00<br>Без выходных!</p>
</div>
<div class="mobile-menu-catalog">
    <div class="mobile-menu-btn-close-catalog">x</div>
    <h4>Каталог:</h4><?php foreach ($categories as $category) { ?><?php if ($category['children']) { ?>
    <div class="row">
        <div class="col-lg-6">
            <h4>
                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
            </h4>
            <div class="row">
                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?><?php foreach ($children as $child) { ?>
                <div class="col-lg-12">
                    <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                </div>
                <?php } ?><?php } ?>
            </div>
        </div>
    </div>
    <?php } else { ?>
    <h4>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
    </h4>
    <?php } ?><?php } ?></div>
<header>
    <div class="texture-01"><img src="/catalog/view/theme/veloman/image/texture-01.png"></div>
    <div class="texture-02"><img src="/catalog/view/theme/veloman/image/texture-02.png"></div>
    <section id="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="top-bar-menu">
                                <a href="/dostavka/">Доставка</a>
                                <a href="/oplata/">Оплата</a>
                                <a href="/garantiya/">Гарантия</a>
                                <a href="/o-nas/">О нас</a>
                                <a href="/prokat/">Прокат</a>
                                <a href="/remont/">Ремонт</a>
                                <a href="/сontakt/">Контакты</a>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <!--<div class="top-bar-location">
                                <img src="/catalog/view/theme/veloman/image/icon-location.png">
                                <a href="/сontakt/#map">г.Минск, ул. Ложинская 23</a>
                            </div>-->
                            <div class="block-wishlist">
                                <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>">
                                    <img src="/catalog/view/theme/veloman/image/icon-like.png">
                                </a>
                                <a href="/index.php?route=product/compare" id="compare-total">
                                    <img src="/catalog/view/theme/veloman/image/icon-compare.png">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="top-bar-soc">
                                <a href="#" target="_blank">
                                    <img src="/catalog/view/theme/veloman/image/icon-facebook.png"></a>
                                <a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/instagram.png">
                                </a>
                                <a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/vk.png"></a>
                                <!--<a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/telegram.png"></a>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="top-bar-phone">
                        <div class="phone-popup">
                            <a href="tel:+375443350909" class="top-bar-phone-item">335-09-09<img src="/catalog/view/theme/veloman/image/arrow-down.png"><span>МТС<br>VEL</span>
                            </a>
                            <div class="phone-top-bar">
                                <div class="top-bar-sale">
                                    <h4>Все товары со скидкой через корзину</h4>
                                    <a href="#modal-popup" class="popup-modal">Получить скидку</a>
                                </div>
                                <h5>Прием заявок:</h5>
                                <a href="tel:+375333350909">
                                    <img src="/catalog/view/theme/veloman/image/icon-mts.png">+375 33 335-09-09
                                </a>
                                <a href="tel:+375293350909">
                                    <img src="/catalog/view/theme/veloman/image/icon-vel.png">+375 29 335-09-09
                                </a>
                                <p>Пн-Сб 09:00 - 21:00</p>
                                <h5>Сервисный центр:</h5>
                                <a href="tel:+375293360909">
                                    <img src="/catalog/view/theme/veloman/image/icon-vel.png">+375 29 336-09-09
                                </a>
                                <h5>Адрес магазина:</h5>
                                <p>г.Минск, ул. Ложинская 23</p>
                                <h5>Время работы магазина:</h5>
                                <p>Пн-Сб 10:00 - 20:00<br>Без выходных!</p>
                                <a href="#modal-popup" class="popup-modal btn btn-yellow">Оставить заявку</a>
                            </div>
                        </div>
                        <a href="#modal-popup" class="popup-modal top-bar-feedback">Оставить заявку</a>
                    </div>
                </div>
                <div class="col-lg-1">
                    <div class="block-cart">
                        <?php echo $cart; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="head">
        <div class="container">
            <div class="row">
                <div class="col-10 col-lg-3">
                    <div class="block-logo">
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>"></a>
                    </div>
                </div>
                <div class="col-2 col-lg-6">
                    <div class="mobile-menu-btn mobile-only">
                        <span><img src="/catalog/view/theme/veloman/image/menu.png"></span>
                    </div>
                    <nav>
                        <ul>
                            <?php foreach ($categories as $category) { ?><?php if ($category['children']) { ?>
                            <li class="sub-menu">
                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                <div class="sub-menu-item-catalog <?php if($category['id'] == 71){ ?>sub-menu-item-catalog-2<?php } elseif($category['id'] == 102) { ?>sub-menu-item-catalog-3<?php } elseif($category['id'] == 125) { ?>sub-menu-item-catalog-4<?php } ?>" id="<?php echo $category['id']; ?>">
                                    <div class="row">
                                        <?php if($category['id'] == 59){ ?>
                                        <div class="col-lg-10">
                                            <h4>
                                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                            </h4>
                                            <div class="sub-child">
                                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?><?php foreach ($children as $child) { ?><?php  //print_r($child['categories_brands']); ?>
                                                <div class="sub-child-menu">
                                                    <a href="<?php echo $child['href']; ?>" class="menu-catalog-item"><?php echo $child['name']; ?></a>
                                                    <div class="sub-child-item">
                                                        <?php foreach ($child['children'] as $child3) { ?><?php //print_r($child['children']); ?>
                                                        <a href="<?php echo $child3['href']; ?>" class="menu-catalog-item-child"><?php echo $child3['name']; ?></a>
                                                        <?php } ?>
                                                        <div class="sub-child-item-brand">
                                                            <?php foreach ($child['categories_brands'] as $child_brand) { ?>
                                                            <?php //print_r($child_brand); ?>
                                                            <a href="/<?php echo $child_brand['name']; ?>/">
                                                                <img src="image/<?php echo $child_brand['image']; ?>" alt="<?php echo $child_brand['name']; ?>">
                                                            </a>
                                                            <?php } ?>
                                                        </div>
                                                    </div>
                                                </div>
                                                <?php } ?><?php } ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-2"></div>
                                        <?php } else { ?>
                                        <div class="col-lg-12">
                                            <h4>
                                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                            </h4>
                                            <div class="row">
                                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?><?php foreach ($children as $child) { ?>
                                                <div class="col-lg-4">
                                                    <a href="<?php echo $child['href']; ?>" class="menu-catalog-item"><?php echo $child['name']; ?></a>
                                                </div>
                                                <?php } ?><?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?><?php } else { ?>
                                    <h4>
                                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    </h4>
                                </div>
                </div>
                </li><?php } ?><?php } ?>
                <li>
                    <a href="/index.php?route=product/special">Акции</a>
                </li>
                <!--<li>
                    <a href="<?php echo $home; ?>#quiz">Подобрать велосипед</a>
                </li>--></ul></nav>
            </div>
            <div class="col-lg-3">
                <?php echo $search; ?>
            </div>
        </div>
        </div>
    </section>
</header>