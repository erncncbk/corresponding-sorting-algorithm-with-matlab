function A = BucketSort(A,n,pausetime)
    k=getMax(A,n) ;                                                             % Call getMax function
    bucket = zeros(1,k+1);                                                      % Build zeros bucket array
    for j = 1:numel(A)
        bucket(A(j)) = bucket(A(j)) + 1;
    end
    index = 1;
    for i = 1:k+1
        for j = 1:bucket(i) 
            A(index) = i;
            index = index + 1;
        end
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
    end
end
function [max]=getMax(A,n)                                                      % Find max value in array
max=A(1);
for a=1:n
    if A(a)> max
        max=A(a);
    end
end
end