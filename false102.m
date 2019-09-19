f = @(x)5*x^3 - 5*x^2 + 6*x -2;

%fplot(f,[-10,20]);
xl= -8; xu=+4;


es = 0.5;
n= 0;
xr = xl; % any intial gauss xl or xu

while (1)
  
  n=n+1;
  fxl = f(xl);
  fxu = f(xu);
  xold=xr;
  xr = ((xl*fxu)-(xu*fxl))/(fxu-fxl);
  ea = abs((xr-xold)/xr);
  er(n)=ea;
  
  if(es>ea)
    disp('ROOT :'),disp(xr);
  
    break;
  endif
  
  fr = f(xr);
  
  if(fr*fxl < 0)
    xu = xr;
  else
    xl = xr;
  endif
 
endwhile
plot(er);
