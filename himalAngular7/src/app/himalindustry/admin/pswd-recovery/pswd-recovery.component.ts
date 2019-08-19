import { Component, OnInit } from '@angular/core';
import { Login } from 'src/app/models/login.model';
import { AgarbattiService } from 'src/app/services/setup/agarbatti.service';
import { Router, ActivatedRoute } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-pswd-recovery',
  templateUrl: './pswd-recovery.component.html',
  styleUrls: ['./pswd-recovery.component.css']
})
export class PswdRecoveryComponent implements OnInit {
  loginModel:Login = new Login();
  UserName:string='';
  constructor(private agarbatiService:AgarbattiService,private _router:Router, private toastr: ToastrService, private _avRoute: ActivatedRoute) { 

    if (this._avRoute.snapshot.params["UserName"]) {
      this.UserName = this._avRoute.snapshot.params["UserName"];
    }
  }

  //email:Email=new Email;
  dataRefresher: any;

  ngOnInit() {
    
    if(this.UserName!='' || this.UserName!=null)
    {
      debugger;
      let i:number=0;
    }
  }

  submitRecovery()
  {
    //alert('service');
    if (this.loginModel) {
  
      this.agarbatiService.PasswordRecovery(this.loginModel).subscribe((res:any) => {
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
    //this.submitRecovery();
  }

}
