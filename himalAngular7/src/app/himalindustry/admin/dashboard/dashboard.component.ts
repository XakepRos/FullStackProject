import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { __read } from 'tslib';


@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})

export class DashboardComponent implements OnInit {

  constructor(private _router:Router) { }

  ngOnInit() {
    let myItem = localStorage.getItem("Authorized") as any;
    if(myItem!=1)
    {
      this._router.navigate(['/admin']);
    }
  }
  
  Logout()  {
    localStorage.removeItem("Authorized");
    this._router.navigate(['/admin']);
  }
}
