function rhs=burgers_rhs(t,u0t,dummy,k,eps)

u0=ifft(u0t); u0x=ifft(i*k.*u0t); u0xx=ifft(-(k.^2).*u0t); u0xxx=ifft(-i*(k.^3).*u0t);

% model 4

rhs=  0.08544355*(-k.^2).*u0t ...
+ fft(-1.07373824*(u0x.*u0) + 0.38641142*(u0x.*(u0.^2)) - 0.44580766*(u0x.*(u0.^3)) ...
+ 0.12520579*(u0xx.*u0) - 0.26228889*(u0xx.*(u0.^2)) + 0.18565966*(u0xx.*(u0.^3)) ...
+ 0.02595815*(u0xxx.*u0) - 0.04325015*(u0xxx.*(u0.^2)) );

% u_t = 
%  0
%  + 0 u
%  + 0  u^2
%  + 0 u^3
%  + 0 u_x
%  - 1.07373824 u u_x
%  + 0.38641142 u^2 u_x
%  - 0.44580766 u^3 u_x
%  + 0.08544355 u_{xx}
%  + 0.12520579 u u_{xx}
%  - 0.26228889 u^2 u_{xx}
%  + 0.18565966 u^3 u_{xx}
%  + 0 u_{xxx}
%  + 0.02595815 u u_{xxx}
%  [-0.04325015+0.j] u^2 u_{xxx}
% + 0  u^3 u_{xxx}
