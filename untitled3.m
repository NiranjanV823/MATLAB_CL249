
Tr=0:0.1:1;
d=Tr(1,1);
disp(d);
 for i=1:k
 end
if f(a,Tr)*f(b,Tr)<0
      for i=1:n  
          c=(a+b)/2;
          if abs(f(c,Tr))<convergence
              break;
          elseif f(a,Tr)*f(c,Tr)<0
              b=c;
          else 
                a=c;
          end
          
      end
end