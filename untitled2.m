a=0.34;
b=1;
n=1;
Tr=0:0.1:1;
convergence=0.00001;
disp(Tr(1,1))
if (f(a,Tr(1,6))*f(b,Tr(1,6)))<0
      for i=1:n  
          
          c=(a+b)/2;
          if abs(f(c,Tr(1,6)))<convergence
              disp(f(c,Tr(1,6)))
              disp(c)
              disp(Tr(1,6))
              break;
          elseif (f(a,Tr(1,6))*f(c,Tr(1,6)))<0
              b=c;
          else 
                a=c;
          end
          
      end
else 
    disp("FU")
end