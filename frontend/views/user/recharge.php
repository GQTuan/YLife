<?php $this->regCss('iconfont/iconfont.css') ?>
<?php $this->regCss('mine.css') ?>
<style type="text/css">
    html{
        height: 100vh;
        width: 100vw;
        background: #F4F4F4;
    }
    body{background:#fff;
	padding-bottom: 200px;
}
    .option-container .btn_re{
        width: calc((100% - 60px)/3);
        margin-left: 30px;
        height: 32px;
        line-height: 25px;
        margin-bottom: 16px;
    }
    .option-container .btn_re a{
        color: #fca237;
        font-size: 15px;
        border:1px solid #FDC27C;
    }
    .option-container .btn_re a.on{
        color: #fff;
        font-size: 15px;
        border:0;
        background: #FCA237;
    }
    .option-container .btn_re:nth-child(3n + 1){
        margin-left: 0;
    }
    .boxflex1.paystyle.checkImg3{
        border:0;
        background: #fff;
        /*height: 60px;
        line-height: 60px;*/
    }
    .recharge-btn{
        /*position: absolute;*/
        width: 80%;
        left:5%;
        /*margin-top: 30px;*/
        background: #FCA237;
        margin-bottom: 15px;
    }
    .custom{
        width: 50%;
    }
    .boxflex1.paystyle{
        padding:10px 15px;
        font-size: 16px;
    }
    .boxflex1.paystyle img{
        /*width: 22px!important;*/
    }
    .my-pay-container{
       /* padding: 15px;*/
        margin-bottom: 10px;
    }
    .my-pay-container>div{
        
        padding: 0!important;
        border:0!important;
        width: 65%;
        margin: 0 auto;
        margin-bottom: 8px;
        
    }
    .group_btn {
        /*margin-bottom: 8px;*/
    }
    .my-pay-container:after{
        content: "";
        display: block;
        clear: both;
    }
    .my-pay-container img{
        width: 100%!important;
    }
    .my-pay-container .img2{
        display: none;
    }
    .my-pay-container .active .img2{
        display: block;
    }
    .my-pay-container .active .img1{
        display: none;
    }
    .custom{
        width: 100%;
        height: 50px;
        border-radius: 4px;
        border:1px solid #D2D2D2;
        background: #EDEDED;
        font-size: 16px;
        color: #FDA237;
        padding: 0 23px;
        box-sizing: border-box;
    }
    .custom::-webkit-input-placeholder{
        font-size: 16px;
        color: #FDA237;
    }
    .recharge-btn-cotnainer{
        background: #fff;
        margin-top: 15px;
    }
    .checkImg3 .img2{
        border:1px solid #9F9F9F;
        border-radius: 4px;
    }
</style>
<div class="container " style="padding:0;">
    <div class="row pad_10 ">
        <div class="col-xs-3">
            <a href="<?= url(['user/index']) ?>" class="back-icon"><i class="iconfont" style="color:#333;"></i></a>
        </div>
        <div class="col-xs-6 back-head" style="color:#333;font-weight:bold;">充值</div>
        <div class="col-xs-3"></div>
    </div>
    <div class="row" style="padding: 0 15px;">
        <div class="col-xs-12 font_16 tx_text" style="font-size:13px;color: #828284;line-height: 30px;">
            可用资金余额:
            <span style="color:#fca237;font-size: 15px;margin-left: 15px;">￥<?= $user->blocked_account<0?$user->account:$user->account - $user->blocked_account ?></span>
        </div>
    </div>
        <!-- <p style="border:0;" class="selecthe">选择充值面额（元）</p> -->
    
    <?php $form = self::beginForm(['showLabel' => false, 'action' => url(['user/pay']), 'id' => 'payform']) ?>
    <div class="boxflex1 paystyle" style="padding: 10px 15px 0;border:0;">
        <div class="group_btn clearfloat option-container">
            <div class="btn_re">
                <a class="btn_money on"><?= rand(50, 60) ?></a>
            </div>
            <div class="btn_re btn_center">
                <a class="btn_money"><?= rand(500, 600) ?></a>
            </div>
            <div class="btn_re btn_center">
                <a class="btn_money"><?= rand(1000, 1500) ?></a>
            </div>
            <div class="btn_re">
                <a class="btn_money"><?= rand(3000, 3500) ?></a>
            </div>
            <div class="btn_re">
                <a class="btn_money"><?= rand(5000, 5500) ?></a>
            </div>
            <div class="btn_re">
                <a class="btn_money"><?= rand(10000, 10500) ?></a>
            </div>
            <input type="hidden" id="amount" name="amount" value="50">
            <input type="hidden" id="userId" name="userId" value="<?= get('user_id') ?>">
            <input type="hidden" id="mobile" name="mobile" value="">
            <!-- <input type="hidden" id="adminId" name="adminId" value="<?= get('admin_id') ?>"> -->
            <input type="hidden" id="type" name="type" value="7">
        </div>
    </div>
     <div class="boxflex1">
        <!-- <span style="font-size:12px;color:#828284;margin-right: 50px;">自定义金额</span> -->
        <input class="custom" style="border:0;font-size: 15px;color:#fca237;outline:0;margin:0 0 10px 0 ;" placeholder="自定义充值金额"/>
    </div> 
    <div class="payType">
        <!-- <div style="height:15px;background:#F4F4F4;"></div>
 -->
        <div class="my-pay-container">



             <div class="boxflex1 paystyle checkImg1"  data-type="11">
                <img class="img1" src="../images/weipay2.png">
                <img class="img2" src="../images/weipay1.png">
            </div>


      <!--      <div class="boxflex1 paystyle checkImg1"  data-type="12">
                <img class="img1" src="../images/alipay1.png">
                <img class="img2" src="../images/alipay2.png">
            </div>  -->


        <!--     <div class="boxflex1 paystyle checkImg1"  data-type="13">
                <img class="img1" src="../images/qqipay_default.png">
                <img class="img2" src="../images/qqipay_selected.png">
            </div> -->


             <div class="boxflex1 paystyle checkImg1"  data-type="2">
                <img class="img1" src="../images/weipay2.png">
                <img class="img2" src="../images/weipay1.png">
            </div>

