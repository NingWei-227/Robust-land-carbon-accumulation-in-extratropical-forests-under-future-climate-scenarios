clear;
clc;

%% the spatial pattens of robustness and uncertian in NPP and Rh change under three SSPs
% ssp126
% NPP
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\NPP')
ReNPP_26 = csvread('NPPnet_cmip6.csv'); % map of reNPP over 2006-2100 estimated as the difference between 2081-2100 and1986-2005
map1_26_05_npp = csvread('map1_0.6_npp.csv');  % the mask of robust change in NPP (Fraction>0.5)
map3_26_05_npp = csvread('mapfrac05_npp.csv'); % the mask of uncertain change in NPP (Fraction>0.5)
% Rh
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh')
ReRh_26 = csvread('RHnet_cmip6.csv'); % map of reRh over 2006-2100 estimated as the difference between 2081-2100 and1986-2005
%the mask of robust change in Rh
map1_26_05_rh = csvread('map1_0.6_rh.csv');  
% the mask of uncertain change in Rh
map3_26_05_rh = csvread('mapfrac05_rh.csv'); 

% ssp245
%NPP
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp2-4.5\NPP')  
ReNPP_45 = csvread('NPPnet_cmip6.csv');     % map of reNPP over 2006-2100 estimated as the difference between 2081-2100 and1986-2005   
map1_45_npp = csvread('map1_0.6_npp.csv');  % the mask of robust change in npp (Fraction>0.5)
map3_45_npp = csvread('mapfrac05_npp.csv'); % the mask of uncertain change in npp (Fraction>0.5)
%Rh
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp2-4.5\Rh')
ReRh_45 = csvread('RHnet_cmip6.csv'); % map of reRh over 2006-2100 estimated as the difference between 2081-2100 and1986-2005
%the mask of robust change in Rh
map1_45_rh = csvread('map1_0.6_rh.csv');   
 % the mask of uncertain change in rh
map3_45_rh = csvread('mapfrac05_rh.csv'); 

% ssp585
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP')
ReNPP_85 = csvread('NPPnet_cmip6.csv');     
map1_85_npp = csvread('map1_0.6_npp.csv');         
map3_85_npp = csvread('mapfrac05_npp.csv');   

%Rh
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\Rh')
ReRh_85 = csvread('RHnet_cmip6.csv');
% the mask of robust change in land carbon storage (Fraction>0.8)
map1_85_rh = csvread('map1_0.6_rh.csv');   
% the mask of uncertain change in land carbon storage (Fraction>0.8)
map3_85_rh = csvread('mapfrac05_rh.csv'); 


%%
figure
set(gcf,'position',[100 100 960 589])
maps = tight_subplot(3,2,[-0.1 -0.01],[0.09 -0.05],[0.02 0.26])

GlobalMap(1:180,1:360) = NaN;
GlobalMap(151:180,:) = [];
GlobalMap = flipud(GlobalMap);
raster_map = georasterref('RasterSize',size(GlobalMap),'Latlim',[-60 90],'Lonlim',[-180 180]);
% SSP126
axes(maps(1)) %(Fraction > 50)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(GlobalMap,raster_map, 'DisplayType','surface','Zdata',zeros(size(GlobalMap)),'CData',GlobalMap);
set(gca,'box','off')
axis off
colorbar('off')
% adding the masks of robustness and uncertianty   
[m,n] = size(GlobalMap);
lat = 89.5:-1:-89.5;
lon = -179.5:1:179.5;
k_patch1 = 1
k_patch3 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_26_05_npp(i,j) == 1
        
            X26_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y26_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_26_05_npp(i,j) == 3
           X26_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y26_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
    end    
end    
% fill the robust region with green
if k_patch1 > 10
    h3 = patchm(Y26_patch1,X26_patch1,[0.38,0.89,0.02]);
end
h3.EdgeColor = 'none'    
% fill the uncertain region with grey
if k_patch3 > 10
    h3 = patchm(Y26_patch3,X26_patch3,[0.50,0.50,0.50]);
