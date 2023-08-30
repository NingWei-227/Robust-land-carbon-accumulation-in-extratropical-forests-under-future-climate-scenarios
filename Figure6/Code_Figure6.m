%% Display it.
clear;clc;
figure
set(gcf,'Position',[439 560 999 473])
step1 = axes('units','normalized', 'position',[0 0 0.25 1]);
uistack(step1,'bottom');
set(step1,'color',[1.00,0.96,0.91])
set(step1,'handlevisibility','off', ...
            'visible','on','XColor','none','YColor','none')

panel = tight_subplot(2,1,[0.09 0.21],[0.44 0.06],[0.05 0.83]) 
axes(panel(1))
hold on
% historical
pd_hisM1 = makedist('Normal','mu',0,'sigma',0.7);
xM1_hist = -2.1:0.1:2.1
y_hist_pdfM1 = pdf(pd_hisM1,xM1_hist);
plot(xM1_hist,y_hist_pdfM1,'k-','LineWidth',1.2)
set(gca,'XLim',[-4 6],'YLim',[0 0.8])
% future
pd_fM1 = makedist('Normal','mu',3,'sigma',1);
xM1_F = 0:0.1:6;
y_FpdfM1 = pdf(pd_fM1,xM1_F);
plot(xM1_F,y_FpdfM1,'r-','LineWidth',1.2)
% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.03;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.2);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.2);
xticks([]);yticks([]);
ylabel('PDF of Model_1')
xlabel('cLand')
set(gca,'Fontname','Arial','FontSize',10);
text(0.064,0.69,'Historical',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11)
text(3.24,0.48,'Future',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11,'color','r')
    
axes(panel(2))
hold on
% historical
pd_hisM2 = makedist('Normal','mu',-1,'sigma',0.6);
xM2_hist = -3.1:0.1:1.1;
y_hist_pdfM2 = pdf(pd_hisM2,xM2_hist);
plot(xM2_hist,y_hist_pdfM2,'k-','LineWidth',1.2)
set(gca,'XLim',[-4 6],'YLim',[0 0.8])
% future
pd_fM2 = makedist('Normal','mu',1,'sigma',0.7);
xM2_F = -1:0.1:3;
y_FpdfM2 = pdf(pd_fM2,xM2_F);
plot(xM2_F,y_FpdfM2,'r-','LineWidth',1.2)
% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.03;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.2);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.2);
xticks([]);yticks([]);
ylabel('PDF of Model_2')
xlabel('cLand')
set(gca,'Fontname','Arial','FontSize',10);    
    

panel2 = tight_subplot(1,1,[0.12 0.21],[0.06 0.74],[0.05 0.83]);
axes(panel2)
hold on
% historical
pd_hisMn = makedist('Normal','mu',-0.6,'sigma',1);
xMn_hist = -3.6:0.1:2.4;
y_hist_pdfMn = pdf(pd_hisMn,xMn_hist);
plot(xMn_hist,y_hist_pdfMn,'k-','LineWidth',1.2)
% future
pd_fMn = makedist('Normal','mu',1.3,'sigma',0.9);
xMn_F = -1.7:0.1:4.3;
y_FpdfMn = pdf(pd_fMn,xMn_F);
plot(xMn_F,y_FpdfMn,'r-','LineWidth',1.2)
set(gca,'XLim',[-4 6],'YLim',[0 0.8])
% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.03;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.2);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.2);
xticks([]);yticks([]);
ylabel('PDF of Model_n')
xlabel('cLand')
set(gca,'Fontname','Arial','FontSize',10);   


%%
clear;
clc;
step2 = axes('units','normalized', 'position',[0.25 0 0.38 1]);
uistack(step2,'bottom');
set(step2,'color',[1.00,1.00,0.91])
set(step2,'handlevisibility','off', ...
            'visible','on','XColor','none','YColor','none')
        
        
panel = tight_subplot(3,2,[0.09,0.06],[0.08,0.06],[0.31,0.4]);
axes(panel(1))
hold on
data2_p1 = [1 1 1 1 2.5 1];
sig2 = barh(2,data2_p1,'stacked')
sig2(1).FaceColor = [0.9 0.9 0.9];
sig2(2).FaceColor = [0.98,0.79,0.50];
sig2(3).FaceColor = [0.9 0.9 0.9];
sig2(4).FaceColor = [0.98,0.79,0.50];
sig2(5).FaceColor = [1,1,1];
sig2(6).FaceColor = [0.98,0.79,0.50];
plot([0 1.5],[3.6 3.6],'LineWidth',10,'color',[0.9 0.9 0.9])
text(1.7,3.6,'insignificant change','Fontname','Arial','FontSize',10)
plot([0 1.5],[3 3],'LineWidth',10,'color',[0.98,0.79,0.50])
text(1.7,3,'significant change','Fontname','Arial','FontSize',10)
text(-0.91,1.42,'Model','Fontname','Arial','FontSize',10,'Rotation',90)
text(0.2,2,'1','Fontname','Arial','FontSize',10)
text(1.23,2,'2','Fontname','Arial','FontSize',10)
text(2.33,2,'3','Fontname','Arial','FontSize',10)
text(3.43,2,'4','Fontname','Arial','FontSize',10)
text(4.78,2.12,'...','Fontname','Arial','FontSize',12)
text(6.72,2,'n','Fontname','Arial','FontSize',10)
set(gca,'color','none','xcolor','none','ycolor','none')  


