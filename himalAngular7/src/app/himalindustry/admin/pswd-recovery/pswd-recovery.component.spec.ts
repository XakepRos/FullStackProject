import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PswdRecoveryComponent } from './pswd-recovery.component';

describe('PswdRecoveryComponent', () => {
  let component: PswdRecoveryComponent;
  let fixture: ComponentFixture<PswdRecoveryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PswdRecoveryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PswdRecoveryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
