load('cdcol')

col_names = fieldnames(cdcol);

for i = 1:length(fieldnames(cdcol))
    plot(1,i, '.','MarkerSize', 50, 'Color', cdcol.(col_names{i}))
    hold on
end



for i = 1:length(fieldnames(cdcol))
    cdcol_matrix(i,:) = cdcol.(col_names{i});
end


[cdcol_matrix_sorted,index] = sortrows(cdcol_matrix, [1 2 3]);
col_names = col_names(index);
col_names([1 2 9],:) = [];
cdcol_matrix_sorted([1 2 9],:) = [];
% col_names([2],:) = [];
% cdcol_matrix_sorted([2],:) = [];

for i = 1:size(cdcol_matrix_sorted,1)
    plot(1,i, '.','MarkerSize', 55, 'Color', cdcol_matrix_sorted(i,:))
    text(1.03,i, col_names{i}, 'Color', cdcol_matrix_sorted(i,:), 'FontSize', 20)
    hold on
end
set(gca,'Color',[.8 .8 .8])
ylim([-1 62])


cdcols = struct2table(cdcol)