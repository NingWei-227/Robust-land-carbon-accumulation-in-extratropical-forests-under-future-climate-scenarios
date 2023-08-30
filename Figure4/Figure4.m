
%% code used to draw Figure4
clear;clc
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure5\UN_factors_regional\ssp126_maps_factors')
[num_reNPP26,text_reNPP26,raw_reNPP26]=xlsread('reNPP_ctr.csv');
[num_reTauE26,text_reTauE26,raw_reTauE26]=xlsread('reTauE_ctr.csv');
[num_reNPPtauE26,text_reNPPtauE26,raw_reNPPtauE26]=xlsread('reNPPtauE_ctr.csv');
[num_reXp26,text_reXp26,raw_reXp26]=xlsread('reXp_ctr.csv');

for rowID=1:180
    for colID =1:360
        if raw_reNPP26{rowID,colID}=='NA'
            raw_reNPP26{rowID,colID}=-9999;
        end 
        
        if raw_reTauE26{rowID,colID}=='NA'
            raw_reTauE26{rowID,colID}=-9999;
        end 
        
        if raw_reNPPtauE26{rowID,colID}=='NA'
            raw_reNPPtauE26{rowID,colID}=-9999;
        end
        
        if raw_reXp26{rowID,colID}=='NA'
            raw_reXp26{rowID,colID}=-9999;
        end
    end
end

reNPP26_ctr = cell2mat(raw_reNPP26); reNPP26_ctr(reNPP26_ctr==-9999) = nan;
reTauE26_ctr = cell2mat(raw_reTauE26); reTauE26_ctr(reTauE26_ctr==-9999) = nan;
reNPPtauE26_ctr = cell2mat(raw_reNPPtauE26); reNPPtauE26_ctr(reNPPtauE26_ctr==-9999) = nan;
reXp26_ctr = cell2mat(raw_reXp26); reXp26_ctr(reXp26_ctr==-9999) = nan;
clearvars -except reNPP26_ctr reTauE26_ctr reNPPtauE26_ctr reXp26_ctr

cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure5\UN_factors_regional\ssp245_maps_factors')
[num_reNPP45,text_reNPP45,raw_reNPP45]=xlsread('reNPP45_ctr.csv');
[num_reTauE45,text_reTauE45,raw_reTauE45]=xlsread('reTauE45_ctr.csv');
[num_reNPPtauE45,text_reNPPtauE45,raw_reNPPtauE45]=xlsread('reNPPtauE45_ctr.csv');
[num_reXp45,text_reXp45,raw_reXp45]=xlsread('reXp45_ctr.csv');

for rowID=1:180
    for colID =1:360
        if raw_reNPP45{rowID,colID}=='NA'
            raw_reNPP45{rowID,colID}=-9999;
        end 
        
        if raw_reTauE45{rowID,colID}=='NA'
            raw_reTauE45{rowID,colID}=-9999;
        end 
        
        if raw_reNPPtauE45{rowID,colID}=='NA'
            raw_reNPPtauE45{rowID,colID}=-9999;
        end
        
        if raw_reXp45{rowID,colID}=='NA'
            raw_reXp45{rowID,colID}=-9999;
        end
    end
end

reNPP45_ctr = cell2mat(raw_reNPP45); reNPP45_ctr(reNPP45_ctr==-9999) = nan;
reTauE45_ctr = cell2mat(raw_reTauE45); reTauE45_ctr(reTauE45_ctr==-9999) = nan;
reNPPtauE45_ctr = cell2mat(raw_reNPPtauE45); reNPPtauE45_ctr(reNPPtauE45_ctr==-9999) = nan;
reXp45_ctr = cell2mat(raw_reXp45); reXp45_ctr(reXp45_ctr==-9999) = nan;
clearvars -except reNPP26_ctr reTauE26_ctr reNPPtauE26_ctr reXp26_ctr ...
                  reNPP45_ctr reTauE45_ctr reNPPtauE45_ctr reXp45_ctr


cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure5\UN_factors_regional\ssp285_maps_factors')
[num_reNPP85,text_reNPP85,raw_reNPP85]=xlsread('reNPP85_ctr.csv');
[num_reTauE85,text_reTauE85,raw_reTauE85]=xlsread('reTauE85_ctr.csv');
[num_reNPPtauE85,text_reNPPtauE85,raw_reNPPtauE85]=xlsread('reNPPtauE85_ctr.csv');
[num_reXp85,text_reXp85,raw_reXp85]=xlsread('reXp85_ctr.csv');

