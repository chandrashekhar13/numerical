% AX=B
A =[1,2,5,2;2,1,4,-5;4,2,3,10];
A
dim = 3;
for p=1: dim-1
  swapind=p;
  for find=p+1:dim
    if A(find,p)>A(swapind,p)
      swapind=find;
    endif
  endfor
  if swapind!=p
    for col=p:dim
      element=A(swapind,col);
      A(swapind,col)=A(p,col);
      A(p,col)=element;
    endfor
  endif
  for row=p+1: dim
   frowp=A(row,p)/A(p,p);
    for col=p: dim+1
     A(row,col)=(frowp*A(p,col))-A(row,col);
     endfor
  endfor
endfor
A
for p=dim:-1:1
  Base=A(p,p);
  sum=0;
  for col=p+1:dim
    sum=sum+A(p,col)*x(col);
  endfor
  x(p)=(A(p,dim+1)-sum)/Base;
endfor
disp('Values of x= '),disp(x);
