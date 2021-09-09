<footer>
    <div class="texture-08"><img src="/catalog/view/theme/veloman/image/texture-08.png"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="block-logo">
                    <a href="https://veloman.by/">
                        <img src="/catalog/view/theme/veloman/image/logo.png" alt="veloman.by"></a>
                </div>
                <p>ИП Липский К.Р. УНП191879815 зарегистрирован в торговом реестре 27 января 2015г
                    <br>Администрацией Фрунзенского района г. Минска. <br>Юр. адрес: г.Минск, ул. Туровского 26</p>
                <div class="footer-pay">
                    <img src="/catalog/view/theme/veloman/image/all-pay.png">
                </div>
            </div>
            <div class="col-lg-2 offset-lg-1">
                <h4>Навигация</h4>
                <ul>
                    <li>
                        <a href="/velosipedy/">Велосипеды</a>
                    </li>
                    <li>
                        <a href="/akssessuary/">Акссесуары</a>
                    </li>
                    <li>
                        <a href="/zapchasti/">Запчасти</a>
                    </li>
                    <li>
                        <a href="/ekipirovka/">Экипировка</a>
                    </li>
                    <li>
                        <a href="/index.php?route=product/special">Акции</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-2">
                <h4>Информация</h4>
                <ul>
                    <li>
                        <a href="/dostavka/">Доставка</a>
                    </li>
                    <li>
                        <a href="/oplata/">Оплата</a>
                    </li>
                    <li>
                        <a href="/garantiya/">Гарантия</a>
                    </li>
                    <li>
                        <a href="/o-nas/">О нас</a>
                    </li>
                    <li>
                        <a href="/magaziny/">Магазины</a>
                    </li>
                    <li>
                        <a href="/servis/">Сервис</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-2 offset-lg-1">
                <h4>Мы в соц сетях</h4>
                <div class="top-bar-soc">
                    <a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/icon-facebook.png"></a>
                    <a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/instagram.png"></a>
                    <a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/vk.png"></a>
                    <a href="#" target="_blank"><img src="/catalog/view/theme/veloman/image/telegram.png"></a>
                </div>
                <div class="block-dev">
                    <div class="weba-dev">
                        <span>Сайт разработан в</span>
                        <div class="webapico"></div>
                        <a href="https://weba.by/?utm_content=Переход-с-сайта-veloman.by" target="_blank" class="weba-logo">web<span>a.</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <p>&copy; veloman.by, 2021. Все права защищены.</p>
            </div>
        </div>
    </div>
</footer><!--Mobile menu-->
<section class="mobile-only">
    <div class="mobile-fixed-menu">
        <div class="row">
            <div class="col-2 offset-1">
                <a class="no-href">
                    <div class="mobile-menu-icon mobile-menu-btn-catalog"><img src="/catalog/view/theme/veloman/image/icon-mobile/catalog.png">
                    </div>
                    <span>Каталог</span>
                </a>
            </div>
            <div class="col-2">
                <a href="/index.php?route=product/search">
                    <div class="mobile-menu-icon"><img src="/catalog/view/theme/veloman/image/icon-mobile/search.png">
                    </div>
                    <span>Поиск</span>
                </a>
            </div>
            <div class="col-2">
                <a href="/index.php?route=checkout/cart">
                    <div class="mobile-menu-icon"><img src="/catalog/view/theme/veloman/image/icon-mobile/cart.png">
                    </div>
                    <span>Корзина</span></a>
            </div>
            <div class="col-2">
                <a href="<?php echo $wishlist; ?>">
                    <div class="mobile-menu-icon"><img src="/catalog/view/theme/veloman/image/icon-mobile/heart.png">
                    </div>
                    <span>Избранное</span></a>
            </div>
            <div class="col-2">
                <a href="tel:+375333350909">
                    <div class="mobile-menu-icon"><img src="/catalog/view/theme/veloman/image/icon-mobile/call.png">
                    </div>
                    <span>Позвонить</span>
                </a>
            </div>
        </div>
    </div>
</section><!--Mobile menu END--><!--popUp-->
<div id="modal-popup" class="mfp-hide popup-modal-style">
    <div class="modal-popup-content">
        <form class="popup-form" method="post" id="mail_send" enctype="multipart/form-data">
            <h3>Оставьте заявку</h3>
            <p>И наш менеджер перезвонит Вам</p>
            <input type="hidden" name="param" id="param"> <input type="text" name="name" placeholder="Ваше имя">
            <input type="tel" name="phone" placeholder="Ваш телефон" required>
            <button type="submit" class="btn btn-yellow" id="send-btn">Купить</button>
        </form>
        <div class="mail_send-sacsses"></div>
        <div class="mail_send-sacsses-p"></div>
    </div>
