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
    <div class="row"><?php echo $column_left; ?><?php if ($column_left && $column_right) { ?><?php $class = 'col-sm-6'; ?><?php } elseif ($column_left || $column_right) { ?><?php $class = 'col-sm-9'; ?><?php } else { ?><?php $class = 'col-sm-12'; ?><?php } ?>
        <div id="content" class="content <?php echo $class; ?>"><?php echo $content_top; ?>
            <div class="blog">
                <h1><?php echo $heading_title; ?></h1><?php if ($blog_category_description) { ?>
                <div class="main_description">
                    <?php echo $blog_category_description; ?>
                </div>
                <?php } ?><?php if($blogs){ ?>
                <div class="row">
                    <?php foreach ($blogs as $blog) { ?>
                    <div class="col-lg-3">
                        <div class="blog-item"><?php $blog_img = $blog['image']; ?>
                            <a href="<?php echo $blog['href']; ?>" class="blog-image" style="background-image: url('<?php echo $blog_img; ?>')"></a>
                            <div class="blog-date"><?php echo $blog['date_added_full']; ?></div>
                            <h4>
                                <a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a>
                            </h4>
                            <p><?php echo $blog['description']; ?></p>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <div class="row">
                    <div class="col-sm-6 text-left"><?php echo $results; ?></div>
                    <div class="col-sm-6 text-right"><?php echo $pagination; ?></div>
                </div>
                <?php }else{ ?><?php echo $text_no_results; ?><?php } ?>
            </div>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div><?php echo $footer; ?>