A =[1,2,5;2,1,4;4,2,3];
r = [2;-5;10];
L =[1,0,0;0,1,0;0,0,1];
dim = 3;
for p=1:dim-1
  for row=p+1:dim
    L(row,p)=A(row,p)/A(p,p);
    for col=p:dim
      A(row,col)=A(row,col)-(L(row,p)*A(p,col));
    endfor
  endfor
endfor
L
A
for p=1:dim
  Base=L(p,p);
  sum=0;
  for col=1:p-1
     sum=sum+y(col)*L(p,col);
  endfor
  y(p)=(r(p)-sum)/Base;
endfor
disp('The values of y'),disp(y);
for p=dim:-1:1
  Base=A(p,p);
  sum=0;
  for col=p+1:dim
    sum=sum+x(col)*A(p,col);
  endfor
  x(p)=(y(p)-sum)/Base;
endfor
disp('The values of x'),disp(x);
