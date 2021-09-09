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
    <div class="col-lg-12">
      <?php echo $column_left; ?>
      <div class="content">
        <?php echo $content_top; ?>
        <h1><?php echo $heading_title; ?></h1>
        <p><?php echo $text_error; ?></p>
        <a href="<?php echo $continue; ?>" class="btn btn-yellow"><?php echo $button_continue; ?></a>
        <?php echo $content_bottom; ?>
      </div>
      <?php echo $column_right; ?>
    </div>
  </div>
</div><?php echo $footer; ?>