</div>
<div id="modal-popup-bay" class="mfp-hide popup-modal-style">
    <div class="modal-popup-content">
        <form class="popup-form" method="post" id="mail_send_bay" enctype="multipart/form-data">
            <h3>Оставьте заявку</h3>
            <p>И наш менеджер перезвонит Вам</p>
            <input type="hidden" name="param" id="param-bay"> <input type="text" name="name" placeholder="Ваше имя">
            <input type="tel" name="phone" placeholder="Ваш телефон" required>
            <button type="submit" class="btn btn-yellow" id="send-btn-bay">Купить</button>
        </form>
        <div class="mail_send-sacsses"></div>
        <div class="mail_send-sacsses-p"></div>
    </div>
</div>
<div id="modal-popup-add-cart" class="mfp-hide popup-modal-style">
    <div class="modal-popup-content">
        <h3>Товар добавлен в корзину</h3>
        <p id="modal-popup-add-cart-mess"></p>
    </div>
</div>
<div id="modal-popup-add-wishlist" class="mfp-hide popup-modal-style">
    <div class="modal-popup-content">
        <h3>Товар добавлен в избранное</h3>
        <p id="modal-popup-add-wishlist-mess"></p>
    </div>
</div>
<div id="modal-popup-add-compare" class="mfp-hide popup-modal-style">
    <div class="modal-popup-content">
        <h3>Товар добавлен в сравнение</h3>
        <p id="modal-popup-add-compare-mess"></p>
    </div>
</div>
<!-- -->
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('.popup-modal').magnificPopup({
            type: 'inline',
            preloader: false,
            focus: '#username',
            //modal: true,
        });
        $(document).on('click', '.popup-modal-dismiss', function (e) {
            e.preventDefault();
            $.magnificPopup.close();
        });
    });
</script>
<script type="text/javascript">
    $(function () {
        $(document).ready(function () {
            //Чтение положение курсора
            $.fn.setCursorPosition = function (pos) {
                if ($(this).get(0).setSelectionRange) {
                    $(this).get(0).setSelectionRange(pos, pos);
                } else if ($(this).get(0).createTextRange) {
                    var range = $(this).get(0).createTextRange();
                    range.collapse(true);
                    range.moveEnd('character', pos);
                    range.moveStart('character', pos);
                    range.select();
                }
            };
            //Маска
            $("input[type='tel']").mask("+375 (99) 999-99-99");
            //Возврат курсора на позицию при клике, на позицию 4
            $('input[type="tel"]').click(function () {
                $(this).setCursorPosition(6);  // set position number
            });
        });
    });
</script>
<script src="/catalog/view/javascript/js/etimer.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(".time").eTimer({
            etType: 0,
            etDate: "25.10.2021.01.00",
            etTitleText: "",
            etTitleSize: 0,
            etShowSign: 1,
            etSep: ":",
            etFontFamily: "Spaceland-Ten",
            etTextColor: "#232323",
            etPaddingTB: 0,
            etPaddingLR: 0,
            etBorderSize: 0,
            etBorderRadius: 0,
            etLastUnit: 4,
            etNumberFontFamily: "Spaceland-Ten",
            etNumberSize: 60,
            etNumberColor: "#232323",
            etNumberPaddingTB: 0,
            etNumberPaddingLR: 0,
            etNumberBorderSize: 0,
            etNumberBorderRadius: 0,
        });
    });
</script>
<script type="text/javascript">
    $(".mobile-menu-btn span").click(function () {
        $("body").addClass("body-scroll");
        $(".mobile-menu").addClass("active");
    });
    $('.mobile-menu-btn-close').click(function () {
        $("body").removeClass('body-scroll').html();
        $(".mobile-menu").removeClass('active').html();
    });
    $(".mobile-menu-btn-catalog").click(function () {
        $("body").addClass("body-scroll");
        $(".mobile-menu-catalog").addClass("active");
    });
    $('.mobile-menu-btn-close-catalog').click(function () {
        $("body").removeClass('body-scroll').html();
        $(".mobile-menu-catalog").removeClass('active').html();
    });
</script>
</body>
</html>