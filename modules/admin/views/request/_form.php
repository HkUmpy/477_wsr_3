<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Request */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="request-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) ?>

    <?= $form->field($model, 'status')->dropDownList(\app\modules\admin\models\Request::ListStatus())?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'imageFile1')->fileInput() ?>
    <?= $form->field($model, 'imageFile2')->fileInput() ?>

    <?= $form->field($model, 'before_img')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'after_img')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'why_not')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'category_id')->dropDownList(\yii\helpers\ArrayHelper::map(\app\modules\admin\models\Category::find()->all(),'id','name')) ?>



    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
