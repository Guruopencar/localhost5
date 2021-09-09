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
            <div class="content">
                <?php echo $content_top; ?>
                <h1><?php echo $heading_title; ?></h1><?php echo $content_bottom; ?><?php echo $column_right; ?>
                <div class="row">
                    <?php foreach ($products as $product) { ?><?php $product_image = $product['thumb']; ?>
                    <div class="col-lg-4">
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
                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="btn btn-white btn-cart"><img src="/catalog/view/theme/veloman/image/icon-cart.png">Добавить в корзину</button>
                            <a href="#modal-popup-bay" class="popup-modal btn-bay-one">Купить в один клик</a>
                            <div class="product-param">
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
            </div>
        </div>
    </div>
</div><?php echo $footer; ?>