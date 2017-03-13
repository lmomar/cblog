<div class="row">
    <h2><?= $title; ?></h2>
    
    <?php if (!empty($articles) && is_array($articles)): ?>
        <?php foreach ($articles as $a): ?>
            <div class="row">
                <h3><?= $a['title']; ?></h3>
                <div class="text-capitalize">
                    <?= $a['text']; ?>
                </div>
                <a href="articles/<?= $a['slug'];?>">Lire</a>
            </div>
        <?php endforeach; ?>
    <?php endif ?>
</div>