function A = MergeSort(A,p,r,pausetime)
if p<r
    q=floor((p+r)/2) ;
    A=MergeSort(A,p,q,pausetime);
    A=MergeSort(A,q+1,r,pausetime);
    A=Merge(A,p,q,r,pausetime) ;
    
   
end
end