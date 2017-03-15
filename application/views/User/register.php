<h2>
    <?php
    echo $this->session->flashdata['message'];
    ?>
</h2>
<div class="alert alert-danger">
    <?= validation_errors(); ?>
</div>
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6">
        <section class="panel panel-info">
            <header class="panel-heading"><h2 class="panel-title"><?= $title; ?></h2></header>
            <div class="panel-body">
                <?php echo form_open("user/register", array('class' => 'form-horizontal')); ?>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control">
                </div>



                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control">
                </div>

                <div class="form-group">
                    <label>Confirmer</label>
                    <input type="password" name="password_confirm" class="form-control">
                </div>
                <div class="form-group">
                    <label>Adresse</label>
                    <input type="text" class="form-control" name="adresse">
                </div>
                <div class="checkbox form-group">
                    <label>
                        <input type="checkbox" name="condition" >
                        J'accepete les reglements....
                    </label>
                </div>

                <input type="submit" class="btn btn-primary" value="S'enregistrer">

                <?php echo form_close(); ?>
            </div>
        </section>
    </div>
</div>
