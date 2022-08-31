% I calculated the mean zscore response for each mouse and created a
% variable for each stimulus. I used a variable for each stimulus to create 
%heatmaps where the rows are the average zscore responses for each mouse


figure;
%heatmap and zscored trace for olive response

subplot('Position',[0.7 0.61 0.2 0.17]);
shadedErrorBar([],z_olive,{@mean,@stderrm},'g')
yticks([0 1 2 3 4]);yticklabels({'0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')

subplot('Position',[0.7 0.8 0.27 0.17]);
imagesc(z_olive,[-1 4])
yticks([]);xticks([]);
title('Olive')
hold on; plot([633 633],[0 100],'--','LineWidth',2,'Color','w')
ylabel('mice');

%c3=colorbar('Ticks',[min(data6(:)) max(data6(:))],'Ticklabels',[floor(min(data6(:))) ceil(max(data6(:)))]);
c3=colorbar('Ticks',[-1 4],'Ticklabels',[-1 4]);
c3.Label.String='Z-score';
c3.Label.FontSize=12;
c3.Label.Rotation=270;

%Heatmap and zscored trace for butyric acid response

subplot('Position',[0.05 0.61 0.2 0.17]);
shadedErrorBar([],z_butyric,{@mean,@stderrm},'g')
yticks([0 1 2 3 4]);yticklabels({'0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')

subplot('Position',[0.05 0.8 0.27 0.17]);
imagesc(z_butyric,[-1 4])
yticks([]);xticks([]);
title('Butyric acid')
hold on; plot([633 633],[0 100],'--','LineWidth',2,'Color','w')
ylabel('mice');
% 
 %c3=colorbar('Ticks',[min(data7(:)) max(data7(:))],'Ticklabels',[floor(min(data7(:))) ceil(max(data7(:)))]);
 c3=colorbar('Ticks',[-1 4],'Ticklabels',[-1 4]);
 c3.Label.String='Z-score';
 c3.Label.FontSize=12;
 c3.Label.Rotation=270;

%Heatmap and zscored trace for mineral oil response

subplot('Position',[0.37 0.61 0.2 0.17]);
shadedErrorBar([],z_mineral,{@mean,@stderrm},'g')
yticks([0 1 2 3 4]);yticklabels({'0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')

subplot('Position',[0.37 0.8 0.27 0.17]);
imagesc(z_mineral,[-1 4])
yticks([]);xticks([]);
title('Mineral oil')
hold on; plot([633 633],[0 100],'--','LineWidth',2,'Color','w')
ylabel('mice');

c3=colorbar('Ticks',[-1 4],'Ticklabels',[-1 4]);
c3.Label.String='Z-score';
c3.Label.FontSize=12;
c3.Label.Rotation=270;