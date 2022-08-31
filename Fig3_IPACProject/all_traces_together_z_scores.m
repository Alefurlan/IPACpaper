%% This script was used to plot the average zscored deltaF traces for each stimulus on top of each other


figure;

subplot('Position',[0.5 0.61 0.3 0.25]);
shadedErrorBar([],z_olive,{@mean,@stderrm},'b')
yticks([0 1 2 3 4]);yticklabels({'0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')


shadedErrorBar([],z_butyric,{@mean,@stderrm},'m')
yticks([0 1 2 3 4]);yticklabels({'0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')

shadedErrorBar([],z_mineral,{@mean,@stderrm},'K')
yticks([0 1 2 3 4]);yticklabels({'0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')


