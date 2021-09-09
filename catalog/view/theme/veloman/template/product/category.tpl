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
    <div class="row">
        <?php echo $column_left; ?>
        <div class="col-lg-9">
            <?php if ($categories) { ?>
            <div class="row">
                <div class="col-lg-12">
                    <div class="catalog-category">
                        <h2>Подкатегории</h2>
                        <div class="row">
                            <?php foreach ($categories as $category) { ?>
                            <div class="col-lg-4">
                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="catalog-category-mobile mobile-only">
                        <h2>Подкатегории</h2>
                        <div class="owl-carousel owl-theme" id="owl-category">
                            <?php foreach ($categories as $category) { ?>
                            <div class="catalog-category-mobile-item">
                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            </div>
                            <?php } ?>
                        </div>
                        <script>
                            $(document).ready(function () {
                                var owl = $('#owl-category');
                                owl.owlCarousel({
                                    stagePadding: 20,
                                    items: 2,
                                    dots: false,
                                    loop: true,
                                    nav: false,
                                    margin: 5,
                                    autoplay: true,
                                    autoplayTimeout: 3000,
                                    autoplayHoverPause: false,
                                    responsive: {
                                        0: {
                                            items: 2
                                        },
                                        600: {
                                            items: 2
                                        },
                                        1000: {
                                            items: 0
                                        }
                                    },
                                });
                            })
                        </script>
                    </div>
                </div>
            </div>
            <?php } ?>
            <section class="catalog-sort">
                <div class="row">
                    <div class="col-6 col-lg-2">
                        <div class="catalog-view">
                            <span id="catalog-grid" class="catalog-view-active"><img src="/catalog/view/theme/veloman/image/icon-grid.png"></span>
                            <span id="catalog-list"><img src="/catalog/view/theme/veloman/image/icon-list.png"></span>
                        </div>
                        <script>
                            $('#catalog-grid').click(function () {
                                $("#catalog-grid").addClass('catalog-view-active').html();
                                $("#catalog-list").removeClass('catalog-view-active').html();
                                $(".catalog-product-view").addClass('col-lg-4').html();
                                $(".catalog-product-view").removeClass('col-lg-12').html();
                                $(".product-item").removeClass('product-view-list').html();
                            });
                            $('#catalog-list').click(function () {
                                $("#catalog-grid").removeClass('catalog-view-active').html();
                                $("#catalog-list").addClass('catalog-view-active').html();
                                $(".catalog-product-view").addClass('col-lg-12').html();
                                $(".catalog-product-view").removeClass('col-lg-4').html();
                                $(".product-item").addClass('product-view-list').html();
                            });
                        </script>
                    </div>
                    <div class="col-6 col-lg-3">
                        <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
                    </div>
                    <div class="col-6 col-lg-5">
                        <label for="input-sort">Сортировка</label>
                        <select id="input-sort" class="form-control" onchange="location = this.value;">
                            <?php foreach ($sorts as $sorts) { ?><?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                            <?php } ?><?php } ?>
                        </select>
                    </div>
                    <div class="col-6 col-lg-2">
                        <label for="input-limit">Выводить</label>
                        <select id="input-limit" class="form-control" onchange="location = this.value;">
                            <?php foreach ($limits as $limits) { ?><?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?><?php } ?>
                        </select>
                    </div>
                </div>
            </section>
            <div class="content">
                <?php echo $content_top; ?>
                <h1><?php echo $heading_title; ?></h1><?php echo $description; ?><?php echo $content_bottom; ?><?php echo $column_right; ?>
                <div class="row">
                    <?php foreach ($products as $product) { ?><?php $product_image = $product['thumb']; ?>
                    <div class="catalog-product-view col-lg-4">
                        <div class="product-item">
                            <div class="product-label">
                                <span class="label-new">Новинка</span><?php if ($product['special']) { ?>
                                <span class="label-stock">Акция</span><?php } ?>
                                <span class="label-sale">Лучший выбор</span>
                            </div>
                            <a href="<?php echo $product['href']; ?>" class="product-item-img" style="background-image: url('<?php echo $product_image; ?>')"></a>
                            <div class="product-item-price">
                                <?php if ($product['price']) { ?><?php if (!$product['special']) { ?>
                                <span><?php echo $product['price']; ?></span><?php } else { ?>
                                <span class="price-old"><?php echo $product['price']; ?></span>
                                <span class="price-new"><?php echo $product['special']; ?></span><?php } ?><?php } ?>
                            </div>
                            <h4>
                                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                            </h4>
                            <div class="rating">
                            <?php if ($product['rating']) { ?>
                                <?php for ($i = 1; $i <= 5; $i++) { ?><?php if ($product['rating'] < $i) { ?>
                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span><?php } else { ?>
                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><?php } ?><?php } ?>
                            <?php } ?>
                            </div>
                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="btn btn-white btn-cart">
                                <img src="/catalog/view/theme/veloman/image/icon-cart.png">Добавить в корзину
                            </button>
                            <a href="#modal-popup-bay" class="popup-modal btn-bay-one">Купить в один клик</a>
                            <div class="product-param">
                                <?php //print_r($options); ?>
                                <ul>
                                    <?php foreach ($product['options'] as $option) { ?>
                                    <li><?php echo $option['name']; ?>: <?php foreach($option['product_option_value'] as $option_value){ echo $option_value["name"]." "; } ?></li>
                                    <?php } ?>
                                    <li>Артикул: <?php echo $sku; ?></li>
                                </ul>
                            </div>
                            <div class="product-btn">
                                <button type="button" data-toggle="tooltip" class="product-btn-heart" title="Добавить в избранное" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                                    <img src="/catalog/view/theme/veloman/image/icon-like.png"></button>
                                <button type="button" data-toggle="tooltip" class="product-btn-compare" title="Добавить в сравнение" onclick="compare.add('<?php echo $product['product_id']; ?>');">
                                    <img src="/catalog/view/theme/veloman/image/icon-compare.png"></button>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <div class="row">
                    <div class="col-12">
                        <?php echo $pagination; ?>
                    </div>
                </div>
            </div>
        </div>
        <?php if ($description) { ?>
        <div class="col-lg-12"><?php echo $description; ?></div>
        <?php } ?>
    </div>
</div><?php echo $footer; ?>