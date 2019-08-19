import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ResetPSWD } from 'src/app/models/setup/ResetPSWD';
import { AgarbattiService } from 'src/app/services/setup/agarbatti.service';
import { Register } from 'src/app/models/register.model';
import { Login } from 'src/app/models/login.model';
import { NgForm } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Router } from '@angular/router';
//import { ToastrService } from 'ngx-toastr';
//import { NewType } from './NewType';


@Component({
  selector: 'app-confirm-pswd',
  templateUrl: './confirm-pswd.component.html',
  styleUrls: ['./confirm-pswd.component.css']
})
export class ConfirmPswdComponent implements OnInit {
  //UserName: any;
  UserName:string='';
  //toastr: any;
  //_router: any;
 
  constructor(private _avRoute: ActivatedRoute,private _agarbatiService:AgarbattiService,private _router:Router, private toastr: ToastrService) { 
    // alert(1);
    // debugger;
    // var i=this._avRoute.snapshot.params["UserName"];
    // alert(i);
    if (this._avRoute.snapshot.params["UserName"]) {
      this.UserName = this._avRoute.snapshot.params["UserName"];
    //alert(this.UserName);
    }

   
    
    
    
  }
  
 //Register models= new Register;
 reg:Register = new Register();
     ResetPassword(formValue:NgForm)
     {
      debugger;
      formValue.value.UserName=this.UserName;      
      this._agarbatiService.ResetPassword(formValue.value).subscribe((res:any) => {
      
        if(res)
         {
          this.toastr.success('Sucessfully Reset Password!');
          localStorage.setItem("Authorized", '1');
           this._router.navigate(['/admin']);
          return true;
         }
         this.toastr.success('Failed to reset password!');
         //alert("fail");
         return;

         
      });    

     }
     

     //dataRefresher: any;

  ngOnInit() {


  }

}
