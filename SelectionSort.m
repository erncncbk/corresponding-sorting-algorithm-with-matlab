function [ A ] = SelectionSort( A,n ,pausetime)
for i=1:n
   min=i;
   for j=i:n
    if A(j)<A(min)
        min=j;
    end
   end
temp=A(i);
A(i)=A(min);
A(min)=temp;
cla;
 bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
     
%       bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
           pause(pausetime);
%  hold on
%  counter=1;
%  while(1)
%      if counter==size(A)
%          break;
%      end
%      bar(counter,A(counter),'r');
%      bar(min,A(min),'r');
%      pause(1);
%      bar(counter,A(counter),'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5);
%      bar(min,A(min),'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5);
%      counter=counter+1;
%  end
 
end
end