<!--              <div class="boxflex1 paystyle checkImg1"  data-type="10">
                <img class="img1" src="../images/weipay2.png">
                <img class="img2" src="../images/weipay1.png">
            </div> -->

<!--            <div class="boxflex1 paystyle checkImg2"  data-type="3">
                <img class="img1" src="../images/alipay1.png">
                <img class="img2" src="../images/alipay2.png">
            </div>

            <div class="boxflex1 paystyle checkImg1"  data-type="1">
                <img class="img1" src="../images/weipay2.png">
                <img class="img2" src="../images/weipay1.png">
            </div> -->
<!--             <div class="boxflex1 paystyle checkImg1"  data-type="6">
                <img class="img1" src="../images/weipay2.png">
                <img class="img2" src="../images/weipay1.png">
            </div> -->
            <div class="boxflex1 paystyle checkImg2"  data-type="7">
                <img class="img1" src="../images/alipay1.png">
                <img class="img2" src="../images/alipay2.png">
            </div>

            <div class="boxflex1 paystyle checkImg3"  data-type="8">
                <img class="img1" src="../images/qqipay_default.png">
                <img class="img2" src="../images/qqipay_selected.png">
            </div> 
             <div class="boxflex1 paystyle checkImg3"  data-type="4">
                <img class="img1" src="../images/bankPay.png">
                <img class="img2" src="../images/bankPay1.png">
            </div>
            <div class="boxflex1 paystyle checkImg3"  data-type="13">
                <img class="img1" src="../images/bankPay2.png">
                <img class="img2" src="../images/bankPay3.png">
            </div> 


        </div>
        
        
<!--         <div class="boxflex1 paystyle checkImg3"  data-type="4">
            <img style="margin-right:15px;width: 20px;" src="/images/yinlain.png">
            <span>银联支付</span>
            <img src="/images/seleted.png" alt="" style="float:right;position: relative;" class="check-paythree checkPay" >
        </div>
        <p style="color:red;text-align: center">若您使用银行卡充值失败，请确认绑定银行卡信息是否正确</p> -->
    </div>
    <div class="recharge-btn-cotnainer">
         <div class="recharge-btn" id="payBtn">立即充值</div>
    </div>
   
    <?php self::endForm() ?>
    <div class="row">
        <!-- <div class="col-xs-12 text-center font_14 remain">跳转至微信安全支付网页，微信转账说明</div> -->
<!--         <div class="col-xs-12 text-center font_12">
            <font>注1：暂时只能使用借记卡充值</font>
            <br>
            <font>注2：为了管控资金风险，单日充值限额20000元</font>
        </div> -->
    </div>
</div>
<script>
$(function() {
    //判断时间是否在范围内
    //alert(123);
    // function isTiming(){
    //     var date = new Date();
    //     var year = date.getFullYear();
    //     var month = date.getMonth()+1;
    //     var day = date.getDate();
    //     var hour = date.getHours();
    //     var minute = date.getMinutes();
    //     var second = date.getSeconds();
    //     if( !( hour >= 4 && hour <= 7 ) ){
    //         return false;
    //     }
    //     return true;
    // }
    


    $('#type').val(11);
    $(".btn_money").click(function() {
        $(".on").removeClass("on");
        $(this).addClass("on");
        $('#amount').val($(this).html());
        $(".custom").val($(this).html());
    });

    $(".custom").blur(function(event) {
        var val = $(this).val();
        $('#amount').val(val);
    });
    $('#payBtn').on('click', function(){

        // if(isTiming()){
        //     $.alert('充值时间为早7点到次日凌晨4点');
        //     return;
        // }


        var data = {};
        data.amount = $('#amount').val();
        if(!data.amount || isNaN(data.amount) || data.amount <= 0){
            alert('金额输入不合法!');
            return false;
        }
        data.userId = $('#userId').val();
        data.type = $('#type').val();
        data.adminId = $('#adminId').val();
        if(data.type == 13) {
            var str = prompt("请输入银行预留手机号","");
            if(!str) {
                return false;
            }else {
                $("#mobile").val(str);
            }
        }
        if (data.type == 1) {
            $.post("<?= url(['user/ajaxWxurl']) ?>", {data:data.amount}, function(msg){
                if(msg.state) {
                    window.location.href = msg.info;
                } else {
                    $.alert(msg.info);
                }
            })
        } else {
            $("#payform").submit();
        }
    });
    $('.payType .paystyle').on('click', function(){
        var type = $(this).data('type');
        $('.payType .paystyle').each(function(){
            if (type == $(this).data('type')) {
                /*$(this).find('.checkPay').attr({"src":"/images/seleted.png"});*/
                $(this).addClass("active")
            } else {
                /*$(this).find('.checkPay').attr({"src":"/images/notseleted.png"});*/
                $(this).removeClass("active")
            }
        });
        $('#type').val(type);
    });
})

$(function(){
    $(".my-pay-container>div:nth-child(1)").trigger("click");
});
</script>
<script type="text/javascript">
    $(function(){
        var val = $(".btn_money.on").html();
        $("#amount").val(val);
    });
</script>
