import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AgarbattiComponent } from './agarbatti.component';

describe('AgarbattiComponent', () => {
  let component: AgarbattiComponent;
  let fixture: ComponentFixture<AgarbattiComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AgarbattiComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AgarbattiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
