<div class="row">
    <h2><?= $title; ?></h2>
    <?php if ($this->session->has_userdata('message')): ?>
    <div class="alert alert-success"><strong><?= $this->session->flashdata('message'); ?></strong></div>
    <?php endif ?>
    <?php if (!empty($articles) && is_array($articles)): ?>
        <?php foreach ($articles as $a): ?>
            <div class="row">
                <h3><?= $a['title']; ?></h3>
                <div class="text-capitalize">
                    <?= $a['text']; ?>
                </div>
                <a href="articles/<?= $a['slug']; ?>">Lire</a>
            </div>
        <?php endforeach; ?>
    <?php endif ?>
</div>