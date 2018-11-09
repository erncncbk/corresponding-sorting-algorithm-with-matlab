function A = CocktailSort(A,n,pausetime)
 
    
    swapped = true;
    
    while swapped
 
        %Bubble sort down the list
        swapped = false;
        for i = (1:n-1)   
            if( A(i) > A(i+1) )
                A([i i+1]) = A([i+1 i]); %swap
                swapped = true;
            end    
        end
 
        if ~swapped
            break
        end
 
        %Bubble sort up the list
        swapped = false;
        for i = (n-1:-1:1)
            if( A(i) > A(i+1) )
                A([i i+1]) = A([i+1 i]); %swap
                swapped = true;
            end 
        end 
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
    end 
end 