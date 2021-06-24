%Escenario Euler
clear
a=0.25; h=0.1; nm=0.1;
[N,y]=CFS(a,nm);
for c=1:1:4
    A(c,:)= Euler(h, a, nm);
    diff(c,:)=abs(N-A(c,:));
    h=h/10;
end
 scatter(y,A(1,:),'linewidth',1);
 xlabel('y');
 ylabel('N(y)');
 hold on;
 grid on;
 scatter(y,A(2,:),'linewidth',1);
 scatter(y,A(3,:),'linewidth',1);
 scatter(y,A(4,:),'linewidth',1);
 scatter(y,N,'filled');
 title('Método de Euler');
 legend('h=0.1','h=0.01','h=0.001','h=0.0001','CFS');
hold off
