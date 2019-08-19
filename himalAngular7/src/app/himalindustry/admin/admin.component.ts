import { Component, OnInit, ViewChild } from '@angular/core';
import { Register } from 'src/app/models/register.model';
import { AgarbattiService } from 'src/app/services/setup/agarbatti.service';
import { Login } from 'src/app/models/login.model';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';



@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {

  constructor(private agarbatiService:AgarbattiService,private _router:Router, private toastr: ToastrService) { 

}



isLogin:boolean=true;
register:Register=new Register;
login:Login=new Login;
dataRefresher: any;

  ngOnInit() {
    this.openRegister();
    this.openLogin();
  }

  openRegister()
  {
    this.isLogin=false;
  }

  openLogin()
  {
    this.isLogin=true;
  }
  @ViewChild('f') form: any;
  @ViewChild('f1') loginForm: any;

  onSubmit() 
  {  
    if (this.form.valid) {
      if(this.register.confirmpassword!=this.register.pASSWORD)
      {
        this.toastr.success('password not matched!');
        //alert("password not matched!");
        return false;
      }
      this.agarbatiService.saveRegister(this.register).subscribe((res:any) => {
        //debugger;
         if(res)
         {
          this.toastr.success('Registered Successfully');
           //alert("success");
           return;
         }
         this.toastr.success('Failed To Register');
         //alert("fail");
         return;
         });
    }
    else{
      this.toastr.success('not valid form');
    //alert("not valid form");
    return false;
    }
    this.openRegister();
  }
  onLoginSubmit()
  {  if (this.loginForm.valid) {
  
    this.agarbatiService.Login(this.login).subscribe((res:any) => {
      //debugger;
       if(res)
       {
        this.toastr.success('Sucessfully Logged!');
        localStorage.setItem("Authorized", '1');
         this._router.navigate(['/dashboard']);
        return true;
       }
       this.toastr.success('Failed to login!');
       //alert("fail");
       return;
       });
  }
  else{
    this.toastr.success('not valid form');
  //alert("not valid form");
  return false;
  }
  this.openLogin();
  }

  refreshData(){
    this.dataRefresher =
      setInterval(() => {
        this.openLogin();
        this.openRegister();
        //Passing the false flag would prevent page reset to 1 and hinder user interaction
      }, 10000);  
  }


 
}
