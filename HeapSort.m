% ---     Erencan Cabuk      --- %
% ---     130403008          --- %
% ---     14/10/2017         --- %
% ---     HW4-2              --- %
% ---     HEAP SORT          --- %
%-----------------------------------------------------------------------------------------------------%

function A = HeapSort(A,n,pausetime)

A = buildmaxheap(A,n,pausetime);                                                  % Call buildmaxheap function
% Heapsort
heapsize = n;
for i = n:-1:2
    A = swap(A,1,i);                            % Call swap function
    
    heapsize = heapsize - 1;                    % Decrease the value heapsize by 1
    A = maxheapify(A,1,heapsize,pausetime);               % Call maxheapiy function
end

end
function A = buildmaxheap(A,n,pausetime)                  % Created buildmaxheap function

for i = floor(n / 2):-1:1                       % Round toward negative infinity
    
    A = maxheapify(A,i,n,pausetime);                      % Call maxheapify function
end

end
function A = maxheapify(A,i,heapsize,pausetime)           % Created maxheapify function

left = 2 * i;                                   % Compute left indices
right = left + 1;                               % Compute right indices        

% Max-heapify
if ((left <= heapsize) && (A(left) > A(i)))
    largest = left;
else
    largest = i;
end
if ((right <= heapsize) && (A(right) > A(largest)))
    largest = right;
end
if (largest ~= i)                               % Check largest value not equal to i
    A = swap(A,i,largest);                      % Call swap function            
    A = maxheapify(A,largest,heapsize,pausetime);         % Call maxheapify function
end
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
     pause(pausetime);
end

function A = swap(A,i,j)                        % Created swap function
temp = A(i);                                    % Keep A(i) value                                        
A(i) = A(j);                                    % Swap A(i) and A(j) 
A(j) = temp;

end