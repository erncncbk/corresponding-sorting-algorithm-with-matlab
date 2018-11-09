function A = ShellSort(A,n,pausetime)
    increment = floor(n/2);
    while increment > 0
        for i = increment+1:n
            temp = A(i);
            j = i;
            while (j >= increment+1) && (A(j-increment) > temp)
                A(j) = A(j-increment);
                j = j - increment;
            end
            A(j) = temp;
        end
        increment = floor(increment/2);
bar(A,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
    

     
    text(1:length(A),A,num2str(A'),'vert','bottom','horiz','center');
     box off;
    
     pause(pausetime);
    end
end