axes(panel(2))
hold on
h5_ed85 = pie([0.3 0.7])
colormap([0.9 0.9 0.9;0.98,0.79,0.50])           
axis off



axes(panel(3))
hold on
pd_his = makedist('Normal','mu',0,'sigma',0.7);
x_hist = -2.5:0.1:2.5
y_hist_pdf = pdf(pd_his,x_hist)
y_hist_cdf = cdf(pd_his,x_hist)

pd_f = makedist('Normal','mu',7,'sigma',1);
x_f = 4:0.1:10
y_f_pdf = pdf(pd_f,x_f)
y_f_cdf = cdf(pd_f,x_f)

plot(x_hist,y_hist_pdf,'k-','LineWidth',1.2)
plot(x_f,y_f_pdf,'r-','LineWidth',1.2)

% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.02;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.5);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.5);

set(gca,'Fontname','Arial','FontSize',11);
xlabel('cLand')
ylabel('PDF')
xticks([]);yticks([]);

text(1.26,0.55,'$\overline{H}$',...
    'HorizontalAlignment','center','FontWeight','bold',...
        'FontName','Arial','FontSize',12,'Interpreter','latex')
text(7,0.43,'$\overline{F}$','color','r',...
    'HorizontalAlignment','center','FontWeight','bold',...
        'FontName','Arial','FontSize',12,'Interpreter','latex')

