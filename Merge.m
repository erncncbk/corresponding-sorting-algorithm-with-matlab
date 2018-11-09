function A= Merge(A,p,q,r,pausetime)
n1=q-p+1 ;
n2=r-q;
L=zeros(1,n1+1);
R=zeros(1,n2+1);
    for i=1:n1
    L(i)=A(p+i-1) ;
    end
    for j=1:n2
    R(j)=A(q+j);   
    end
L(n1+1)=Inf;
R(n2+1)=Inf;
i=1;
j=1;
for k=p:r
    
    if L(i)<=R(j)
        A(k)=L(i);
        i=i+1;
      
    else
        A(k)=R(j);
        j=j+1;
        
    end
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
     text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    pause(pausetime)
end

end