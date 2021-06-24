function app = RKM(h, a, nm)  
t=5/h;
f=@(b,c) ((1/c)-(a*c*(b^(a-1))))/(b^a);
N(1)=nm;
y(1)=((N(1)^2)*a)^(1/(1-a));
for i=1:t
   y(i+1)=y(i)+h;
   N(i+1)=N(i)+((h/2)*(feval(f,y(i),N(i))+feval(f,y(i+1),(N(i)+(h*feval(f,y(i),N(i)))))));
end
m=[1 (0.1/h)+1 (0.2/h)+1 (0.4/h)+1 (1/h)+1 (2/h)+1 (4/h)+1];
app=[N(m(1)) N(m(2)) N(m(3)) N(m(4)) N(m(5)) N(m(6)) N(m(7))];