for rowID=1:180
    for colID =1:360
        if raw_reNPP85{rowID,colID}=='NA'
            raw_reNPP85{rowID,colID}=-9999;
        end 
        
        if raw_reTauE85{rowID,colID}=='NA'
            raw_reTauE85{rowID,colID}=-9999;
        end 
        
        if raw_reNPPtauE85{rowID,colID}=='NA'
            raw_reNPPtauE85{rowID,colID}=-9999;
        end
        
        if raw_reXp85{rowID,colID}=='NA'
            raw_reXp85{rowID,colID}=-9999;
        end
    end
end

reNPP85_ctr = cell2mat(raw_reNPP85); reNPP85_ctr(reNPP85_ctr==-9999) = nan;
reTauE85_ctr = cell2mat(raw_reTauE85); reTauE85_ctr(reTauE85_ctr==-9999) = nan;
reNPPtauE85_ctr = cell2mat(raw_reNPPtauE85); reNPPtauE85_ctr(reNPPtauE85_ctr==-9999) = nan;
reXp85_ctr = cell2mat(raw_reXp85); reXp85_ctr(reXp85_ctr==-9999) = nan;
clearvars -except reNPP26_ctr reTauE26_ctr reNPPtauE26_ctr reXp26_ctr ...
                  reNPP45_ctr reTauE45_ctr reNPPtauE45_ctr reXp45_ctr ...
                  reNPP85_ctr reTauE85_ctr reNPPtauE85_ctr reXp85_ctr
              
              
dom26_fct(1:180,1:360) = nan;
dom45_fct(1:180,1:360) = nan;
dom85_fct(1:180,1:360) = nan;

for i=1:180 
    for j =1:360 
        
        %ssp126
        reNPP26_fct = reNPP26_ctr(i,j);
        reTauE26_fct = reTauE26_ctr(i,j);
        reNPPtauE26_fct = reNPPtauE26_ctr(i,j);
        reXp26_fct = reXp26_ctr(i,j);
        
        All26_fcts = [reNPP26_fct reTauE26_fct reNPPtauE26_fct reXp26_fct];
        
        if ~isnan(All26_fcts) == 1
            if max(All26_fcts) == reNPP26_fct
                dom26_fct(i,j) = 1;
            end
            
            if max(All26_fcts) == reTauE26_fct
                dom26_fct(i,j) = 2;
            end  
            
            if max(All26_fcts) == reNPPtauE26_fct
                dom26_fct(i,j) = 3;
            end  
            
            if max(All26_fcts) == reXp26_fct
                dom26_fct(i,j) = 4;
            end  
        end
        
        %ssp245
        reNPP45_fct = reNPP45_ctr(i,j);
        reTauE45_fct = reTauE45_ctr(i,j);
        reNPPtauE45_fct = reNPPtauE45_ctr(i,j);
        reXp45_fct = reXp45_ctr(i,j);
        
        All45_fcts = [reNPP45_fct reTauE45_fct reNPPtauE45_fct reXp45_fct];
        
        if ~isnan(All45_fcts) == 1
            if max(All45_fcts) == reNPP45_fct
                dom45_fct(i,j) = 1;
            end
            
            if max(All45_fcts) == reTauE45_fct
                dom45_fct(i,j) = 2;
            end  
            
            if max(All45_fcts) == reNPPtauE45_fct
                dom45_fct(i,j) = 3;
            end  
            
            if max(All45_fcts) == reXp45_fct
                dom45_fct(i,j) =4;
            end  
        end
        
        %ssp585
        reNPP85_fct = reNPP85_ctr(i,j);
        reTauE85_fct = reTauE85_ctr(i,j);
        reNPPtauE85_fct = reNPPtauE85_ctr(i,j);
        reXp85_fct = reXp85_ctr(i,j);
        
        All85_fcts = [reNPP85_fct reTauE85_fct reNPPtauE85_fct reXp85_fct];
        
        if ~isnan(All85_fcts) == 1
            if max(All85_fcts) == reNPP85_fct
                dom85_fct(i,j) = 1;
            end
            
            if max(All85_fcts) == reTauE85_fct
                dom85_fct(i,j) = 2;
            end  
            
            if max(All85_fcts) == reNPPtauE85_fct
                dom85_fct(i,j) = 3;
            end  
            
            if max(All85_fcts) == reXp85_fct
                dom85_fct(i,j) = 4;
            end  
        end
        
  
    end
