<?php common\components\View::regCss('registered.css') ?>
<?php common\components\View::regCss('mobile.css') ?>
<?php common\components\View::regCss('login.css') ?>
<style>
    body{
        background:#fff;
    }
    .form-listbox label {
      text-align: right;
      font-size: 15px;
      color: #444;
      margin-right: 10px;
    }
    .inp-font {
      position: relative;
      width: 85%;
      color: #4D4D4D;
      height: 34px;
      padding-left: 2%;
      font-size: 14px;
      border: solid #ccc 1px;
      z-index: 0;
      background: none;
      border-radius: 5px;
    }
    .tijiao {
      width: 89%;
      height: 40px;
      line-height: 40px;
      background: #A80000;
      border: 0;
      outline: 0;
    }
    .button{
      border:0;
    }
    .pull-right a {
      font-size: 16px;
      color: #444;
      text-decoration: underline;
    }
    .forget-btn {
      color: #cfad34!important;
      font-size: 16px!important;
      display: inline-block;
    }
    body{
        padding-top: 120px;
    }
</style>
<?php $form = self::beginForm(['showLabel' => false]) ?>
 <!--   <div class="container">
        <div class="row" style="margin-bottom:25px;">
             <div class="col-xs-12">
                <div class="logo_img">
                    <img src="<?= config('web_logo') ?>" alt="<?= config('web_name') ?>">
                </div>
            </div> 

        </div>
    </div> -->
     <div class="wrap-content">
        
        <div class="form-listbox tan-zin8 clearfix">
          <label class="fl">手机号码</label>
          <div class="input-box">
            <div class="tel-po inp-font-tel-1">
              <input type="hidden" id="mobilePhone_areaCodes" value="" name="personalInformation.mobilePhone_areaCodes">
               <span class=""><?= $form->field($model, 'username')->textInput(['placeholder' => '请输入您的手机号','class' => 'inp-font fl']) ?></span>
            </div>
          </div>
        </div>
        <div class="form-listbox tan-zin8 clearfix">
          <label class="fl">密码</label>
          <div class="input-box">
            <div class="tel-po inp-font-tel-1">
              <input type="hidden" id="mobilePhone_areaCodes" value="" name="personalInformation.mobilePhone_areaCodes">
               <span class=""><?= $form->field($model, 'password')->passwordInput(['placeholder' => '请输入您的密码','class' => 'inp-font fl']) ?></span>
            </div>
          </div>
        </div>
        <div style="text-align: center" class="form-listbox tan-zin8 clearfix">
          <span ><a  class="forget-btn" href="<?= url('site/forget') ?>">忘记密码？</a></span>
        </div>

        <div class="button clearfix">
          <div class="pull-right">
            
          </div>
           <a href="javascript:;" class="tijiao" >登录</a>
        </div>  
         <div style="text-align: center" class="form-listbox tan-zin8 clearfix">
          <span ><a href="<?= url(['site/register']) ?>">注册新用户</a></span> 
          <!-- <span ><a href="<?= url(['site/register']) ?>">注册新用户</a></span>  -->
        </div>
     </div>
  
        <?php self::endForm() ?>
<script>
$(function () {
    $(".tijiao").click(function () {
        $("form").ajaxSubmit($.config('ajaxSubmit', {
            success: function (msg) {
                if (!msg.state) {
                    return $.alert(msg.info);
                } else {
                    window.location.href = msg.info;
                }
            }
        }));
        return false;
    });
});
</script>
