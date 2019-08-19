import { Injectable, Inject } from '@angular/core';
import { Agarbatti } from 'src/app/models/setup/agarbatti.model';
import { HttpClient } from '@angular/common/http';
import { Register } from 'src/app/models/register.model';
import { Login } from 'src/app/models/login.model';


@Injectable()
export class AgarbattiService {
 
  apiUrl: string;
  //updateProduct: any;

  constructor(@Inject('BASE_URL') baseUrl: string, private _http: HttpClient) {
    this.apiUrl = baseUrl;
  }

  saveProduct(productModel: Agarbatti,imageFile:File) {
    const formData = new FormData();
    formData.append('files', imageFile);
    formData.append('model',JSON.stringify(productModel));
    return this._http.post(this.apiUrl + 'product', formData);
  }

  // public add(productModel: Agarbatti) {
  //   return this._http.post(this.apiUrl + 'product', productModel});
  // }

  public getProduct() {
    // Get all product data
    return this._http.get(this.apiUrl + 'product');
  }
  
  public getAllAgarbati() {
    // Get all product data
    return this._http.get(this.apiUrl + 'Product/AllAgarbati');
  }

  public getByID(id:number){
    return this._http.get(this.apiUrl+'product/'+ id);
  }


  public removeProduct(id : number) {
    return this._http.delete(this.apiUrl + 'product/' + id);
  }

  public updateProduct(id:number,productModel: Agarbatti) {
    return this._http.put(this.apiUrl + 'product/'+id, productModel);
  } 

  saveRegister(register: Register) {   
    return this._http.post(this.apiUrl + 'Register', register);
  }

  Login(login: Login) {   
    return this._http.post(this.apiUrl + 'Register/Login', login);
  }

  PasswordRecovery(loginModel: Login){
     return this._http.post(this.apiUrl + 'Email/ForgotPassword', loginModel)
  }

  ResetPassword(reg: Login){
    return this._http.post(this.apiUrl + 'Register/ResetPswd', reg)
 }



  
}

