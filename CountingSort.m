
function B = CountingSort(A,n,pausetime)                    % CountingSortImplementation

k=getMax(A,n);                                  % Call getMax function
C = zeros(1,k);                                 % Create zeros count array
for j = 1:n
    C(A(j)) = C(A(j)) + 1;                      % Store count of occurrences in count[]
    
end

for i = 2:k
    C(i) = C(i) + C(i - 1);                     % Cummulative array
    
end

B = zeros(1,n);                                 % Build the zeros output array
for j =n:-1:1
    B(C(A(j))) = A(j);
    C(A(j)) = C(A(j)) - 1;   
   
end
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
end
function [max]=getMax(A,n)                      % Find max value in array
max=A(1);
for a=1:n
    if A(a)> max
        max=A(a);
    end
end
end