<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\admin\models\RequestSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Requests';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="request-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Request', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'category_id',
                'value' => 'category.name',
                'filter' => \yii\helpers\ArrayHelper::map(\app\modules\admin\models\Category::find()->all(), 'id', 'name'),
            ],
            //'id',
            'status',
            'name',
            
            [
                'attribute' => 'before_img',
                'value' => function($model){
                    return Html::img($model->before_img,['width'=>100]);
                },
                'format'=>'html'
            ],
            [
                'attribute' => 'after_img',
                'value' => function($model){
                    return Html::img($model->after_img,['width'=>100]);
                },
                'format'=>'html'
            ],
            
            'why_not:ntext',
            //'category_id',
            //'created_at',
            //'created_by',
            //'updated_by',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
