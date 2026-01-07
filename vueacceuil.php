<?php $titre = 'Mon Blog'; ?>
<?php ob_start(); ?>

<?php foreach ($billets as $billet): ?>
    <article>
        <header>
            <h1 class="titreBillet"><?= $billet['titre'] ?></h1>
            <time><?= $billet['date'] ?></time>
        </header>
        <p><?= $billet['contenu'] ?></p>

        <section>
            <h3>Commentaires</h3>
            <?php foreach ($commentairesParBillet[$billet['id']] as $com): ?>
                <p><strong><?= htmlspecialchars($com['auteur']) ?> :</strong> <?= htmlspecialchars($com['contenu']) ?></p>
            <?php endforeach; ?>
        </section>
    </article>
    <hr />
<?php endforeach; ?>

<?php $contenu = ob_get_clean(); ?>
<?php require 'gabarit.php'; ?>