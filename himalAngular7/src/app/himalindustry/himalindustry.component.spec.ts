import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HimalindustryComponent } from "./HimalindustryComponent";

describe('HimalindustryComponent', () => {
  let component: HimalindustryComponent;
  let fixture: ComponentFixture<HimalindustryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HimalindustryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HimalindustryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
