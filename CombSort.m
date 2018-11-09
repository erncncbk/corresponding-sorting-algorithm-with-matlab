function A = CombSort(A,n,pausetime)
    
    swapped = true;
    while (n > 1) || swapped
        n = floor(n/1.25);
        if n < 1
            n = 1;
        end
        i = 1;
        swapped = false;
        while (i+n-1) < numel(A)
            if A(i) > A(i+n)
                A([i i+n]) = A([i+n i]);
                swapped = true;
            end
            i = i + 1;
        end
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
    end
end