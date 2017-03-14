<html>
    <head>
        <title><?= $title ?></title>
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap.css">
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?= base_url(); ?>">Ci-Blog</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Accueil <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact</a></li>

                    </ul>
                    <?php if ($this->ion_auth->logged_in()): ?>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="<?= ''
                        . base_url() . 'news/add' ?>">Nouvel article</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">

                                    <?php
                                    $user = $this->ion_auth->user()->row();
                                    echo $user->email;
                                    ?>

                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Profile</a></li>
                                    <li><a href="<?= base_url() . 'user/logout' ?>">Logout</a></li>

                                </ul>

                            </li>
                        </ul>
                    <?php endif ?>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container">

