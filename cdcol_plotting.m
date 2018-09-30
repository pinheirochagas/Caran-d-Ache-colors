load('cdcol')

col_names = fieldnames(cdcol);
color_colums = [reshape(repmat(1:4,58,1),length(col_names),1)];
color_colums_y = [repmat(1:1:length(fieldnames(cdcol))/4,1,4)];

for i = 1:length(fieldnames(cdcol))
    plot(color_colums(i),color_colums_y(i), '.','MarkerSize', 40, 'Color', cdcol.(col_names{i}))
    text(color_colums(i) + 0.03,color_colums_y(i), col_names{i}, 'Color', cdcol.(col_names{i}), 'FontSize', 15, 'interpreter', 'none')
    hold on
end
% set(gca,'Color',[.8 .8 .8])
ylim([-1 62])
xlim([1 5.2])
axis off
text(0.95,62, "Caran d'Ache colors - 2018", 'FontSize', 40, 'FontName', 'CMU Serif')

savePNG(gcf,800, 'cdcol.png')
    
    
    
    
    
    
    
    
    
    
    