end
h3.EdgeColor = 'none' 
text(-2.36,1.43, '(a) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);
    
    
axes(maps(2)) %(Fraction > 80)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(GlobalMap,raster_map, 'DisplayType','surface','Zdata',zeros(size(GlobalMap)),'CData',GlobalMap);
set(gca,'box','off')
axis off
colorbar('off')
% adding the masks of robustness and uncertianty   
[m,n] = size(GlobalMap);
lat = 89.5:-1:-89.5;
lon = -179.5:1:179.5;
k_patch1 = 1
k_patch3 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_26_05_rh(i,j) == 1
        
            X26_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y26_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_26_05_rh(i,j) == 3
           X26_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y26_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
    end    
end    
% fill the robust region with green
if k_patch1 > 10
    h3 = patchm(Y26_patch1,X26_patch1,[0.38,0.89,0.02]);
end
h3.EdgeColor = 'none'    
% fill the uncertain region with grey
if k_patch3 > 10
    h3 = patchm(Y26_patch3,X26_patch3,[0.50,0.50,0.50]);
end
h3.EdgeColor = 'none' 
text(-2.36,1.43, '(b) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);    
    
    
  
%% SSP245
axes(maps(3)) %(Fraction > 50)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(GlobalMap,raster_map, 'DisplayType','surface','Zdata',zeros(size(GlobalMap)),'CData',GlobalMap);
set(gca,'box','off')
axis off
colorbar('off')
% adding the masks of robustness and uncertianty  
[m,n] = size(GlobalMap);
lat = 89.5:-1:-89.5;
lon = -179.5:1:179.5;
k_patch1 = 1
k_patch3 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_45_npp(i,j) == 1
        
            X45_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y45_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_45_npp(i,j) == 3
           X45_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y45_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
    end    
end    
% fill the robust region with green
if k_patch1 > 10
    h3 = patchm(Y45_patch1,X45_patch1,[0.38,0.89,0.02]);
end
h3.EdgeColor = 'none'    
% fill the uncertain region with grey
if k_patch3 > 10
    h3 = patchm(Y45_patch3,X45_patch3,[0.50,0.50,0.50]);
end
h3.EdgeColor = 'none'  
text(-2.36,1.43, '(c) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

    
axes(maps(4)) %(Fraction > 80)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(GlobalMap,raster_map, 'DisplayType','surface','Zdata',zeros(size(GlobalMap)),'CData',GlobalMap);
set(gca,'box','off')
axis off
colorbar('off')
% adding the masks of robustness and uncertianty  
[m,n] = size(GlobalMap);
lat = 89.5:-1:-89.5;
lon = -179.5:1:179.5;
k_patch1 = 1
k_patch3 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_45_rh(i,j) == 1
        
            X45_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y45_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_45_rh(i,j) == 3
           X45_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y45_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
    end    
end    
% fill the robust region with green
if k_patch1 > 10
    h3 = patchm(Y45_patch1,X45_patch1,[0.38,0.89,0.02]);
end
h3.EdgeColor = 'none'    
% fill the uncertain region with grey
if k_patch3 > 10
    h3 = patchm(Y45_patch3,X45_patch3,[0.50,0.50,0.50]);
end
h3.EdgeColor = 'none'  
text(-2.36,1.43, '(d) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);    
    
        
%% SSP585
axes(maps(5)) %(Fraction > 50)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(GlobalMap,raster_map, 'DisplayType','surface','Zdata',zeros(size(GlobalMap)),'CData',GlobalMap);
%colormap(mycolor_Cnet)
%caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
% adding the masks of robustness and uncertianty
[m,n] = size(GlobalMap);
lat = 89.5:-1:-89.5;
lon = -179.5:1:179.5;
k_patch1 = 1
k_patch3 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_85_npp(i,j) == 1
        
            X85_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y85_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_85_npp(i,j) == 3
           X85_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y85_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
    end    
end    
% fill the robust region with green
if k_patch1 > 10
    h3 = patchm(Y85_patch1,X85_patch1,[0.38,0.89,0.02]);
end
h3.EdgeColor = 'none'    
% fill the uncertain region with grey
if k_patch3 > 10
    h3 = patchm(Y85_patch3,X85_patch3,[0.50,0.50,0.50]);
end
h3.EdgeColor = 'none'  
text(-2.36,1.43, '(e) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);
text(-0.25,-2,['Spatial pattern of robustness and uncertainty' newline 'in projection of NPP change'],...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11)           
    
    

axes(maps(6)) %(Fraction > 80)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(GlobalMap,raster_map, 'DisplayType','surface','Zdata',zeros(size(GlobalMap)),'CData',GlobalMap);
%colormap(mycolor_Cnet)
%caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
% adding the masks of robustness and uncertianty
[m,n] = size(GlobalMap);
lat = 89.5:-1:-89.5;
lon = -179.5:1:179.5;
k_patch1 = 1
k_patch3 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_85_rh(i,j) == 1
        
            X85_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y85_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_85_rh(i,j) == 3
           X85_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y85_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
    end    
end    
% fill the robust region with green
if k_patch1 > 10
    h3 = patchm(Y85_patch1,X85_patch1,[0.38,0.89,0.02]);
end
h3.EdgeColor = 'none'    
% fill the uncertain region with grey
if k_patch3 > 10
    h3 = patchm(Y85_patch3,X85_patch3,[0.50,0.50,0.50]);
end
h3.EdgeColor = 'none'  
text(-2.36,1.43, '(f) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);    

text(-0.25,-2,['Spatial pattern of robustness and uncertainty ' newline 'in projection of Rh change'],...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11)       
    
%%
% add the area fraction of robustness and uncertianty to each map (Fraction > 50%)
%ssp126
ReNPP_26(151:180,:) = [];
map1_26_05_npp(151:180,:) = [];
map3_26_05_npp(151:180,:) = [];
cell_all26 = nansum(~isnan(ReNPP_26(:)))
rbt_26_fra = nansum(~isnan(map1_26_05_npp(:))) ./cell_all26
uncert_26_fra = nansum(~isnan(map3_26_05_npp(:)))./cell_all26
other_26_fra = 1 - rbt_26_fra - uncert_26_fra
%ssp245
ReNPP_45(151:180,:) = [];
map1_45_npp(151:180,:) = [];
map3_45_npp(151:180,:) = [];
cell_all45 = nansum(~isnan(ReNPP_45(:)))
rbt_45_fra = nansum(~isnan(map1_45_npp(:))) ./cell_all45
uncert_45_fra = nansum(~isnan(map3_45_npp(:)))./cell_all45
other_45_fra = 1 - rbt_45_fra - uncert_45_fra
%ssp585
ReNPP_85(151:180,:) = [];
map1_85_npp(151:180,:) = [];
map3_85_npp(151:180,:) = [];
cell_all85 = nansum(~isnan(ReNPP_85(:)))
rbt_85_fra = nansum(~isnan(map1_85_npp(:))) ./cell_all85
uncert_85_fra = nansum(~isnan(map3_85_npp(:)))./cell_all85
other_85_fra = 1 - rbt_85_fra - uncert_85_fra


panel = tight_subplot(3,1,[0.167 0.25],[0.167 0.14],[0.03 0.892]) 
axes(panel(1))
hold on
bar(1,rbt_26_fra,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_26_fra,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
bar(3,other_26_fra,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1.5)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 4],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});
%set(gca,'color','none');

axes(panel(2))
hold on
bar(1,rbt_45_fra,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_45_fra,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
bar(3,other_45_fra,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1.5)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 4],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});

axes(panel(3))
hold on
bar(1,rbt_85_fra,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_85_fra,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
bar(3,other_85_fra,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1.5)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 4],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});
leg = legend({'Robust','Uncertian','Others'})
set(leg,'NumColumns',3,'FontName','Arial','FontSize',9,'Position',[0.0064,0.12,0.33,0.031])

