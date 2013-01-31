function validateForm()
{
var usr_nm=document.forms["frm_login"]["usr_nm"].value;
var pwd=document.forms["frm_login"]["pwd_nm"].value;
if (usr_nm==null || usr_nm==""  )
  {
     if(pwd==null || pwd=="")
       {
          alert("User Nmae and Password should not be blank");
          return false;
       }
     else
       {
          alert("User Nmae should not be blank");
          return false;
       } 
  }
else if(pwd==null || pwd=="")
  {
      alert("Password should not be blank");
      return false;
  }
  
}
