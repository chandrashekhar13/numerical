% AX=B
A =[1,2,5,2;2,1,4,-5;4,2,3,10];
A
for p=1: 2
  for row=p+1: 3
   frowp=A(row,p)/A(p,p);
    for col=p: 4
     A(row,col)=(frowp*A(p,col))-A(row,col);
     endfor
  endfor
endfor
A
for p=3:-1:1
  Base=A(p,p);
  sum=0;
  for col=p+1:3
    sum=sum+A(p,col)*x(col);
  endfor
  x(p)=(A(p,4)-sum)/Base;
endfor
disp('Values of x= '),disp(x);