%% add the area fraction of robustness and uncertianty to each map (Fraction > 80%)
%ssp126
ReRh_26(151:180,:) = [];
map1_26_05_rh(151:180,:) = [];
map3_26_05_rh(151:180,:) = [];
cell_all26_08 = nansum(~isnan(ReRh_26(:)))
rbt_26_fra_08 = nansum(~isnan(map1_26_05_rh(:))) ./cell_all26_08
uncert_26_fra_08 = nansum(~isnan(map3_26_05_rh(:)))./cell_all26_08
other_26_fra_08 = 1 - rbt_26_fra_08 - uncert_26_fra_08
%ssp245
ReRh_45(151:180,:) = [];
map1_45_rh(151:180,:) = [];
map3_45_rh(151:180,:) = [];
cell_all45_08 = nansum(~isnan(ReRh_45(:)))
rbt_45_fra_08 = nansum(~isnan(map1_45_rh(:))) ./cell_all45_08
uncert_45_fra_08 = nansum(~isnan(map3_45_rh(:)))./cell_all45_08
other_45_fra_08 = 1 - rbt_45_fra_08 - uncert_45_fra_08
%ssp585
ReRh_85(151:180,:) = [];
map1_85_rh(151:180,:) = [];
map3_85_rh(151:180,:) = [];
cell_all85_08 = nansum(~isnan(ReRh_85(:)))
rbt_85_fra_08 = nansum(~isnan(map1_85_rh(:))) ./cell_all85_08
uncert_85_fra_08 = nansum(~isnan(map3_85_rh(:)))./cell_all85_08
other_85_fra_08 = 1 - rbt_85_fra_08 - uncert_85_fra_08


panel = tight_subplot(3,1,[0.167 0.25],[0.167 0.14],[0.39 0.532]) 
axes(panel(1))
hold on
bar(1,rbt_26_fra_08,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_26_fra_08,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
bar(3,other_26_fra_08,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1.5)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 4],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});
%set(gca,'color','none');

axes(panel(2))
hold on
bar(1,rbt_45_fra_08,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_45_fra_08,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
bar(3,other_45_fra_08,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1.5)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 4],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});

axes(panel(3))
hold on
bar(1,rbt_85_fra_08,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_85_fra_08,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
bar(3,other_85_fra_08,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1.5)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 4],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});
leg = legend({'Robust','Uncertian','Others'})
set(leg,'NumColumns',3,'FontName','Arial','FontSize',9,'Position',[0.377,0.12,0.33,0.031])





