<div id="cart">
    <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="cart-basket dropdown-toggle">
        <img src="/catalog/view/theme/veloman/image/bag3.png"><span id="cart-total"><?php echo $text_items; ?></span>
    </button>
    <ul class="dropdown-menu cart-view">
        <li>
            <?php if ($products || $vouchers) { ?>
            <table class="table table-striped">
                <?php foreach ($products as $product) { ?>
                <tr>
                    <td class="text-center"><?php if ($product['thumb']) { ?>
                        <a href="<?php echo $product['href']; ?>">
                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail"/>
                        </a>
                        <?php } ?></td>
                    <td class="text-left">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        <?php if ($product['option']) { ?><?php foreach ($product['option'] as $option) { ?><br/> -
                        <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                        <?php } ?><?php } ?><?php if ($product['recurring']) { ?><br/> -
                        <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                        <?php } ?></td>
                    <td class="text-right">x <?php echo $product['quantity']; ?></td>
                    <td class="text-right"><?php echo $product['total']; ?></td>
                    <td class="text-center">
                        <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>">x</button>
                    </td>
                </tr>
                <?php } ?><?php foreach ($vouchers as $voucher) { ?>
                <tr>
                    <td class="text-center"></td>
                    <td class="text-left"><?php echo $voucher['description']; ?></td>
                    <td class="text-right">x&nbsp;1</td>
                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                    <td class="text-center text-danger">
                        <button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>">x</button>
                    </td>
                </tr>
                <?php } ?>
            </table>
            <div>
                <table class="table table-bordered">
                    <?php foreach ($totals as $total) { ?>
                    <tr>
                        <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                        <td class="text-right"><?php echo $total['text']; ?></td>
                    </tr>
                    <?php } ?>
                </table>
                <p class="text-right" style="margin-top: 10px;">
                    <a href="<?php echo $cart; ?>" class="btn btn-yellow"><?php echo $text_cart; ?></a>&nbsp;&nbsp;&nbsp;
                    <a href="<?php echo $checkout; ?>" class="btn btn-yellow"><?php echo $text_checkout; ?></a>
                </p>
            </div>
            <?php } else { ?><p class="text-center"><?php echo $text_empty; ?></p><?php } ?>
        </li>
    </ul>
</div>
