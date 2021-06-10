<?php include __DIR__ . '/../header.php'; ?>
<?php foreach ($articles as $article): ?>
    <h2><a href="/articles/<?= $article->getId() ?>"><?= $article->getName() ?></a></h2>
    <p><?= $article->getText() ?></p>
    <hr>
<?php endforeach; ?>

<div style="text-align: center">
    <?php if ($previousPageLink !== null): ?>
        <a href="<?= $previousPageLink ?>">&lt; Туда</a>
    <?php else: ?>
        <span style="color: grey">&lt; Туда</span>
    <?php endif; ?>
    &nbsp;&nbsp;&nbsp;
    <?php if ($nextPageLink !== null): ?>
        <a href="<?= $nextPageLink ?>">Сюда &gt;</a>
    <?php else: ?>
        <span style="color: grey">Сюда &gt;</span>
    <?php endif; ?>
</div>

<?php include __DIR__ . '/../footer.php'; ?>