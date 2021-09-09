<div class="row">
    <?php foreach ($products as $product) { ?><?php $product_image = $product['thumb']; ?>
    <div class="col-lg-4">
        <div class="product-item">
            <div class="product-label">
                <span class="label-new">Новинка</span><?php if($product['special']){ ?>
                <span class="label-stock">Акция</span><?php } ?><span class="label-sale">Лучший выбор</span>
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
                <?php if ($product['rating']) { ?><?php for ($i = 1; $i <= 5; $i++) { ?><?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span><?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><?php } ?><?php } ?><?php } ?>
            </div>
            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '1');" class="btn btn-white btn-cart">
                <img src="/catalog/view/theme/veloman/image/icon-cart.png">Добавить в корзину
            </button>
            <a href="#modal-popup-bay" class="popup-modal btn-bay-one">Купить в один клик</a>
            <div class="product-param">
                <ul>
                    <?php foreach ($product['options'] as $option) { ?>
                    <li><?php echo $option['name']; ?>: <?php foreach($option['product_option_value'] as $option_value){ echo $option_value["name"]; } ?></li>
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

