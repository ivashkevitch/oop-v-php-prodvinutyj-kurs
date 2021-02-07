<?php include __DIR__ . '/../header.php'; ?>
<?php foreach ($articles as $article): ?>
    <h2><a href="/articles/<?= $article->getId() ?>"><?= $article->getName() ?></a></h2>
    <p><?= $article->getText() ?></p>
    <hr>
<?php endforeach; ?>

<div style="text-align: center">
<?php for ($pageNum = 1; $pageNum <= $pagesCount; $pageNum++): ?>
    <?php if ($currentPageNum === $pageNum): ?>
        <b><?= $pageNum ?></b>
    <?php else: ?>
        <a href="/<?= $pageNum === 1 ? '' : $pageNum ?>"><?= $pageNum ?></a>
    <?php endif; ?>
<?php endfor; ?>
</div>

<?php include __DIR__ . '/../footer.php'; ?>