axes(panel(4))
hold on
x_cdf2 = -2.5:0.1:10
y_hist_cdf = cdf(pd_his,x_cdf2)
y_f_cdf = cdf(pd_f,x_cdf2)
X=[x_cdf2,fliplr(x_cdf2)];                   %#create continuous x value array for plotting
Y=[y_hist_cdf,fliplr(y_f_cdf)];              %#create y values for out and then back
fill(X, Y,[1.00,0.93,0.90])
plot(x_cdf2,y_hist_cdf,'k-','LineWidth',1.2)
y_f_cdf2 = cdf(pd_f,x_f)
plot(x_f,y_f_cdf2,'r-','LineWidth',1.2)
% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.02;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.5);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.5);
set(gca, 'XLim',[-5.5 11])
xticks([]);yticks([]);
xlabel('cLand')
ylabel('CDF')
set(gca,'Fontname','Arial','FontSize',11);
text(3.9,0.72,'A1',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',12)    

axes(panel(5))
hold on
pd_M = makedist('Normal','mu',0,'sigma',0.8);
x_M = -2.5:0.1:2.5
y_M_pdf = pdf(pd_M,x_M)
plot(x_M,y_M_pdf,'r-','LineWidth',1.2)
pd_M1 = makedist('Normal','mu',-2,'sigma',0.7);
x_M1 = -4:0.1:0
y_M1_pdf = pdf(pd_M1,x_M1)
plot(x_M1,y_M1_pdf,'r--','LineWidth',1.2)
pd_M2 = makedist('Normal','mu',1.5,'sigma',0.5);
x_M2 = 0:0.1:3
y_M2_pdf = pdf(pd_M2,x_M2)
plot(x_M2,y_M2_pdf,'r--','LineWidth',1.2)
pd_M3 = makedist('Normal','mu',0.6,'sigma',1);
x_M3 = -2.4:0.1:3.6
y_M3_pdf = pdf(pd_M3,x_M3)
plot(x_M3,y_M3_pdf,'r--','LineWidth',1.2)
% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.02;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.5);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.5);
set(gca,'YLim',[0,0.9])
%text(-3.5,0.83,'(c)',...
%    'HorizontalAlignment','center',...
%        'FontName','Arial','FontSize',12)
text(-2,0.63,'M_1',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',12)
text(-0.1,0.53,'$\overline{M}$',...
    'HorizontalAlignment','center','FontWeight','bold',...
        'FontName','Arial','FontSize',12,'Interpreter','latex')
text(2.564,0.25,'M_2',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',12)    
text(2.8,0.73,'M_n',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',12)    
    
xlabel('Change in cLand')
ylabel('PDF')
set(gca,'Fontname','Arial','FontSize',11);


axes(panel(6))
hold on
x_cdf4 = -4:0.1:3.6;
x_M1 =  -4:0.4:0;
x_M2 = 0:0.1:3;
x_M3 = -2.4:0.6:3.6;
M3_all = [x_M1 x_M2 x_M3];
y_Mcdf = cdf(pd_M,x_cdf4);
[cdf_M3, x_MM] = ecdf(M3_all(:));

X4=[x_cdf4,fliplr(x_MM')]                   %#create continuous x value array for plotting
Y4=[y_Mcdf,fliplr(cdf_M3')];                %#create y values for out and then back
fill(X4, Y4,[1.00,0.83,0.44],'EdgeColor','none')
plot(x_cdf4,y_Mcdf,'r-','LineWidth',1.2)
plot(x_MM,cdf_M3,'r--','LineWidth',1.2)
% add arrow to the axis
fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.02;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.5);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.5);
xticks([]);yticks([]);
set(gca,'XLim',[-5,4])

xlabel('Change in cLand')
ylabel('CDF')
set(gca,'Fontname','Arial','FontSize',11);
%text(-4.3,0.92,'(d)',...
%    'HorizontalAlignment','center',...
%        'FontName','Arial','FontSize',12)
text(-1,0.34,'A2',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',12)

%%
clear;
clc;
step3 = axes('units','normalized', 'position',[0.38 0 1 1]);
uistack(step3,'bottom');
set(step3,'color',[0.92,1.00,0.91])
set(step3,'handlevisibility','off', ...
            'visible','on','XColor','none','YColor','none')

panel = tight_subplot(1,1,[0.09,0.06],[0.25,0.25],[0.71,0.03]);
hold on
set(gca,'XLim',[ -0.2 1],'YLim',[0 1])
set(gca,'XTick',[0 0.2 0.4 0.6 0.8 1])
set(gca,'XTickLabel',[ 0 0.2 0.4 0.6 0.8 1])
set(gca,'YTick',[0 0.2 0.4 0.6 0.8 1])
set(gca,'YTickLabel',[ 0 0.2 0.4 0.6 0.8 1])

fig_pos=get(gca,'Position');
xp1=fig_pos(1);
xp2=fig_pos(1)+fig_pos(3)+0.02;
yp1=fig_pos(2);
yp2=fig_pos(2)+fig_pos(4)+0.04;
a1=annotation('arrow', [xp1 xp2],[yp1 yp1],'lineWidth',1.5);
a2=annotation('arrow', [xp1 xp1],[yp1 yp2],'lineWidth',1.5);
set(gca,'Fontname','Arial','FontSize',11);
%set(gca,'color','none')
ylabel('Fraction of models with significant change',...
    'Fontname','Arial','FontSize',11)
xlabel('Agreement across models','Fontname','Arial','FontSize',11)

% adding criteria
uncert = patch([-0.2 0.2 0.2 -0.2],[0.5 0.5 1 1],'g');
uncert.FaceColor = [0.5 0.5 0.5]
uncert.EdgeColor = 'none'

robust = patch([0.6 1 1 0.6],[0.5 0.5 1 1],'g');
robust.FaceColor = [0.38,0.89,0.02]
robust.EdgeColor = 'none'


h = patch([-0.2 1 1 -0.2],[0 0 0.2 0.2],'g');
h2 = hatchfill2(h,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.6 0.6 0.6],'HatchAngle',40,'HatchDensity',50);
h.FaceColor = 'none'
h.EdgeColor = 'none'
plot([-0.2 1],[0.2 0.2] ,'k--')


plot([-0.2 0.2],[0.5 0.5] ,'k--')
plot([0.6 1],[0.5 0.5] ,'k--')
plot([0.2 0.2],[0.5 1],'k--')
plot([0.6 0.6],[0.5 1],'k--')
plot([-0.2 1],[1 1],'k-','lineWidth',1.5)
plot([1 1],[0 1],'k-','lineWidth',1.2)




text(-0.16,0.71,{'Inconsistent'; 'model';'response'},'Fontname','Arial','FontSize',10,'color','red')
text(0.6,0.71,{'Agreement on'; 'significant';'change'},'Fontname','Arial','FontSize',10,'color','red')
text(0,0.1,{'Agreement on marginal change'},'Fontname','Arial','FontSize',10,'color','red')
text(0.1,0.35,{'no evidence showing robust or uncertian projections'},'Fontname','Arial','FontSize',10,'color','red')


































































