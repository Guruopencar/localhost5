<section id="blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="block-head">
                    <h2>Полезные<br>статьи</h2>
                    <p>Лучшие статьи для <br>лучших веломанов.</p>
                    <a href="/blog/" class="btn btn-yellow">Еще статьи</a>
                </div>
            </div>
            <?php if(!empty($posts)){ ?>
            <?php foreach ($posts as $blog) { ?>
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
            <?php } ?>
        </div>
    </div>
</section>
