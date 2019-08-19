import { Component, OnInit } from '@angular/core';
import { AgarbattiService } from 'src/app/services/setup/agarbatti.service';
import { Agarbatti } from 'src/app/models/setup/agarbatti.model';

@Component({
  selector: 'app-agarbatti',
  templateUrl: './agarbatti.component.html',
  styleUrls: ['./agarbatti.component.css']
})

export class AgarbattiComponent implements OnInit  {
  p: number = 1;
  constructor(public _productService: AgarbattiService) { }
  productList:any[]=[];


  ngOnInit() {
    this._productService.getAllAgarbati().subscribe((res:Agarbatti[]) => {
     //debugger;
      this.productList = res;
      });
  }
}