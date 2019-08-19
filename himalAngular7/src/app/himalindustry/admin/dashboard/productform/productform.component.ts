import { Component, OnInit } from '@angular/core';
//import { FormControl } from '@angular/forms';
import { Agarbatti } from 'src/app/models/setup/agarbatti.model';
import { AgarbattiService } from 'src/app/services/setup/agarbatti.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';




@Component({
  selector: 'app-productform',
  templateUrl: './productform.component.html',
  styleUrls: ['./productform.component.css']     
})



export class ProductformComponent implements OnInit {
  files = null;
  public imagePath;
  imgURL: any;
  imageFile:File;
  public message: string;
  preview(files) {
    if (files.length === 0)
      return;
    var mimeType = files[0].type;
    if (mimeType.match(/image\/*/) == null) {
      this.message = "Only images are supported.";
      return;
    } 
    var reader = new FileReader();
    this.imagePath = files;
    this.imageFile=files[0];
    reader.readAsDataURL(files[0]); 
    reader.onload = (_event) => { 
      this.imgURL = reader.result; 
    }

   
  }

  productModel: Agarbatti = new Agarbatti();
  productList: Agarbatti[];
  id: number = 0;
  constructor(public _productService: AgarbattiService,private _router:Router, private _avroute:ActivatedRoute,private toastr: ToastrService) {
    if(this._avroute.snapshot.params['id'])
    this.id=this._avroute.snapshot.params['id'];
   }

  dataRefresher: any;

  ngOnInit() {
    this.getProduct();
    // this.refreshData();
    this.cancelPageRefresh();
    let myItem = localStorage.getItem("Authorized") as any;
    if(myItem!=1)
    {
      this._router.navigate(['/admin']);
    }
  }

  getByID(id:number){
    this.id=id;
    this._productService.getByID(id).subscribe((res: Agarbatti)=>{
    this.productModel=res;
})
}

  saveProduct() {
    console.log('Product value');
    console.log(this.productModel);
   
    if(this.id<=0){
      
        //insert
        this._productService.saveProduct(this.productModel,this.imageFile).subscribe((res) => {
          //debugger; 
          this.getProduct();   
          this.toastr.success('Product Added Successfully');
          // this.toastr.success('Successfully!', 'Toastr fun!');     
        },(err)=>{console.log(err)});  
        this.productModel=new Agarbatti();
        this.id=0;
        // alert("Product Added Sucessfully!");      
    }
    
    else{
      //update
      if (confirm("Are you sure you want to update this ?")) { 
      this._productService.updateProduct(this.id,this.productModel).subscribe((res) => { 
        //debugger;
        this.getProduct();
        this.toastr.success('Product Updated Successfully');
        // console.log("Product Updated Sucessfully!");
      },(err)=>{console.log(err)});
      this.productModel=new Agarbatti();
      this.id=0;
    }
    }
    // this._productService.saveProduct(this.productModel).subscribe((res) => { 
    //   console.log("Product Added Sucessfully!");
    // },(err)=>{console.log(err)}); 
    
  }

  getProduct(){
    this._productService.getProduct().subscribe((res:Agarbatti[]) => {
    console.log('Products');
    console.log(res);
    this.productList = res;
    });
  }

 removeProduct(id:number){
  if (confirm("Are you sure you want to delete this ?")) { 
    //debugger;
     this._productService.removeProduct(id).subscribe((res:Agarbatti[]) => {
      console.log('Products');
      console.log(res);
      this.getProduct();
      this.toastr.success('Product Deleted Successfully');
      // console.log("Product Removed Sucessfully!");
    });
   }
}

refreshData(){
    this.dataRefresher =
      setInterval(() => {
        this.getProduct();
        //Passing the false flag would prevent page reset to 1 and hinder user interaction
      }, 10000);  
  }

  cancelPageRefresh(){
    // if(this.dataRefresher){
    //     clearInterval(this.dataRefresher);
    // }    
    this.productModel=new Agarbatti();
    this.id=0;
  }

//    removeProduct(employeeId: string) {  
//     if (confirm("Are you sure you want to delete this ?")) {   
//     this.employeeService.deleteEmployeeById(employeeId).subscribe(() => {  
//       this.dataSaved = true;  
//       this.massage = 'Record Deleted Succefully';  
//       this.loadAllEmployees();  
//       this.employeeIdUpdate = null;  
//       this.employeeForm.reset();  
  
//     });  
//   }  
// }  

  // updateProduct(){
  //     this._productService.updateProduct(this.id,this.productModel).subscribe((res:Agarbatti[]) => {
  //     console.log('Products');
  //     console.log(res);
  //     this.productList = res;
  //     debugger;
  //     console.log("Product Updated Sucessfully!");

  //     // this._productService.updateProduct(this.productModel).subscribe((res) => { 
  //     //   console.log("Product Updated Sucessfully!");
  //     // },(err)=>{console.log(err)});
  //   });
  //  }

  // ngOnDestroy(){
  // this.cancelPageRefresh();
  // }
}
