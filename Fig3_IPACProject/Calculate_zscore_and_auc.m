%%Olfactometer exp: Mice were under head-restraint in front of the output 
%of a custom-built olfactometer. Before the testing, mice were habituated 
%to the setup for 1 hour. The odors were presented using the olfactometer, 
%which contains an eight-way solenoid that controls oxygen flow through 
%eight vials. 


%%
%Extract the smell presentations which were 3sec every 30sec and assign the
%ports that were used for smell presentations


onsets=[30:30:30*30]-1;
odorseq=state.olf.odorSeq;

% onsets1=onsets(odorseq==1);
% onsets2=onsets(odorseq==2);
% onsets3=onsets(odorseq==3);
% onsets4=onsets(odorseq==4);
% onsets5=onsets(odorseq==5);
onsets6=onsets(odorseq==6);
onsets7=onsets(odorseq==7);
onsets8=onsets(odorseq==8);


%Take the zscore for the entire deltaF trace
ZdeltaF=zscore(deltaF);

%crop the data to plot the zscore from -3 to 3 seconds for every stimulus

for i=1:10
data6(i,:)=deltaF( ((onsets6(i)*211)-15*211):((onsets6(i)*211)+15*211));
Zdata6(i,:)=ZdeltaF( ((onsets6(i)*211)-3*211):((onsets6(i)*211)+3*211));
end
for i=1:10
data7(i,:)=deltaF( ((onsets7(i)*211)-15*211):((onsets7(i)*211)+15*211));
Zdata7(i,:)=ZdeltaF( ((onsets7(i)*211)-3*211):((onsets7(i)*211)+3*211));
end
for i=1:10
data8(i,:)=deltaF( ((onsets8(i)*211)-15*211):((onsets8(i)*211)+15*211));
Zdata8(i,:)=ZdeltaF( ((onsets8(i)*211)-3*211):((onsets8(i)*211)+3*211));
end

%data5_cut=data5(:,(12*211):(18*211-1));
data6_cut=data6(:,(12*211):(18*211-1));
data7_cut=data7(:,(12*211):(18*211-1));
data8_cut=data8(:,(12*211):(18*211-1));


%make the plots for every stimulus. A heatmap and an average trace of the
%zscored data
figure;title('NTS10-10_BlackCAP');



subplot('Position',[0.07 0.10 0.37 0.18]);
shadedErrorBar([],Zdata6,{@mean,@stderrm},'g')
yticks([-1 0 1 2 3 4]);yticklabels({'-1' '0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')
subplot('Position',[0.07 0.28 0.37 0.18]);
imagesc(Zdata6,[-1 4])
yticks([]);xticks([]);
title('Olive')
hold on; plot([633 633],[0.5 10.5],'--','LineWidth',2,'Color','w')
ylabel('trial');

subplot('Position',[0.53 0.57 0.37 0.18]);
shadedErrorBar([],Zdata7,{@mean,@stderrm},'g')
yticks([-1 0 1 2 3 4]);yticklabels({'-1' '0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')
subplot('Position',[0.53 0.75 0.37 0.18]);
imagesc(Zdata7,[-1 4])
yticks([]);xticks([]);
title('Butyric acid')
hold on; plot([633 633],[0.5 10.5],'--','LineWidth',2,'Color','w')
ylabel('trial');

subplot('Position',[0.53 0.10 0.37 0.18]);
shadedErrorBar([],Zdata8,{@mean,@stderrm},'g')
yticks([-1 0 1 2 3 4]);yticklabels({'-1' '0' '1' '2' '3' '4'});xticks([0 211 422 633 844 1055 1266]);xticklabels({'-3' '-2' '-1' '0' '1' '2' '3'});xlim([0 1266]);ylim([-1 4]);
xlabel('time(s)');
ylabel('Z-score');
hold on; plot([633 633],[-1 4],'--','LineWidth',2,'Color','k')
subplot('Position',[0.53 0.28 0.37 0.18]);
imagesc(Zdata8,[-1 4])
yticks([]);xticks([]);
title('Mineral Oil')
hold on; plot([633 633],[0.5 10.5],'--','LineWidth',2,'Color','w')
ylabel('trial');


%Calculate the mean zscored response for every stumuli
%Zcoconut=(mean(Zdata5));
Zolive=(mean(Zdata6));
Zbutyric=(mean(Zdata7));
ZMO=(mean(Zdata8));


%Calculate the area under the curve for the zscored response for every stumuli
%coconut_intgrl=trapz([0:(1/211):3],Zcoconut(634:1267))
olive_intgrl=trapz([0:(1/211):3],Zolive(634:1267))
butyric_intgrl=trapz([0:(1/211):3],Zbutyric(634:1267))
MO_intgrl=trapz([0:(1/211):3],ZMO(634:1267))
