import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConfirmPswdComponent } from './confirm-pswd.component';

describe('ConfirmPswdComponent', () => {
  let component: ConfirmPswdComponent;
  let fixture: ComponentFixture<ConfirmPswdComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConfirmPswdComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConfirmPswdComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
