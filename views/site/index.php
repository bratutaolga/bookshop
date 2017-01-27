<?php

use yii\grid\GridView;

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">



    <div class="body-content">

        <div class="row">
            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'columns' => [
                    // ['class' => 'yii\grid\SerialColumn'],

                    //'id',
                    'title:ntext',
                    'description:ntext',
                    'price',
                    'author.last_name',
                    'category.title',


                ],
            ]); ?>
        </div>

    </div>
</div>
