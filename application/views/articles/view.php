
<div class="row">
    <h2><?= $title; ?></h2>
    <ol class="breadcrumb">
        <li><a href="<?= base_url(); ?>">Accueil</a></li>
        <li><a href="#"><?= $article['titre'] ?></a></li>
        <li class="active"><?= $title; ?></li>
    </ol>
    <span class="label label-default"><?= $article['created_at'] ?></span>
    <div class="text-justify text-capitalize">
        <?= $article['text'] ?>
    </div>
</div>