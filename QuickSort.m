function A=QuickSort(A,start,last,pausetime)                                 
if start<last
   [A,q ] = Partition(A,start,last,pausetime);                                    % Call function  Partition  
   %Divide and Conquer
   A = QuickSort(A,start,q-1,pausetime);
   A = QuickSort(A,q+1,last,pausetime);
end
end
%-----------------------------------------------------------------------------------------------------%
function [A,i]=Partition(A,start,last,pausetime)


pivot=A(start);                 % Select pivot A(start) value 
i=start;                        

for  j=start+1:last
    if A(j)<=pivot              % Check A(j)<= pivot value
        i=i+1;                  % Increase the value of 'i' by 1
        temp = A(i);            % Keep A(i) value
        A(i) = A(j);            % Swap the values
        A(j) = temp;
        
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
    end 
     
end

temp = A(start);                % Keep A(start) value
A(start) = A(i);                % Swap the values
A(i) = temp;
end

