function [c]=SolverCode(a,b,n,convergence,Tr)
c=a;
if (f(a,Tr)*f(b,Tr))<0
      for i=1:n  
         k = c;
          c=(a+b)/2;
           
          if abs((c-k)/k)<convergence
            
              break;
          elseif (f(a,Tr)*f(c,Tr))<0
              b=c;
          else 
                a=c;
          end
          
      end
end
