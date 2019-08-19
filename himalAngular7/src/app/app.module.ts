import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { CommonModule } from '@angular/common';
import { HimalindustryComponent } from "./himalindustry/HimalindustryComponent";
import { AgarbattiComponent } from './HimalIndustry/agarbatti/agarbatti.component';
import { PerfumeComponent } from './HimalIndustry/perfume/perfume.component';
import { HomeComponent } from './himalindustry/home/home.component';
import { AboutComponent } from './himalindustry/about/about.component';
import { ServicesComponent } from './himalindustry/services/services.component';
import { ContactComponent } from './himalindustry/contact/contact.component';
import { GalleryComponent } from './himalindustry/perfume/gallery/gallery.component';
import { GallaryComponent } from './himalindustry/agarbatti/gallary/gallary.component';
import { RouterModule, Routes } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';
import { AdminComponent } from './himalindustry/admin/admin.component';
import { DashboardComponent } from './himalindustry/admin/dashboard/dashboard.component';
import { ProductformComponent } from './himalindustry/admin/dashboard/productform/productform.component';
import { FormsModule } from '@angular/forms';
import { AgarbattiService } from './services/setup/agarbatti.service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ToastrModule } from 'ngx-toastr';
import { ReactiveFormsModule } from '@angular/forms';
import { NgxPaginationModule } from 'ngx-pagination';
import { PswdRecoveryComponent } from './himalindustry/admin/pswd-recovery/pswd-recovery.component';
import { ConfirmPswdComponent } from './himalindustry/admin/pswd-recovery/confirm-pswd/confirm-pswd.component'; 

// owlcarousel: for sliding wall images
// preloaders: loading
//https://www.aayocab.com/
//https://www.heroku.com



const appRoutes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full'},
  { path: 'home', component: HomeComponent },
  { path: 'about', component: AboutComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'service', component: ServicesComponent },
  { path: 'agarbatti', component: AgarbattiComponent },
  { path: 'perfume', component: PerfumeComponent },
  { path: 'admin', component: AdminComponent },
  { path: 'admin', component: DashboardComponent },
  { path: 'dashboard', component: DashboardComponent },
  { path: 'product', component: ProductformComponent },
  { path: 'product/:id',component: ProductformComponent },
  { path:'pswd-recovery',component: PswdRecoveryComponent },
  { path:'confirm-pswd', component: ConfirmPswdComponent },
  { path: 'confirm-pswd/:UserName', component: ConfirmPswdComponent },

];

@NgModule({
  declarations: [
 // tslint:disable-next-line: no-trailing-whitespace
    AppComponent,       
    HimalindustryComponent,
    AgarbattiComponent,
    PerfumeComponent,
    HomeComponent,
    AboutComponent,
    ServicesComponent,
    ContactComponent,
    GalleryComponent,
    GallaryComponent,
    AdminComponent,
    DashboardComponent,
    ProductformComponent,
    PswdRecoveryComponent,
    ConfirmPswdComponent,
  ],
  imports: [
    BrowserModule,
    CommonModule,
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot(appRoutes),
    BrowserAnimationsModule, // required animations module
    ToastrModule.forRoot(), // ToastrModule added,
    BrowserModule, ReactiveFormsModule,
    NgxPaginationModule
  ],
  providers: [
    AgarbattiService,
    { provide: 'BASE_URL', useValue: 'https://localhost:44325/api/' }
  ],
  bootstrap: [HimalindustryComponent]
})
export class AppModule { }
