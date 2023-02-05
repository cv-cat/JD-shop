function falseIt() {
    return false;
}
function changeWrongInfo1(msg) {
    document.getElementById("error12").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
function changeWrongInfo2(msg) {
    document.getElementById("error22").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
function changeWrongInfo3(msg) {
    document.getElementById("error24").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
function changeWrongInfo4(msg) {
    document.getElementById("error26").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
function changeWrongInfo5(msg) {
    document.getElementById("error28").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
function changeWrongInfo6(msg) {
    document.getElementById("error210").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
function changeWrongInfo11(msg) {
    document.getElementById("error29").innerHTML='<span class="error"><i class="i-error"></i>'+msg+"</span>";
}
var temp = 1;
window.callback = function (res) {
    // 添加自己相应配置即可
    console.log(res)
    if (res.ret === 0) {
        document.getElementById("txyanzheng").style.display = "none";
        document.getElementById("yanzhengma").style.display = "block";
        temp = 0;
    }
}
var phone = document.getElementById("form-phone");
var form_account = document.getElementById("form-account");
var form_pwd = document.getElementById("form-pwd");
var form_equalTopwd = document.getElementById("form-equalTopwd");
var form_email = document.getElementById("form-email");
var is = document.getElementsByClassName("i-status");
function checkPhone() {
    if (!(/^1[3456789]\d{9}$/.test(phone.value))) {
        return false;
    }
    return true;
}
function checkName() {
    if (!(/^[\u4e00-\u9fa5_a-zA-Z0-9_]{4,10}$/.test(form_account.value))) {
        return false;
    }
    return true;
}
function checkPwd() {
    if (!(/^[_a-zA-Z0-9]{8,20}$/.test(form_pwd.value))) {
        return false;
    }
    return true;
}
function checkRPwd() {
    if (form_equalTopwd.value != form_pwd.value) {
        return false;
    }
    return true;

}
function checkEmail() {
    if (!(/^[0-9a-z_]+@(([0-9a-z]+)[.]){1,2}[a-z]{2,3}$/.test(form_email.value))) {
        return false;
    }
    return true;
}
var err11 = document.getElementById("error11");
var err12 = document.getElementById("error12");
var err13 = document.getElementById("error13");
if(err11!==null){
    err12.style.display = "none";
    err13.style.display = "none";
    is[0].style.display = "none";
    function checkExictPhone() {
        if(checkPhone()){
            let temp=0;
            $.ajax({
                url:"./checkphone.do",
                data:{
                    'phone':phone.value
                },
                method:'post',
                async:false,
                success:function (msg) {
                    console.log(msg);
                    if(msg === 'true'){
                        changeWrongInfo1("手机号已经存在")
                        temp=1;
                    }
                },
                fail:function () {

                },
                error:function () {

                }
            });
            if(temp===0){
                return false;
            }else{
                return true;
            }
        }
        return false;
    }
    document.getElementById("form-phone").addEventListener("input", function () {
        if (checkExictPhone()) {
            /* err11.style.display = "block"; */
            console.log("修改error12!");
            err11.style.display = "none";
            err12.style.display = "block";
            is[0].style.display = "none";
        } else if(checkPhone()){
            console.log("成功");
            err11.style.display = "none";
            err12.style.display = "none";
            is[0].style.display = "block";
        } else {
            console.log("格式有误");
            changeWrongInfo1("格式出现错误！")
            err12.style.display = "block";
            err11.style.display = "none";
            is[0].style.display = "none";
        }
    })
    document.getElementById("form-phone1").addEventListener("click", function () {
        document.getElementById("form-phone1").style.display = "none";
        document.getElementById("form-phone").focus();
    })
    document.getElementById("form-phone").addEventListener("blur", function () {
        if (document.getElementById("form-phone").value === "") {
            document.getElementById("form-phone1").style.display = "block";
            err11.style.display = "block";
            err12.style.display = "none";
        }
    })
    /* 第一页表单提交 */
    document.getElementById("step1-next").addEventListener("click", function () {
        if (!checkExictPhone() && temp === 0) {
            var form1 = document.getElementById('step1');
            form1.submit();
        }
    })
    /* 第一页表单提交 */
}



var err21 = document.getElementById("error21");
var err22 = document.getElementById("error22");
var err23 = document.getElementById("error23");
var err24 = document.getElementById("error24");
var err25 = document.getElementById("error25");
var err26 = document.getElementById("error26");
var err27 = document.getElementById("error27");
var err28 = document.getElementById("error28");
var err29 = document.getElementById("error29");
var err210 = document.getElementById("error210");
if(err21!==null){
    err21.style.display = "none";
    err22.style.display = "none";
    err23.style.display = "none";
    err24.style.display = "none";
    err25.style.display = "none";
    err26.style.display = "none";
    err27.style.display = "none";
    err28.style.display = "none";
    err29.style.display = "none";
    err210.style.display = "none";
    /* 2222222222222222222222222222222222222222222222222222 */
    is[0].style.display = "none";
    // 验证重复用户名
    function checkExictName() {
        if(checkName()){
            let temp=0;
            $.ajax({
                url:"./checkname.do",
                data:{
                    'name':form_account.value
                },
                method:'post',
                async:false,
                success:function (msg) {
                    console.log(msg);
                    if(msg === 'true'){
                        temp=1;
                    }
                },
                fail:function () {

                },
                error:function () {

                }
            });
            return temp !== 0;
        }
        return false;
    }
    document.getElementById("form-account").addEventListener("input", function () {
        if (checkExictName()) {
            /* err11.style.display = "block"; */
            console.log("修改error22!");
            changeWrongInfo2("用户名已经存在！")
            err21.style.display = "none";
            err22.style.display = "block";
            is[0].style.display = "none";
        } else if(checkName()){
            console.log("成功");
            err21.style.display = "none";
            err22.style.display = "none";
            is[0].style.display = "block";
        } else {
            console.log("格式有误");
            changeWrongInfo2("用户名格式出现错误！")
            err22.style.display = "block";
            err21.style.display = "none";
            is[0].style.display = "none";
        }
    })
    form_account.addEventListener("focus", function () {
        err21.style.display = "block";
        err22.style.display = "none";
    })
    form_account.addEventListener("blur", function () {
        if (form_account.value == "") {
            err22.style.display = "none";
            err21.style.display = "none";
        }
    })
    /* 2222222222222222222222222222222222222222222222222222 */
    is[1].style.display = "none";
    form_pwd.addEventListener("focus", function () {
        err23.style.display = "block";
        err24.style.display = "none";
    })
    form_pwd.addEventListener("input", function () {
        if (checkPwd()) {
            /* err23.style.display = "block"; */
            err24.style.display = "none";
            is[1].style.display = "block";
        } else {
            err24.style.display = "block";
            err23.style.display = "none";
            is[1].style.display = "none";
        }
    })
    form_pwd.addEventListener("blur", function () {
        if (form_pwd.value == "") {
            err24.style.display = "none";
            err23.style.display = "none";
        }
    })
    /* 2222222222222222222222222222222222222222222222222222 */

    is[2].style.display = "none";
    form_equalTopwd.addEventListener("focus", function () {
        err25.style.display = "block";
        err26.style.display = "none";
    })
    form_equalTopwd.addEventListener("input", function () {
        if (checkRPwd()) {
            /* err25.style.display = "block"; */
            err26.style.display = "none";
            is[2].style.display = "block";
        } else {
            err26.style.display = "block";
            err25.style.display = "none";
            is[2].style.display = "none";
        }
    })
    form_equalTopwd.addEventListener("blur", function () {
        if (form_equalTopwd.value == "") {
            err26.style.display = "none";
            err25.style.display = "none";
        }
    })
    /* 2222222222222222222222222222222222222222222222222222 */

    is[3].style.display = "none";
    function checkExictEmail() {
        if(checkEmail()){
            let temp=0;
            $.ajax({
                url:"./checkemail.do",
                data:{
                    'email':form_email.value
                },
                method:'post',
                async:false,
                success:function (msg) {
                    console.log(msg);
                    if(msg === 'true'){
                        temp=1;
                    }
                },
                fail:function () {

                },
                error:function () {

                }
            });
            if(temp===0){
                return false;
            }else{
                return true;
            }
        }
        return false;
    }
    document.getElementById("form-email").addEventListener("input", function () {
        if (checkExictEmail()) {
            /* err11.style.display = "block"; */
            console.log("邮箱已经存在！");
            changeWrongInfo5("邮箱已经存在！")
            err27.style.display = "none";
            err28.style.display = "block";
            is[3].style.display = "none";
        } else if(checkEmail()){
            console.log("成功");
            err27.style.display = "none";
            err28.style.display = "none";
            is[3].style.display = "block";
        } else {
            console.log("邮箱格式有误");
            changeWrongInfo5("邮箱格式出现错误！")
            err28.style.display = "block";
            err27.style.display = "none";
            is[3].style.display = "none";
        }
    })
    form_email.addEventListener("focus", function () {
        err27.style.display = "block";
        err28.style.display = "none";
    })
    form_email.addEventListener("blur", function () {
        if (form_email.value == "") {
            err28.style.display = "none";
            err27.style.display = "none";
        }
    })
    var countdown = 60;
    function settime(val) {
        if (countdown == 0) {
            val.removeAttribute("disabled");
            val.innerHTML = "免费获取验证码";
            countdown = 60;
        } else {
            val.setAttribute("disabled", true);
            val.innerHTML = "重新发送(" + countdown + ")";
            countdown--;
            setTimeout(function () {
                settime(val)
            }, 1000)
        }
    }
    function doSubmit(val) {
        if(!checkExictEmail()&&checkEmail()){
            settime(val);
            changeWrongInfo11("正在发送邮件")
            err29.style.display="block";
            err210.style.display="none";
            $.ajax({
                url:"./sendcode.do",
                method:'POST',
                data:{
                    "email":document.getElementById("form-email").value
                },
                success:function (msg) {
                    if(msg === 'success'){
                        changeWrongInfo11("邮件发送成功！");
                        err29.style.display="block";
                        err210.style.display="none";
                        console.log("邮件发送成功！")
                    }else if(msg === 'fail'){
                        console.log("邮件发送失败！")
                    }
                }
            })
        }
        // ==
        else {
            changeWrongInfo6("请先输入正确的邮箱！")
            err29.style.display="none";
            err210.style.display="block";
            console.log("不能点此按钮")
        }
    }

    // 验证重复邮箱
    // 验证邮件=====================================================
    function checkcode() {
            let temp=0;
            $.ajax({
                url:"./checkcode.do",
                data:{
                    'mailCode':document.getElementById("mailCode").value
                },
                method:'post',
                async:false,
                success:function (msg) {
                    console.log(msg);
                    if(msg === 'success'){
                        console.log("验证码正确")
                        temp=1;
                    }else if(msg === 'success1'){
                        console.log("直接点击了邮件进入")
                        temp=1;
                    }else{
                        console.log("验证码错误")
                    }
                },
                fail:function () {

                },
                error:function () {

                }
            });
            if(temp===0){
                return false;
            }else{
                return true;
            }
        return false;
    }
    is[4].style.display = "none";
    document.getElementById("mailCode").addEventListener("input", function () {
        if (checkcode()) {
            console.log("验证码正确");
            err29.style.display = "none";
            err210.style.display = "none";
            is[4].style.display = "block";
        } else {
            console.log("验证码错误");
            changeWrongInfo6("验证码错误！")
            err29.style.display = "none";
            err210.style.display = "block";
            is[4].style.display = "none";
        }
    })
    function checkstep2() {
        if(!checkExictName()&&checkPwd()&&checkRPwd()&&!checkExictEmail()&&checkcode()){
            return true;
        }
        return false;
    }

    /* 第2页表单提交 */
    document.getElementById("form-register").addEventListener("click", function () {
        if (checkstep2()) {
            document.getElementById('step2').action="registerJD.do?choice=2"
            document.getElementById('step2').submit();
            console.log("进去了")
        }else{
            console.log("去不了")
        }
    })
    /* 第2页表单提交 */
    /* 第2页表单提交 */
// document.getElementById("form-register").addEventListener("click", function () {
//     if (checkName()) {
//         var form2 = document.getElementById('step2');
//         form2.submit();
//     }
// })
    /* 第2页表单提交 */
}
