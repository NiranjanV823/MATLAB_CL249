%Guess for first root
Guess1=0.34;
Guess2=1;
%Guess for second root 
Guess3=1;
Guess4=25;
convergence=0.001;
%number of iterations 
n=1000;
Tr=0:0.1:1;

FirstRoots=[];
FirstRoots(1,1)=0.3333;
FirstRoots(1,11)=1;

SecondRoots=[];
SecondRoots(1,1)=inf;
SecondRoots(1,11)=1;

   for j=2:10
FirstRoots(1,j)=SolverCode(Guess1,Guess2,n,convergence,Tr(1,j));
SecondRoots(1,j)=SolverCode(Guess3,Guess4,n,convergence,Tr(1,j));
   end
   plot(FirstRoots,Tr,'-o');
   hold on
   plot(SecondRoots,Tr,'-*')
   xlabel('Vr')
   ylabel('Tr')
