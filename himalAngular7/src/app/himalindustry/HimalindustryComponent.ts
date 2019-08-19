import { Component, OnInit, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
@Component({
  selector: 'app-himalindustry',
  templateUrl: './himalindustry.component.html',
  styleUrls: ['./himalindustry.component.css']
})
export class HimalindustryComponent implements OnInit {
  apiUrl: string;
  constructor(
    @Inject('BASE_URL')
    baseUrl: string, private http: HttpClient) {
    this.apiUrl = baseUrl;
  }
  ngOnInit() {
    this.http.get(this.apiUrl + 'data').subscribe(data => console.log(data));
  }
}
