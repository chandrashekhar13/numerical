
 
A = [1,1,1,1,13; 2,3,0,-3,-1;-3,4,1,2,10;1,2,-1,1,1;];
n=4;
 
for phase=1:n-1
for row=phase+1:n 
  fx=A(row,phase)/A(phase,phase);
  for col=phase:n+1
    A(row,col)=fx*A(phase,col)-A(row,col);
  endfor
endfor
endfor
 
disp(A);  