% Erencan Cabuk
% 130403008
% 27/09/2017
% HW1-1
% INSERTION SORT

function A =InsertionSort(A,pausetime)                   % Create Function

%% Insertion sort is started

for j=2:length(A)
    temp     =   A(j);   % new variable is assigned to key
    i        =   j-1;    % decrement j and assign to i
    while (i>0) && A(i)>temp
       
        A(i+1)=A(i);
        i=i-1;           % decrement i and assign to i
        
        A(i+1)=temp;     % new variable is assigned to key
         
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
     %      hold on ;
%      bar(j,'FaceColor', 'r');  axis off
%      bar((i+1),'FaceColor', 'r');  axis off
     
    end                  % end of while loop 
    
    
    
end                      % end of for loop

   