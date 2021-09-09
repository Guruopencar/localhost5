<?php echo $header; ?>
<section id="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="banner-text">
                    <h4>Готов к сезону?</h4>
                    <h1>Велосипеды в Минске</h1>
                    <h3>#1 по продаже и ремонту велосипедов в Минске</h3>
                    <a href="#quiz" class="btn btn-white">Подобрать велосипед</a>
                    <div class="row">
                        <div class="col-6 col-lg-5">
                            <div class="banner-dis">
                                <h2><span>+</span>10 лет</h2>
                                <p>Работаем с велосипедаби более 10 лет.</p>
                            </div>
                        </div>
                        <div class="col-6 col-lg-5 offset-lg-1">
                            <div class="banner-dis">
                                <h2><span>+</span>9820</h2>
                                <p>Проданных велосипедов по всей Беларуси.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <section id="stock">
                    <a href="/index.php?route=product/special" class="all-stock">
                        <img src="/catalog/view/theme/veloman/image/all-stock.png"></a>
                    <div class="texture-stock">Акция!</div>
                    <div class="owl-carousel owl-theme" id="owl-stock">
                        <a href="/velosiped-trek-roscoe-6-chernyj-2019" class="owl-stock-item">
                            <img src="/catalog/view/theme/veloman/image/bike-01.png">
                            <h4>ВЕЛОСИПЕД TREK ROSCOE 6 (ЧЕРНЫЙ, 2019)</h4>
                            <h3><span>2100р</span>1985,00 p.</h3>
                        </a>
                    </div>
                    <script>
                        $(document).ready(function () {
                            var owl = $('#owl-stock');
                            owl.owlCarousel({
                                items: 1,
                                dots: false,
                                loop: true,
                                nav: false,
                                margin: 0,
                                autoplay: true,
                                autoplayTimeout: 3000,
                                autoplayHoverPause: false,
                                responsive: {
                                    0: {
                                        items: 1
                                    },
                                    600: {
                                        items: 1
                                    },
                                    1000: {
                                        items: 1
                                    }
                                },
                            });
                        })
                    </script>
                </section>
            </div>
        </div>
    </div>
