%   Script created by:  Dr. Naima G. Sharaf
[T,txt,raw]=xlsread('190921_1_10HNmMetNI.xls')
figure

plot(T(:,1),T(:,2),'Color', 'b')
hold on;
% % plot(T(:,11),T(:,12),'Color', 'k')
% % hold on;
% % plot(T(:,19),T(:,20),'Color', 'k')
% % hold on;
% 
% %axis range min max and then range
axis([20 160 -10 130])
% box off;
h1=gca;
% h2 = axes('Position',get(h1,'Position'));
% set (h2, 'YAxisLocation', 'right', 'XAxisLocation', 'top','Color','None')
% hold on;
% plot(T(:,1),T(:,3),'Color', 'k')
% % hold on;
% % % plot(T(:,23),T(:,24),'Color', 'k')
% % % hold on;
% % axis([37 40 0 150000])
% % % set(h1,'XTick',[12 14 16 18])
% % % set(h1,'YTick',[0 0.5 1])
% % set(h2,'XTick',[])
% % set(h2,'YTick',[0 25000 50000 75000 100000 125000])
% % set(h2,'YTickLabel',[0 25 50 75 100 125])

% axis labels
h1.YLabel.String ='UV (AU)';
h1.YLabel.FontSize =12;
h1.XLabel.String ='Volume (ml)';
h1.XLabel.FontSize =12;

% h2.YLabel.String ='molar mass (kDa)';
% h2.YLabel.FontSize =10;


title('Superdex Nm MetNI','Fontsize',12)


% size of plot

set (gcf, 'PaperOrientation','landscape','PaperUnits','inches','PaperPosition',[1 1 5 3])

printname = [datestr(now, 'yymmdd'),'_','1','_','NmMetQ_curve']
print ('-dpng', printname,  '-r200');

% axis and titles