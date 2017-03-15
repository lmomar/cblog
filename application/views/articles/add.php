<div class="row">
    <div class="col-lg-6 col-md-6">
        <?php echo validation_errors('<div class="alert alert-danger">','</div>'); ?>
        <section class="panel panel-info">
            <header class="panel-heading"><h2 class="panel-title"><?= $title; ?></h2></header>
            <div class="panel-body">
                <?php echo form_open('news/add', array('class' => 'form-horizontal')); ?>
                <div class="form-group">
                    <label for="title">Title :</label>
                    <input type="text" name="title" class="form-control">
                </div>
                <div class="form-group">
                    <label>Categorie</label>
                    <select class="form-control" name="category">
                        <option>-----</option>
                        <?php foreach ($categories as $c): ?>
                        <option value="<?= $c['id'] ?>"><?= $c['titre'] ?></option>
                        <?php endforeach;?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="text">Text :</label>
                    <textarea name="text" class="form-control"></textarea>
                </div>

                <input type="submit" value="Ajouter" class="btn btn-primary">

                <?php echo form_close(); ?>
            </div>
        </section>
    </div>
</div>