</section><?php echo $column_left; ?>
<section id="category-banners">
    <div class="texture-03"><img src="/catalog/view/theme/veloman/image/texture-03.png"></div>
    <div class="container">
        <div class="tab-nav">
            <div class="row">
                <div class="col-lg-12">
                    <div class="tab-nav-item tab-active">
                        <a href="#" class="tab-button" data-tab="1">Велосипеды</a>
                    </div>
                    <div class="tab-nav-item">
                        <a href="#" class="tab-button" data-tab="2">Аксессуары</a>
                    </div>
                    <div class="tab-nav-item">
                        <a href="#" class="tab-button" data-tab="3">Запчасти</a>
                    </div>
                    <div class="tab-nav-item">
                        <a href="#" class="tab-button" data-tab="4">Экипировка</a>
                    </div>
                    <div class="tab-nav-item">
                        <a href="#" class="tab-button" data-tab="5">Самокаты</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-item tab-active" data-tab-content="1">
            <div class="row">
                <?php foreach ($categories as $category) { ?><?php $category_img = 'image/'.$category['img']; ?><?php $category_href = $category['href']; ?><?php $min_price = substr($category["min_price"],0,-5); ?>
                <div class="col-lg-3">
                    <a href="<?php echo $category_href; ?>" class="category-banner-item" style="background-image: url('<?php echo $category_img; ?>')">
                        <span><?php echo $category["name"]; ?></span>
                        <h6>от <?php echo $min_price; ?> BYN</h6>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="tab-item" data-tab-content="2">
            <div class="row">
                <?php foreach ($categories2 as $category) { ?><?php $category_img = 'image/'.$category['img']; ?><?php $category_href = $category['href']; ?><?php $min_price = substr($category["min_price"],0,-5); ?>
                <div class="col-lg-3">
                    <a href="<?php echo $category_href; ?>" class="category-banner-item" style="background-image: url('<?php echo $category_img; ?>')">
                        <span><?php echo $category["name"]; ?></span>
                        <h6>от <?php echo $min_price; ?> BYN</h6>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="tab-item" data-tab-content="3">
            <div class="row">
                <?php foreach ($categories3 as $category) { ?><?php $category_img = 'image/'.$category['img']; ?><?php $category_href = $category['href']; ?><?php $min_price = substr($category["min_price"],0,-5); ?>
                <div class="col-lg-3">
                    <a href="<?php echo $category_href; ?>" class="category-banner-item" style="background-image: url('<?php echo $category_img; ?>')">
                        <span><?php echo $category["name"]; ?></span>
                        <h6>от <?php echo $min_price; ?> BYN</h6>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="tab-item" data-tab-content="4">
            <div class="row">
                <?php foreach ($categories4 as $category) { ?><?php $category_img = 'image/'.$category['img']; ?><?php $category_href = $category['href']; ?><?php $min_price = substr($category["min_price"],0,-5); ?>
                <div class="col-lg-3">
                    <a href="<?php echo $category_href; ?>" class="category-banner-item" style="background-image: url('<?php echo $category_img; ?>')">
                        <span><?php echo $category["name"]; ?></span>
                        <h6>от <?php echo $min_price; ?> BYN</h6>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="tab-item" data-tab-content="5">
            <div class="row">
                <?php foreach ($categories5 as $category) { ?><?php $category_img = 'image/'.$category['img']; ?><?php $category_href = $category['href']; ?><?php $min_price = substr($category["min_price"],0,-5); ?>
                <div class="col-lg-3">
                    <a href="<?php echo $category_href; ?>" class="category-banner-item" style="background-image: url('<?php echo $category_img; ?>')">
                        <span><?php echo $category["name"]; ?></span>
                        <h6>от <?php echo $min_price; ?> BYN</h6>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <script type="text/javascript">
            var tabNavs = document.querySelectorAll(".tab-button"); //Кнопка переключения
            var tabPanesItem = document.querySelectorAll(".tab-nav-item"); //Блок кнопки переключения
            var tabPanes = document.querySelectorAll(".tab-item"); //Блок якорь

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
</section>
<section id="quiz">
    <div class="texture-04"><img src="/catalog/view/theme/veloman/image/texture-04.png"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="block-head">
                    <h2>ПОМОЖЕМ<br>ПОДОБРАТЬ</h2>
                    <p>Ответьте на несколько вопросов, и мы сможем подобрать для вас идеальный велосипед!</p>
                </div>
            </div>
            <div class="col-lg-6 offset-lg-2">
                <form class="portable-test-wrapper" novalidate="novalidate">
                    <div class="container">
                        <div class="bx-wrapper" style="max-width: 100%;">
                            <div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: inherit!important; position: relative; height: auto;">
                                <div class="test-slider" style="width: auto; position: relative;">
                                    <div class="step-slide" style="float: none; list-style: none; position: absolute; width: 760px; z-index: 50; display: block;" aria-hidden="false">
                                        <h2 class="step-slide__title">Кто будет кататься?</h2>
                                        <div class="step-slide__grid">
                                            <div class="row">
                                                <div class="col-6 col-lg-3 quiz-step-1-man">
                                                    <label for="step1-1" class="qus-item">
                                                        <div class="pick-item__img">
                                                            <img src="/catalog/view/theme/veloman/image/qvz-01.png">
                                                        </div>
                                                        <input class="pick-item__input" type="radio" name="step1" id="step1-1" value="Мужчина">
                                                        <h4 class="pick-item__label">Мужчина</h4>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-3 quiz-step-1-man">
                                                    <label for="step1-2" class="qus-item">
                                                        <div class="pick-item__img">
                                                            <img src="/catalog/view/theme/veloman/image/qvz-02.png">
                                                        </div>
                                                        <input class="pick-item__input" type="radio" name="step1" id="step1-2" value="Женщина">
                                                        <h4 class="pick-item__label">Женщина</h4>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-3 quiz-step-1-child">
                                                    <label for="step1-3" class="qus-item">
                                                        <div class="pick-item__img">
                                                            <img src="/catalog/view/theme/veloman/image/qvz-03.png">
                                                        </div>
                                                        <input class="pick-item__input" type="radio" name="step1" id="step1-3" value="Мальчик">
                                                        <h4 class="pick-item__label">Мальчик</h4>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-3 quiz-step-1-child">
                                                    <label for="step1-4" class="qus-item">
                                                        <div class="pick-item__img">
                                                            <img src="/catalog/view/theme/veloman/image/qvz-04.png">
                                                        </div>
                                                        <input class="pick-item__input" type="radio" name="step1" id="step1-4" value="Девочка">
                                                        <h4 class="pick-item__label">Девочка</h4>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row quiz-btn">
                                                <div class="col-12 align-center">
                                                    <div id="next1" class="btn-next-container"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="step-slide" style="float: none; list-style: none; position: absolute; width: 760px; z-index: 0; display: none;" aria-hidden="true">
                                        <h2 class="step-slide__title">
                                            Выберите рост</h2>
                                        <div class="step-slide__grid">
                                            <div class="row">
                                                <div class="col-6 col-lg-4  quiz-step-2-child">
                                                    <label for="step2-1" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-1" value="75-90см">
                                                        <div class="pick-item__label">75-90см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4  quiz-step-2-child">
                                                    <label for="step2-2" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-2" value="91-100см">
                                                        <div class="pick-item__label">91-100см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4  quiz-step-2-child">
                                                    <label for="step2-3" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-3" value="101-115см">
                                                        <div class="pick-item__label">101-115см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4  quiz-step-2-child">
                                                    <label for="step2-4" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-4" value="116-125см">
                                                        <div class="pick-item__label">116-125см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4  quiz-step-2-child">
                                                    <label for="step2-5" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-5" value="126-150см">
                                                        <div class="pick-item__label">126-150см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-2-man">
                                                    <label for="step2-6" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-6" value="126-150см">
                                                        <div class="pick-item__label">126-154см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-2-man">
                                                    <label for="step2-7" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-7" value="126-150см">
                                                        <div class="pick-item__label">155-163см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-2-man">
                                                    <label for="step2-8" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-8" value="126-150см">
                                                        <div class="pick-item__label">164-172см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-2-man">
                                                    <label for="step2-9" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-9" value="126-150см">
                                                        <div class="pick-item__label">173-181см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-2-man">
                                                    <label for="step2-10" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-10" value="126-150см">
                                                        <div class="pick-item__label">182-190см</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-2-man">
                                                    <label for="step2-11" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step2" id="step2-11" value="126-150см">
                                                        <div class="pick-item__label">+190см</div>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row quiz-btn">
                                                <div class="col-6 align-right">
                                                    <div id="prev2" class="btn-prev-container"></div>
                                                </div>
                                                <div class="col-6">
                                                    <div id="next2" class="btn-next-container"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="step-slide" style="float: none; list-style: none; position: absolute; width: 760px; z-index: 0; display: none;" aria-hidden="true">
                                        <h2 class="step-slide__title">В какой бюджет вы планируете уложиться?</h2>
                                        <div class="step-slide__grid">
                                            <div class="row">
                                                <div class="col-6 col-lg-4 quiz-step-3-child">
                                                    <label for="step3-8" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-8" value="до 500 BYN">
                                                        <div class="pick-item__label">до 100 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-child">
                                                    <label for="step3-9" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-8" value="до 500 BYN">
                                                        <div class="pick-item__label">до 300 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-child">
                                                    <label for="step3-1" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-1" value="до 500 BYN">
                                                        <div class="pick-item__label">до 500 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-man">
                                                    <label for="step3-2" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-2" value="до 500 BYN">
                                                        <div class="pick-item__label">500-800 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-man">
                                                    <label for="step3-3" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-3" value="до 500 BYN">
                                                        <div class="pick-item__label">800-1000 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-man">
                                                    <label for="step3-4" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-4" value="до 500 BYN">
                                                        <div class="pick-item__label">до 1500 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-man">
                                                    <label for="step3-5" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-5" value="до 500 BYN">
                                                        <div class="pick-item__label">до 2000 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-4 quiz-step-3-man">
                                                    <label for="step3-6" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-6" value="до 500 BYN">
                                                        <div class="pick-item__label">до 3000 BYN</div>
                                                    </label>
                                                </div>
                                                <div class="col-6 col-lg-6">
                                                    <label for="step3-7" class="pick-item">
                                                        <input class="pick-item__input" type="radio" name="step3" id="step3-7" value="до 500 BYN">
                                                        <div class="pick-item__label">Бюджет не имеет значения</div>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row quiz-btn">
                                                <div class="col-6 align-right">
                                                    <div id="prev3" class="btn-prev-container"></div>
                                                </div>
                                                <div class="col-6">
                                                    <div id="next3" class="btn-next-container"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="step-slide" style="float: none; list-style: none; position: absolute; width: 760px; z-index: 0; display: none;" aria-hidden="true">
                                        <h2 class="step-slide__title">
                                            Спасибо за ответы! Получите консультацию по выбору велосипеда, оставив контакты. </h2>
                                        <div class="step-slide__grid">
                                            <div class="last-step-form">
                                                <input class="last-step-form__input" type="text" name="name" placeholder="Ваше имя">
                                                <input class="last-step-form__input" type="tel" name="phone" placeholder="Введите Ваш номер">
                                                <button class="last-step-form__button btn btn-yellow">
                                                    <span>получить консультацию</span></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="step-slide" style="float: none; list-style: none; position: absolute; width: 760px; z-index: 0; display: none;" aria-hidden="true">
                                        <div class="after-submit">
                                            <div class="container">
                                                <h2 class="after-submit__title step-slide__title">Заявка отправлена. Мы уже приступили к поиску для вас идеального варианта.</h2>
                                                <h4 class="after-submit__descr">Наш менеджер перезвонит Вам.</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bx-controls"></div>
                        </div>
                    </div>
                </form>
                <script>
                    $('.quiz-step-1-man').click(function () {
                        $(".quiz-step-2-man").css("display", "block");
                        $(".quiz-step-2-child").css("display", "none");
                        $(".quiz-step-3-man").css("display", "block");
                        $(".quiz-step-3-child").css("display", "none");
                    });
                    $('.quiz-step-1-child').click(function () {
                        $(".quiz-step-2-man").css("display", "none");
                        $(".quiz-step-2-child").css("display", "block");
                        $(".quiz-step-3-man").css("display", "none");
                        $(".quiz-step-3-child").css("display", "block");
                    });
                </script>
                <script src="/catalog/view/javascript/js/quiz/js/main.js"></script>
            </div>
        </div>
    </div>
</section><?php echo $content_top; ?>
<section id="brands">
    <div class="texture-05"><img src="/catalog/view/theme/veloman/image/texture-05.png"></div>
    <div class="texture-06"><img src="/catalog/view/theme/veloman/image/texture-06.png"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="block-head">
                    <h2>Велосипеды<br>По брендам</h2>
                    <p>Большой каталог велосипедов по брендам лучших производителей.</p>
                    <a href="/index.php?route=product/manufacturer" class="btn btn-yellow">Все бренды</a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <?php foreach ($brands as $brand) { ?><?php $i = 0; ?><?php foreach ($brand as $brand_item) { ?><?php if(($brand_item["id"] == "29") || ($brand_item["id"] == "11") || ($brand_item["id"] == "15") || ($brand_item["id"] == "12") || ($brand_item["id"] == "13") || ($brand_item["id"] == "23") || ($brand_item["id"] == "16") || ($brand_item["id"] == "14") || ($brand_item["id"] == "24") || ($brand_item["id"] == "37") || ($brand_item["id"] == "22") || ($brand_item["id"] == "46")){ ?><?php $brand_href = $brand_item["href"]; ?><?php $brand_img = $brand_item["img"]; ?><?php if($i <= 11) { ?>
                    <div class="col-6 col-lg-3">
                        <a href="<?php echo $brand_href; ?>" class="brand-item" style="background-image: url('image/<?php echo $brand_img; ?>')"></a>
                    </div>
                    <?php } ?><?php $i++; ?><?php } ?><?php } ?><?php } ?>
                </div>
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
<?php echo $column_right; ?>
<?php echo $content_bottom; ?>
<section id="map">
    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A9654bce23b7b3148ee6b1130c45dd224808eddeb9b4082499fc0390ae19baaaa&amp;width=100%25&amp;height=300&amp;lang=ru_RU&amp;scroll=false"></script>
</section><?php echo $footer; ?>