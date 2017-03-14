<div class="row">
    <h3><?php echo $this->session->flashdata('message'); ?></h3>
    <div class="col-md-6 col-lg-6">
        <section class="panel panel-primary col-md-offset-2">
            <header class="panel-heading"><h2 class="panel-title"><?= $title; ?></h2></header>
            <div class="panel-body">
                <?php echo form_open("user/login"); ?>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" name="email">
                </div>

                <div class="form-group">
                    <label>Mot de passe</label>
                    <input type="password" class="form-control" name="password">
                </div>

                <div class="form-group">
                    <label>
                        <input type="checkbox" name="remember" id="remember"> Se souvenir de moi   
                    </label>
                </div>
                <div class="col-md-8 col-lg-8">
                    <input type="submit" value="Connexion" class="btn btn-primary">
                    <a href="forgot_password" class="btn btn-warning pull-right">Mot de passe oublié</a>
                </div>

                <?php echo form_close(); ?>
            </div>
        </section>
    </div>
</div>