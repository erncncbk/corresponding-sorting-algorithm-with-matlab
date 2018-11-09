
function A = RadixSort(A,n,pausetime)

    m = getMax(A,n);                                                            % Call getMax function
    exp = 1;
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    pause(pausetime);
while m/exp > 0                                                                     
    A = counting_sort(A,exp);                                                   % Call counting_sort function   
    exp = exp * 10;
    
end

    function B = counting_sort(A,exp)
        C = zeros(1,11);                                                        % Build the zeros count array
        B = zeros(1,numel(A));                                                  % Create the zeros output array
        for j = 1:numel(A)
            C(rem(floor(A(j)/exp),10)+1) = C(rem(floor(A(j)/exp),10)+1) + 1;        
        end
        for i = 2:11                                                            % Cummulative array
            C(i) = C(i) + C(i-1);
            
        end
        for j = numel(A):-1:1                                                   % Build the output array
            B(C(rem(floor(A(j)/exp),10)+1)) = A(j);
            C(rem(floor(A(j)/exp),10)+1) = C(rem(floor(A(j)/exp),10)+1) - 1;          
        end
      
    
    end

end
%-----------------------------------------------------------------------------------------------------%
function [max]=getMax(A,L)                                                      % Find max value in array
max=A(1);
for a=1:L
    if A(a)> max
        max=A(a);
    end
end
end