end

clearvars -except dom26_fct dom45_fct dom85_fct
    
dom26_fct_map = dom26_fct;
dom26_fct_map(151:180,:) = [];
dom26_fct_map = flipud(dom26_fct_map);
raster26_domFct = georasterref('RasterSize',size(dom26_fct_map),'Latlim',[-60 90],'Lonlim',[-180 180]);

dom45_fct_map = dom45_fct;
dom45_fct_map(151:180,:) = [];
dom45_fct_map = flipud(dom45_fct_map);
raster45_domFct = georasterref('RasterSize',size(dom45_fct_map),'Latlim',[-60 90],'Lonlim',[-180 180]);

dom85_fct_map = dom85_fct;
dom85_fct_map(151:180,:) = [];
dom85_fct_map = flipud(dom85_fct_map);
raster85_domFct = georasterref('RasterSize',size(dom85_fct_map),'Latlim',[-60 90],'Lonlim',[-180 180]);


%%
mycolor_fct = [0.47 0.67 0.19;...
                0.93 0.69 0.13;...
                0.72 0.72 0.87;...
                0  0 1];
figure
set(gcf,'position',[100 100 788 589])
maps = tight_subplot(3,1,[-0.1 0.04],[0.09 -0.05],[0.02 0.5])

%ssp126
axes(maps(1))
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(dom26_fct_map,raster26_domFct, 'DisplayType','surface','Zdata',zeros(size(dom26_fct_map)),'CData',dom26_fct_map);
colormap(mycolor_fct)
caxis([1 4])
set(gca,'box','off')
axis off
colorbar('off')
text(-2.242,1.457, '(a) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11);

%ssp245
axes(maps(2))
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(dom45_fct_map,raster45_domFct, 'DisplayType','surface','Zdata',zeros(size(dom45_fct_map)),'CData',dom45_fct_map);
colormap(mycolor_fct)
caxis([1 4])
set(gca,'box','off')
axis off
colorbar('off')
text(-2.242,1.457, '(b) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11);

%ssp585
axes(maps(3))
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(dom85_fct_map,raster85_domFct, 'DisplayType','surface','Zdata',zeros(size(dom85_fct_map)),'CData',dom85_fct_map);
colormap(mycolor_fct)
caxis([1 4])
set(gca,'box','off')
axis off
colorbar('off')
text(-2.242,1.457, '(c) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11);
    
leg_h = colorbar
leg_h.Location = 'southoutside'
leg_h.Position = [0.052,0.11,0.42,0.025];
leg_h.Ticks = [1,2,3,4]
leg_h.TickLength = 0;
leg_h.TickLabels = {}
text(-2.1,-1.6,'\DeltaNPP X \tau_E_0',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',9)  
text(-0.64,-1.6,'NPP_0 X \Delta\tau_E',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',9)     
text(0.79,-1.6,'\DeltaNPP X \Delta\tau_E',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',9) 
text(2,-1.6,'\DeltaXp',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',9)     

% the faction of different components
% SSP126
reNPP26_frc = nansum(dom26_fct(:)==1)./nansum(~isnan(dom26_fct(:)))
reTauE26_frc = nansum(dom26_fct(:)==2)./nansum(~isnan(dom26_fct(:)))
re2NT26_frc = nansum(dom26_fct(:)==3)./nansum(~isnan(dom26_fct(:)))
reXp26_frc = nansum(dom26_fct(:)==4)./nansum(~isnan(dom26_fct(:)))

% SSP245
reNPP45_frc = nansum(dom45_fct(:)==1)./nansum(~isnan(dom45_fct(:)))
reTauE45_frc = nansum(dom45_fct(:)==2)./nansum(~isnan(dom45_fct(:)))
re2NT45_frc = nansum(dom45_fct(:)==3)./nansum(~isnan(dom45_fct(:)))
reXp45_frc = nansum(dom45_fct(:)==4)./nansum(~isnan(dom45_fct(:)))

% SSP585
reNPP85_frc = nansum(dom85_fct(:)==1)./nansum(~isnan(dom85_fct(:)))
reTauE85_frc = nansum(dom85_fct(:)==2)./nansum(~isnan(dom85_fct(:)))
re2NT85_frc = nansum(dom85_fct(:)==3)./nansum(~isnan(dom85_fct(:)))
reXp85_frc = nansum(dom85_fct(:)==4)./nansum(~isnan(dom85_fct(:)))
  
    
figs_4fct = tight_subplot(3,1,[0.04 0.04],[0.12 0.03],[0.65 0.04]) 
axes(figs_4fct(1));
hold on
bbar26_bios(1) = barh(4, reNPP26_frc,'FaceColor',mycolor_fct(1,:),'EdgeColor','none','BarWidth',0.7)
bbar26_bios(2) = barh(3, reTauE26_frc,'FaceColor',mycolor_fct(2,:),'EdgeColor','none','BarWidth',0.7)
bbar26_bios(3) = barh(2, re2NT26_frc,'FaceColor',mycolor_fct(3,:),'EdgeColor','none','BarWidth',0.7)
bbar26_bios(4) = barh(1, reXp26_frc,'FaceColor',mycolor_fct(4,:),'EdgeColor','none','BarWidth',0.7)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','off')
set(gca,'XLim',[0 0.7],'YLim',[0 5]);
yticks([1 2 3 4]);
yticklabels({'\DeltaXp','\DeltaNPP X \Delta\tau_E','NPP_0 X \Delta\tau_E','\DeltaNPP X \tau_E_0'});
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7]);
xticklabels({'0' '10' '20' '30' '40' '50' '60' '70 %'});
set(gca,'Fontname','Arial','FontSize',10);


axes(figs_4fct(2));
hold on
bbar45_bios(1) = barh(4, reNPP45_frc,'FaceColor',mycolor_fct(1,:),'EdgeColor','none','BarWidth',0.7)
bbar45_bios(2) = barh(3, reTauE45_frc,'FaceColor',mycolor_fct(2,:),'EdgeColor','none','BarWidth',0.7)
bbar45_bios(3) = barh(2, re2NT45_frc,'FaceColor',mycolor_fct(3,:),'EdgeColor','none','BarWidth',0.7)
bbar45_bios(4) = barh(1, reXp45_frc,'FaceColor',mycolor_fct(4,:),'EdgeColor','none','BarWidth',0.7)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','off')
set(gca,'XLim',[0 0.7],'YLim',[0 5]);
yticks([1 2 3 4]);
yticklabels({'\DeltaXp','\DeltaNPP X \Delta\tau_E','NPP_0 X \Delta\tau_E','\DeltaNPP X \tau_E_0'});
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7]);
xticklabels({'0' '10' '20' '30' '40' '50' '60' '70 %'});
set(gca,'Fontname','Arial','FontSize',10);


axes(figs_4fct(3));
hold on        
bbar85_bios(1) = barh(4, reNPP85_frc,'FaceColor',mycolor_fct(1,:),'EdgeColor','none','BarWidth',0.7)
bbar85_bios(2) = barh(3, reTauE85_frc,'FaceColor',mycolor_fct(2,:),'EdgeColor','none','BarWidth',0.7)
bbar85_bios(3) = barh(2, re2NT85_frc,'FaceColor',mycolor_fct(3,:),'EdgeColor','none','BarWidth',0.7)
bbar85_bios(4) = barh(1, reXp85_frc,'FaceColor',mycolor_fct(4,:),'EdgeColor','none','BarWidth',0.7)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','off')
set(gca,'XLim',[0 0.7],'YLim',[0 5]);
yticks([1 2 3 4]);
yticklabels({'\DeltaXp','\DeltaNPP X \Delta\tau_E','NPP_0 X \Delta\tau_E','\DeltaNPP X \tau_E_0'});
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7]);
xticklabels({'0' '10' '20' '30' '40' '50' '60' '70 %'});
set(gca,'Fontname','Arial','FontSize',10);           
xlabel('Area fraction of different components','Fontname','Arial','FontSize',12)
      
    
    
    