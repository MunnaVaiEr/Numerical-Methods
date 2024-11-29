%Lab:-2
%Title:- To calculate root of the equation using secant method.
%Developed by:- Munna Pajiyar
%Roll No:- 221452
%Date:- 2024/11/29
%------Three Critical statements-----

close all;
clear variables;
clc;

%-----Function Declaration Section-----
func=input('enter the function f(x)=');
f=inline(func);
disp(f);
E=0.0005;

%-----User input section-----
a=input('enter the value for a=');
b=input('enter the value for b=');
fa=f(a);
fb=f(b);


   
temp=[a,b;fa,fb];
disp(temp);

%-----Calculation Section-----
x=(a*f(b)-b*f(a))/(f(b)-f(a));
fx=f(x);
temp=[a,fa,b,fb,x,fx];
disp('_______________________________________________________________');
disp('          a     f(a)        b       f(b)      x       f(x)');
disp('_______________________________________________________________');
% disp('The root of the given function lies at x=');
disp(temp);
temp1=0;
while(abs(temp1-x)>E)
  temp1=x;  
    a=b;
    fa=fb;

    b=x;
    fb=fx;
   
x=(a*f(b)-b*f(a))/(f(b)-f(a));
fx=f(x);
temp=[a,fa,b,fb,x,fx];
disp(temp);
end
%        
% end
%  disp('The root lies at x= ');
 
 
% x=(a+b)/2;
% fx=f(x);
% temp=[a,fa,b,fb,x,fx];
% disp(temp);
% end

%-----Output section-----
disp('_____________________________________________________');
out=strcat('the root lies at x=',num2str(x),'with f(x)=',num2str(fx));
disp(out);






    
