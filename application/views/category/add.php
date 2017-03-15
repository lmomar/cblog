<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6">
        <?php echo validation_errors('<div class="alert alert-warning">','</div>'); ?>
        <section class="panel panel-info">
            <header class="panel-heading"><h2 class="panel-title"><?= $title; ?></h2></header>
            <div class="panel-body">
                <?php echo form_open('category/add', array('class' => 'form-horizontal')) ?>
                <div class="form-group">
                    <label>Titre</label>
                    <input type="text" class="form-control" name="titre">
                </div>
                <input type="submit" value="Enregistrer" class="btn btn-primary">
                <?php echo form_close(); ?>
            </div>
        </section>
    </div>
</div>