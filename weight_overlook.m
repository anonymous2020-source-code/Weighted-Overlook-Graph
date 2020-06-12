function adjmatrix=weight_overlook(time_series)
[w,m,~]=size(time_series);
adjmatrix = zeros(m,m);
for i = 1:m
    for j = 1:m 
        if(time_series(i)>time_series(j))
            adjmatrix(i,j) = (time_series(i)-time_series(j))/abs(i-j);
        else
            adjmatrix(i,j) = 0;
        end
    end
end