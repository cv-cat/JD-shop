var phone = document.getElementById("phone");
var answers = document.getElementById("answers");
var names = document.getElementById("names");
var satisfieds=document.getElementsByClassName("radio")
function checkPhone() {
    if (!(/^1[3456789]\d{9}$/.test(phone.value))) {
        console.log("电话错")
        return false;
    }
    console.log("电话对")
    return true;
}
function checkidea() {
    if(answers.value.length<64){
        return false;
    }
    return true;
}
function checkname() {
    if(names.value.length<2){
        console.log("name错")
        return false;
    }
    console.log("name对")

    return true;
}
console.log("satis的长度为")
console.log(satisfieds.length)
function checksatisfied() {
    for(let i=0;i<satisfieds.length;i++){
        if(satisfieds[i].checked){
            console.log("satisfied 对")
            return true;
        }
    }
    console.log("satisfied错")
    return false;
}
function checkthisstep() {
    if(checkidea()&&checkPhone()&&checksatisfied()&&checkname()){
        return true;
    }
    return false;
}

/* 第2页表单提交 */
document.getElementById("movesubmitbtn1").addEventListener("click", function () {
    if (checkthisstep() ) {
        document.getElementById('limesurvey').action="servey.do"
        document.getElementById('limesurvey').submit();
        console.log("进去了")
    }else{
        console.log("去不了")
    }
})