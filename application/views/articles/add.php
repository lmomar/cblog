<?= validation_errors(); ?>
<?= form_open('news/add',array('class' => 'form-horizontal')); ?> 
    <div class="form-group">
        <label>Titre</label>
        <input type="text" name="title" class="form-control">
    </div>
    <div class="form-group">
        <label>Texte</label>
        <textarea name="text" class="form-control" rows="4"></textarea>
    </div>
    <input type="submit" value="Ajouter" class="btn btn-primary">
</form>
<?php form_close(); ?>