function [ A ] = BubbleSort( A ,n,pausetime)

for j=1:n                                  % first for loop
    for i=1:n-1                             % second for loop
        if(A(i)>A(i+1))                         % check if number i is bigger than i+1
          temp      =    A(i);                  % do the swap
          A(i)      =   A(i+1);      
          A(i+1)    =    temp;
        end
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
 text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);                               % display progress
    end                                         % end of for loop 1 
end  

end

