function app = EulerIPF(h, a, nm) 
%h=tamaño del paso, a=constante de calculo, nm=valor minimo de produccion
%yM= valor maximo de educacion 
t=5/h;
f=@(b,c) ((1/c)-(a*c*(b^(a-1))))/(b^a);
N(1)=nm;
M(1)=nm;
y(1)=((M(1)^2)*a)^(1/(1-a));
for i=1:t 
y(i+1)=y(i)+h;
 for j=1:100
 M(j)=N(i);
 M(j+1)=N(i)+h*feval(f,y(i+1),M(j));
 end
N(i+1)=N(i)+(h*feval(f,y(i+1),M(j+1)));
end
s=[1 (0.1/h)+1 (0.2/h)+1 (0.4/h)+1 (1/h)+1 (2/h)+1 (4/h)+1];
app=[N(s(1)) N(s(2)) N(s(3)) N(s(4)) N(s(5)) N(s(6)) N(s(7))];

%app(1)=N(1);
%for k=1:(t/2)
  % app(k)=N(2*k);
%end
