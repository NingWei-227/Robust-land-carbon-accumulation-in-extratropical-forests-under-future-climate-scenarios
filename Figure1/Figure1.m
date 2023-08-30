clear;clc;
% code used to produce Figure1 
% the spatial and temporal pattens of predicted land carbon change (Cnet) under three SSPs in CMIP6

%% The temporal dynamics of land carbon change over 2006-2100
% ssp126
cd('G:\CMIP56_Csink\4_MatData\temporal_data\ssp126')
load('cLand_cmip6_tmp126.mat')        
% estimate the temporal changes in land C storage reltiave to the 1986-2005 mean
Cnet_26 = [CLbcc_tmp(157:251)-nanmean(CLbcc_tmp(137:156)),...
    CLcan_tmp(157:251)-nanmean(CLcan_tmp(137:156)),...
    CLcesm_W_tmp(157:251)-nanmean(CLcesm_W_tmp(137:156)),...  % BCC_CSM2_MR, CanESM5 CESM2, CESM2 
   CLuk_tmp(157:251)-nanmean(CLuk_tmp(137:156)),...
   CLipsl_tmp(157:251)-nanmean(CLipsl_tmp(137:156)),...
   CLmic_tmp(157:251)-nanmean(CLmic_tmp(137:156)),...      % UKESM1_0_LL, IPSL_CM6A_LR, MIROC_ES2L  
   CLmpi_tmp(157:251)-nanmean(CLmpi_tmp(137:156)),...
   CLnor_tmp(157:251)-nanmean(CLnor_tmp(137:156)),...      % MPI-ESM1-2-LR, NorESM2
   CLass_tmp(157:251)-nanmean(CLass_tmp(137:156)),...
   CLcnrm_tmp(157:251)-nanmean(CLcnrm_tmp(137:156)),...
   CLec_tmp(157:251)-nanmean(CLec_tmp(137:156))];        % ACCESS-ESM1-5, CNRM_ESM2_1, EC_Earth3_Veg   


Cnet_26_F = [(CLbcc_tmp(end)-nanmean(CLbcc_tmp(137:156)))./nanmean(CLbcc_tmp(137:156)),...
    (CLcan_tmp(end)-nanmean(CLcan_tmp(137:156)))./nanmean(CLcan_tmp(137:156)),...
    (CLcesm_W_tmp(end)-nanmean(CLcesm_W_tmp(137:156)))./nanmean(CLcesm_W_tmp(137:156)),...  % BCC_CSM2_MR, CanESM5 CESM2, CESM2 
   (CLuk_tmp(end)-nanmean(CLuk_tmp(137:156)))./nanmean(CLuk_tmp(137:156)),...
   (CLipsl_tmp(end)-nanmean(CLipsl_tmp(137:156)))./nanmean(CLipsl_tmp(137:156)),...
   (CLmic_tmp(end)-nanmean(CLmic_tmp(137:156)))./nanmean(CLmic_tmp(137:156)),...      % UKESM1_0_LL, IPSL_CM6A_LR, MIROC_ES2L  
   (CLmpi_tmp(end)-nanmean(CLmpi_tmp(137:156)))./nanmean(CLmpi_tmp(137:156)),...
   (CLnor_tmp(end)-nanmean(CLnor_tmp(137:156)))./nanmean(CLnor_tmp(137:156)),...      % MPI-ESM1-2-LR, NorESM2
   (CLass_tmp(end)-nanmean(CLass_tmp(137:156)))./nanmean(CLass_tmp(137:156)),...
   (CLcnrm_tmp(end)-nanmean(CLcnrm_tmp(137:156)))./nanmean(CLcnrm_tmp(137:156)),...
   (CLec_tmp(end)-nanmean(CLec_tmp(137:156)))./nanmean(CLec_tmp(137:156))];        % ACCESS-ESM1-5, CNRM_ESM2_1, EC_Earth3_Veg   



nanmean(Cnet_26_F)
nanstd(Cnet_26_F)


clearvars -except Cnet_26 

% ssp245
cd('G:\CMIP56_Csink\4_MatData\temporal_data\ssp245')
load('cLand_cmip6_tmp245.mat')
% estimate the temporal changes in land C storage, GPP and NPP, reltiave to the 1986-2005 means 
% over the period of 2006-2100
Cnet_45 = [CLbcc_tmp(157:251)-nanmean(CLbcc_tmp(137:156)),...
    CLcan_tmp(157:251)-nanmean(CLcan_tmp(137:156)),...
    CLcesm_W_tmp(157:251)-nanmean(CLcesm_W_tmp(137:156)),...  % BCC_CSM2_MR, CanESM5 CESM2, CESM2 
   CLuk_tmp(157:251)-nanmean(CLuk_tmp(137:156)),...
   CLipsl_tmp(157:251)-nanmean(CLipsl_tmp(137:156)),...
   CLmic_tmp(157:251)-nanmean(CLmic_tmp(137:156)),...      % UKESM1_0_LL, IPSL_CM6A_LR, MIROC_ES2L  
   CLmpi_tmp(157:251)-nanmean(CLmpi_tmp(137:156)),...
   CLnor_tmp(157:251)-nanmean(CLnor_tmp(137:156)),...      % MPI-ESM1-2-LR, NorESM2
   CLass_tmp(157:251)-nanmean(CLass_tmp(137:156)),...
   CLcnrm_tmp(157:251)-nanmean(CLcnrm_tmp(137:156)),...
   CLec_tmp(157:251)-nanmean(CLec_tmp(137:156))];        % ACCESS-ESM1-5, CNRM_ESM2_1, EC_Earth3_Veg  

Cnet_45_F = [(CLbcc_tmp(end)-nanmean(CLbcc_tmp(137:156)))./nanmean(CLbcc_tmp(137:156)),...
    (CLcan_tmp(end)-nanmean(CLcan_tmp(137:156)))./nanmean(CLcan_tmp(137:156)),...
    (CLcesm_W_tmp(end)-nanmean(CLcesm_W_tmp(137:156)))./nanmean(CLcesm_W_tmp(137:156)),...  % BCC_CSM2_MR, CanESM5 CESM2, CESM2 
   (CLuk_tmp(end)-nanmean(CLuk_tmp(137:156)))./nanmean(CLuk_tmp(137:156)),...
   (CLipsl_tmp(end)-nanmean(CLipsl_tmp(137:156)))./nanmean(CLipsl_tmp(137:156)),...
   (CLmic_tmp(end)-nanmean(CLmic_tmp(137:156)))./nanmean(CLmic_tmp(137:156)),...      % UKESM1_0_LL, IPSL_CM6A_LR, MIROC_ES2L  
   (CLmpi_tmp(end)-nanmean(CLmpi_tmp(137:156)))./nanmean(CLmpi_tmp(137:156)),...
   (CLnor_tmp(end)-nanmean(CLnor_tmp(137:156)))./nanmean(CLnor_tmp(137:156)),...      % MPI-ESM1-2-LR, NorESM2
   (CLass_tmp(end)-nanmean(CLass_tmp(137:156)))./nanmean(CLass_tmp(137:156)),...
   (CLcnrm_tmp(end)-nanmean(CLcnrm_tmp(137:156)))./nanmean(CLcnrm_tmp(137:156)),...
   (CLec_tmp(end)-nanmean(CLec_tmp(137:156)))./nanmean(CLec_tmp(137:156))];        % ACCESS-ESM1-5, CNRM_ESM2_1, EC_Earth3_Veg  

nanmean(Cnet_45_F)
nanstd(Cnet_45_F)


clearvars -except Cnet_26 Cnet_45 

% ssp585
cd('G:\CMIP56_Csink\4_MatData\temporal_data\hist_ssp585')
load('2cLand_cmip6_tmp.mat')
% estimate the temporal changes in land C storage, GPP and NPP, reltiave to the 1986-2005 means 
% over the period of 2006-2100
Cnet_85 = [CLbcc_tmp(157:251)-nanmean(CLbcc_tmp(137:156)),...
    CLcan_tmp(157:251)-nanmean(CLcan_tmp(137:156)),...
    CLcesm_W_tmp(157:251)-nanmean(CLcesm_W_tmp(137:156)),...  % BCC_CSM2_MR, CanESM5 CESM2, CESM2 
   CLuk_tmp(157:251)-nanmean(CLuk_tmp(137:156)),...
   CLipsl_tmp(157:251)-nanmean(CLipsl_tmp(137:156)),...
   CLmic_tmp(157:251)-nanmean(CLmic_tmp(137:156)),...      % UKESM1_0_LL, IPSL_CM6A_LR, MIROC_ES2L  
   CLmpi_tmp(157:251)-nanmean(CLmpi_tmp(137:156)),...
   CLnor_tmp(157:251)-nanmean(CLnor_tmp(137:156)),...      % MPI-ESM1-2-LR, NorESM2
   CLass_tmp(157:251)-nanmean(CLass_tmp(137:156)),...
   CLcnrm_tmp(157:251)-nanmean(CLcnrm_tmp(137:156)),...
   CLec_tmp(157:251)-nanmean(CLec_tmp(137:156))];        % ACCESS-ESM1-5, CNRM_ESM2_1, EC_Earth3_Veg

Cnet_85_F =[(CLbcc_tmp(end)-nanmean(CLbcc_tmp(137:156)))./nanmean(CLbcc_tmp(137:156)),...
    (CLcan_tmp(end)-nanmean(CLcan_tmp(137:156)))./nanmean(CLcan_tmp(137:156)),...
    (CLcesm_W_tmp(end)-nanmean(CLcesm_W_tmp(137:156)))./nanmean(CLcesm_W_tmp(137:156)),...  % BCC_CSM2_MR, CanESM5 CESM2, CESM2 
   (CLuk_tmp(end)-nanmean(CLuk_tmp(137:156)))./nanmean(CLuk_tmp(137:156)),...
   (CLipsl_tmp(end)-nanmean(CLipsl_tmp(137:156)))./nanmean(CLipsl_tmp(137:156)),...
   (CLmic_tmp(end)-nanmean(CLmic_tmp(137:156)))./nanmean(CLmic_tmp(137:156)),...      % UKESM1_0_LL, IPSL_CM6A_LR, MIROC_ES2L  
   (CLmpi_tmp(end)-nanmean(CLmpi_tmp(137:156)))./nanmean(CLmpi_tmp(137:156)),...
   (CLnor_tmp(end)-nanmean(CLnor_tmp(137:156)))./nanmean(CLnor_tmp(137:156)),...      % MPI-ESM1-2-LR, NorESM2
   (CLass_tmp(end)-nanmean(CLass_tmp(137:156)))./nanmean(CLass_tmp(137:156)),...
   (CLcnrm_tmp(end)-nanmean(CLcnrm_tmp(137:156)))./nanmean(CLcnrm_tmp(137:156)),...
   (CLec_tmp(end)-nanmean(CLec_tmp(137:156)))./nanmean(CLec_tmp(137:156))];        % ACCESS-ESM1-5, CNRM_ESM2_1, EC_Earth3_Veg  
nanmean(Cnet_85_F)
nanstd(Cnet_85_F)

clearvars -except Cnet_26 Cnet_45 Cnet_85 


%% to show future land carbon change in different biomes 
% load CMIP6 model predictions of land carbon storage change over 2006-2100
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('cLand_cmip6_126.mat')
% change in land carbon storage over the 2006-2100
% estimated by sunstracting the 1986-2005 mean
sp6_Cnet26_pre11(:,:,:,1) = cLand_BCC(:,:,157:251) - nanmean(cLand_BCC(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,2) = cLand_CAN(:,:,157:251) - nanmean(cLand_CAN(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251) - nanmean(cLand_CESM_W(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,4) = cLand_UK(:,:,157:251) - nanmean(cLand_UK(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251) - nanmean(cLand_IPSL(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,6) = cLand_MIC(:,:,157:251) - nanmean(cLand_MIC(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,7) = cLand_MPI(:,:,157:251) - nanmean(cLand_MPI(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,8) = cLand_NOR(:,:,157:251) - nanmean(cLand_NOR(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,9) = cLand_ASS(:,:,157:251) - nanmean(cLand_ASS(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251) - nanmean(cLand_CNRM(:,:,137:156),3);
sp6_Cnet26_pre11(:,:,:,11) = cLand_EC(:,:,157:251) - nanmean(cLand_EC(:,:,137:156),3);
mask = nanmean(cLand_BCC(:,:,137:156),3);
mask(~isnan(mask)) = 1; 
sp6_Cnet26_pre11 = sp6_Cnet26_pre11.*mask; 
clearvars -except Cnet_26 Cnet_45 Cnet_85 ...
                  sp6_Cnet26_pre11

%ssp245
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('cLand_cmip6_245.mat')
sp6_Cnet45_pre11(:,:,:,1) = cLand_BCC(:,:,157:251) - nanmean(cLand_BCC(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,2) = cLand_CAN(:,:,157:251) - nanmean(cLand_CAN(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251) - nanmean(cLand_CESM_W(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,4) = cLand_UK(:,:,157:251) - nanmean(cLand_UK(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251) - nanmean(cLand_IPSL(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,6) = cLand_MIC(:,:,157:251) - nanmean(cLand_MIC(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,7) = cLand_MPI(:,:,157:251) - nanmean(cLand_MPI(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,8) = cLand_NOR(:,:,157:251) - nanmean(cLand_NOR(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,9) = cLand_ASS(:,:,157:251) - nanmean(cLand_ASS(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251) - nanmean(cLand_CNRM(:,:,137:156),3);
sp6_Cnet45_pre11(:,:,:,11) = cLand_EC(:,:,157:251) - nanmean(cLand_EC(:,:,137:156),3);
mask = nanmean(cLand_BCC(:,:,137:156),3);
mask(~isnan(mask)) = 1; 
sp6_Cnet45_pre11 = sp6_Cnet45_pre11.*mask; 
clearvars -except Cnet_26 Cnet_45 Cnet_85 ...
                  sp6_Cnet26_pre11 sp6_Cnet45_pre11

%ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('cLand_cmip6_251.mat')
sp6_Cnet85_pre11(:,:,:,1) = cLand_BCC(:,:,157:251) - nanmean(cLand_BCC(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,2) = cLand_CAN(:,:,157:251) - nanmean(cLand_CAN(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251) - nanmean(cLand_CESM_W(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,4) = cLand_UK(:,:,157:251) - nanmean(cLand_UK(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251) - nanmean(cLand_IPSL(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,6) = cLand_MIC(:,:,157:251) - nanmean(cLand_MIC(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,7) = cLand_MPI(:,:,157:251) - nanmean(cLand_MPI(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,8) = cLand_NOR(:,:,157:251) - nanmean(cLand_NOR(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,9) = cLand_ASS(:,:,157:251) - nanmean(cLand_ASS(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251) - nanmean(cLand_CNRM(:,:,137:156),3);
sp6_Cnet85_pre11(:,:,:,11) = cLand_EC(:,:,157:251) - nanmean(cLand_EC(:,:,137:156),3);
mask = nanmean(cLand_BCC(:,:,137:156),3);
mask(~isnan(mask)) = 1; 
sp6_Cnet85_pre11 = sp6_Cnet85_pre11.*mask; 
clearvars -except Cnet_26 Cnet_45 Cnet_85 ...
                  sp6_Cnet26_pre11 sp6_Cnet45_pre11 sp6_Cnet85_pre11


% convert model predictions into global map and regrid into 0.5x0.5 to match with the biome map 
lat05 = ncread('E:\1_Mycase\3_CMIP56_Cland\2_Benchmark\1_obsData\tuaE\tau_all.nc','lat');
lon05 = ncread('E:\1_Mycase\3_CMIP56_Cland\2_Benchmark\1_obsData\tuaE\tau_all.nc','lon');
lat1 = 89.5:-1:-89.5; lat1 = lat1';
lon1 = -179.5:179.5;  lon1 = lon1';
[x05,y05] = meshgrid(lon05,lat05);
[x1,y1] = meshgrid(lon1,lat1);
for i=1:11
    for j=1:95
        
        rot90map26 = rot90(sp6_Cnet26_pre11(:,:,j,i));
        New26_lefrgt(1:180,1:360) = NaN;
        New26_lefrgt(:,1:180) = rot90map26(:,181:360);
        New26_lefrgt(:,181:360) = rot90map26(:,1:180);
        NewMap05_26(1:360,1:720) = NaN;
        NewMap05_26= interp2(x1,y1,New26_lefrgt,x05,y05,'linear'); 
        
        rot90map45 = rot90(sp6_Cnet45_pre11(:,:,j,i));
        New45_lefrgt(1:180,1:360) = NaN;
        New45_lefrgt(:,1:180) = rot90map45(:,181:360);
        New45_lefrgt(:,181:360) = rot90map45(:,1:180);
        NewMap05_45(1:360,1:720) = NaN;
        NewMap05_45= interp2(x1,y1,New45_lefrgt,x05,y05,'linear');
        
        rot90map85 = rot90(sp6_Cnet85_pre11(:,:,j,i));
        New85_lefrgt(1:180,1:360) = NaN;
        New85_lefrgt(:,1:180) = rot90map85(:,181:360);
        New85_lefrgt(:,181:360) = rot90map85(:,1:180);
        NewMap05_85(1:360,1:720) = NaN;
        NewMap05_85= interp2(x1,y1,New85_lefrgt,x05,y05,'linear');
        
        Cnet26_maps95(:,:,j,i) = NewMap05_26;
        Cnet45_maps95(:,:,j,i) = NewMap05_45;
        Cnet85_maps95(:,:,j,i) = NewMap05_85;
              
    end
end

clearvars -except Cnet_26 Cnet_45 Cnet_85 ...
                  Cnet26_maps95 Cnet45_maps95 Cnet85_maps95

%% the classification of biomes based on ESA land cover and five K?ppen climate classes
% load K?ppen climate classes
EcoClm = imread('E:\1_Mycase\4_NetC_Robustness_cmip6\1_Code\climateBiome-classes\Beck_KG_V1\Beck_KG_V1_present_0p5.tif');
EcoClm = double(EcoClm);
% 1,2,3: tropics (A)
% 4,5,6,7: Arid (B)
% 8,9,10,11,12,13,14,15,16: Temperate (C)
% 17,18,19,20,21,22,23,24,25,26,27,28: Boreal (D)
% 29,30: Polar (E)
% tropics(A 111)
EcoClm(EcoClm==1 | EcoClm==2 | EcoClm==3) = 111;
% Arid(B 222)
EcoClm(EcoClm==4 | EcoClm==5 | EcoClm==6 | EcoClm==7) = 222;
% Temperate(C 333)
EcoClm(EcoClm==8 | EcoClm==9 | EcoClm==10 | EcoClm==11 | EcoClm==12 |EcoClm==13 | EcoClm==14 | EcoClm==15 | EcoClm==16) = 333;
% Boreal(D 444)
EcoClm(EcoClm==17|EcoClm==18|EcoClm==19|EcoClm==20|EcoClm==21|EcoClm==22|EcoClm==23|EcoClm==24|EcoClm==25|EcoClm==26|EcoClm==27|EcoClm==28) = 444;
% Polar(E 555)
EcoClm(EcoClm==29 | EcoClm==30) = 555;
EcoClm(EcoClm==0) = NaN;


% read the map ESA land cover product
ecoBios = imread('E:\1_Mycase\4_NetC_Robustness_cmip6\3_Figures\EcoBiomes_CnetGPP\ESA\ESA\ESACCI-LC-L4-LCCS-Map-300m-P5Y-2010-v1.6.1.tif');
ecoBios05 = imresize(ecoBios,[360,720],'nearest');
clearvars ecoBios
ecoBios05 = double(ecoBios05);
ecoBios05(ecoBios05==210) = NaN;
ecoBios05(ecoBios05==0) = NaN;
% remove water bodies and no-data regions
% 10,11,20,30,110,130                           Crop/Grassland
% 12,40,120,121,122,140,180                     Savanna/shrublan
% 50,60,61,62,70,71,72,80,81,82,90,100,160,170  Forest
% 150,151,152,153,160                           Sparse
% 190,200,201,202,220                       Bare 
% Crop/Grassland (11)
ecoBios05(ecoBios05==10 |ecoBios05==11 | ecoBios05==20 | ecoBios05==30 | ecoBios05==110 | ecoBios05==130) = 11;
% Savanna/shrublan (22)
ecoBios05(ecoBios05==12|ecoBios05==40|ecoBios05==120|ecoBios05==121|ecoBios05==122|ecoBios05==140|ecoBios05==180 ) =22 ;
% Forest (33)
ecoBios05(ecoBios05==50|ecoBios05==60|ecoBios05==61|ecoBios05==62|ecoBios05==70|ecoBios05==71|ecoBios05==72|ecoBios05==80|...
    ecoBios05==81|ecoBios05==82|ecoBios05==90|ecoBios05==100|ecoBios05==160|ecoBios05==170) = 33;
% Sparse (44)
ecoBios05(ecoBios05==150|ecoBios05==151|ecoBios05==152|ecoBios05==153|ecoBios05==160) = 44;
% Bare(55)
ecoBios05(ecoBios05==190|ecoBios05==200|ecoBios05==201|ecoBios05==202|ecoBios05==220) = 55;

% use criteria shown in Table S2 to classify biomes
ClimBio(1:360,1:720) = NaN;
ID_TropLow = find(EcoClm==111 & (ecoBios05==11|ecoBios05==22));
ID_TropFor = find(EcoClm==111 & (ecoBios05==33));
ID_dry = find(EcoClm==222 & (ecoBios05==11|ecoBios05==22|ecoBios05==33));
ID_tempLow = find(EcoClm==333 & (ecoBios05==11|ecoBios05==22));
ID_tempFor = find(EcoClm==333 & (ecoBios05==33));
ID_BorLow = find(EcoClm==444 & (ecoBios05==11|ecoBios05==22));
ID_BorFor = find(EcoClm==444 & (ecoBios05==33));
ID_tundra = find(EcoClm==555 & (ecoBios05==11|ecoBios05==22|ecoBios05==33));
ID_sparse = find(ecoBios05==44);
ID_bare = find(ecoBios05==55);

ClimBio(ID_TropLow) = 1;
ClimBio(ID_TropFor) = 2;
ClimBio(ID_dry) = 3;
ClimBio(ID_tempLow) = 4;
ClimBio(ID_tempFor) = 5;
ClimBio(ID_BorLow) = 6;
ClimBio(ID_BorFor) = 7;
ClimBio(ID_tundra) = 8;
ClimBio(ID_sparse) = 9;
ClimBio(ID_bare) = 10;

mycolor_Bios = [0.81,0.92,0.39;...         % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94]            % Bare
            

% FigureS: the spatial pattern of biomes in 2010
ClimBio_map = ClimBio;
ClimBio_map(302:360,:) = [];
ClimBio_map = flipud(ClimBio_map);
raster_BioMap = georasterref('RasterSize',size(ClimBio_map),'Latlim',[-60 90],'Lonlim',[-180 180]);

figure
set(gcf,'position',[100 100 580 309])
maps = tight_subplot(1,1,[0 0],[0.01 -0.01],[-0.05 0.17])
axesm miller
setm(gca,'MapLatLimit',[-60 90])
setm(gca,'mlinelocation',[40 70 90 100])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(ClimBio_map,raster_BioMap, 'DisplayType','surface','Zdata',zeros(size(ClimBio_map)),'CData',ClimBio_map);
colormap(mycolor_Bios)
caxis([0.5 10.5])
set(gca,'box','off')
axis off
%text(-2.96,2.11, '(a)','HorizontalAlignment','center',...
%        'FontName','Arial','FontSize',12);

panel = tight_subplot(1,1,[0 0],[0.16 0.13 ],[0.75 0.008]) 
axes(panel)
hold on
set(gca, 'YLim',[-2 11],'XLim',[1 4]);
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
plot([1,1.6],[10,10],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(1,:))
plot([1,1.6],[9,9],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(2,:))
plot([1,1.6],[8,8],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(3,:))
plot([1,1.6],[7,7],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(4,:))
plot([1,1.6],[6,6],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(5,:))
plot([1,1.6],[5,5],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(6,:))
plot([1,1.6],[4,4],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(7,:))
plot([1,1.6],[3,3],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(8,:))
plot([1,1.6],[2,2],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(9,:))
plot([1,1.6],[1,1],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(10,:))
text(1.64,10,'Tropical low','FontName','Arial','FontSize',9)
text(1.64,9,'Tropical forest','FontName','Arial','FontSize',9)
text(1.64,8,'Drylands','FontName','Arial','FontSize',9)
text(1.64,7,'Temperate low','FontName','Arial','FontSize',9)
text(1.64,6,'Temperate forest','FontName','Arial','FontSize',9)
text(1.64,5,'Boreal low','FontName','Arial','FontSize',9)
text(1.64,4,'Boreal forest','FontName','Arial','FontSize',9)
text(1.64,3,'Tundra','FontName','Arial','FontSize',9)
text(1.64,2,'Sparse','FontName','Arial','FontSize',9)
text(1.64,1,'Bare','FontName','Arial','FontSize',9)
axis off


%% estimating the contribution of different biomes to the mean global land carbon sink at the 2100
area_05gre = xlsread('E:\1_Mycase\4_NetC_Robustness_cmip6\3_Figures\ClimateTpye\area0.5.csv'); % unit:km2 = 10^6 m2
for ID = 1:11
    for years = 1:95
       Cnet26_11 = Cnet26_maps95(:,:,years,ID);
       Cnet26_11_PgC = Cnet26_11.* area_05gre.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
        
       Cnet_TropLow26(years,ID) = nansum(Cnet26_11_PgC(ID_TropLow));
       Cnet_TropFor26(years,ID) = nansum(Cnet26_11_PgC(ID_TropFor));
       Cnet_dry26(years,ID) = nansum(Cnet26_11_PgC(ID_dry));
       Cnet_tempLow26(years,ID) = nansum(Cnet26_11_PgC(ID_tempLow));
       Cnet_tempFor26(years,ID) = nansum(Cnet26_11_PgC(ID_tempFor)); 
       Cnet_BorLow26(years,ID) = nansum(Cnet26_11_PgC(ID_BorLow));
       Cnet_BorFor26(years,ID) = nansum(Cnet26_11_PgC(ID_BorFor));
       Cnet_tundra26(years,ID) = nansum(Cnet26_11_PgC(ID_tundra));
       Cnet_sparse26(years,ID) = nansum(Cnet26_11_PgC(ID_sparse));
       Cnet_bare26(years,ID) = nansum(Cnet26_11_PgC(ID_bare));
       
       Cnet45_11 = Cnet45_maps95(:,:,years,ID);
       Cnet45_11_PgC = Cnet45_11.* area_05gre.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
        
       Cnet_TropLow45(years,ID) = nansum(Cnet45_11_PgC(ID_TropLow));
       Cnet_TropFor45(years,ID) = nansum(Cnet45_11_PgC(ID_TropFor));
       Cnet_dry45(years,ID) = nansum(Cnet45_11_PgC(ID_dry));
       Cnet_tempLow45(years,ID) = nansum(Cnet45_11_PgC(ID_tempLow));
       Cnet_tempFor45(years,ID) = nansum(Cnet45_11_PgC(ID_tempFor)); 
       Cnet_BorLow45(years,ID) = nansum(Cnet45_11_PgC(ID_BorLow));
       Cnet_BorFor45(years,ID) = nansum(Cnet45_11_PgC(ID_BorFor));
       Cnet_tundra45(years,ID) = nansum(Cnet45_11_PgC(ID_tundra));
       Cnet_sparse45(years,ID) = nansum(Cnet45_11_PgC(ID_sparse));
       Cnet_bare45(years,ID) = nansum(Cnet45_11_PgC(ID_bare));
       
       Cnet85_11 = Cnet85_maps95(:,:,years,ID);
       Cnet85_11_PgC = Cnet85_11.* area_05gre.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
        
       Cnet_TropLow85(years,ID) = nansum(Cnet85_11_PgC(ID_TropLow));
       Cnet_TropFor85(years,ID) = nansum(Cnet85_11_PgC(ID_TropFor));
       Cnet_dry85(years,ID) = nansum(Cnet85_11_PgC(ID_dry));
       Cnet_tempLow85(years,ID) = nansum(Cnet85_11_PgC(ID_tempLow));
       Cnet_tempFor85(years,ID) = nansum(Cnet85_11_PgC(ID_tempFor)); 
       Cnet_BorLow85(years,ID) = nansum(Cnet85_11_PgC(ID_BorLow));
       Cnet_BorFor85(years,ID) = nansum(Cnet85_11_PgC(ID_BorFor));
       Cnet_tundra85(years,ID) = nansum(Cnet85_11_PgC(ID_tundra));
       Cnet_sparse85(years,ID) = nansum(Cnet85_11_PgC(ID_sparse));
       Cnet_bare85(years,ID) = nansum(Cnet85_11_PgC(ID_bare));
        
    end    
end

% ssp126
Cnet_TropLow26_end = nanmean(Cnet_TropLow26(95,:));
Cnet_TropFor26_end = nanmean(Cnet_TropFor26(95,:));
Cnet_dry26_end = nanmean(Cnet_dry26(95,:));
Cnet_tempLow26_end = nanmean(Cnet_tempLow26(95,:));
Cnet_tempFor26_end = nanmean(Cnet_tempFor26(95,:));
Cnet_BorLow26_end = nanmean(Cnet_BorLow26(95,:));
Cnet_BorFor26_end = nanmean(Cnet_BorFor26(95,:));
Cnet_tundra26_end = nanmean(Cnet_tundra26(95,:));
Cnet_sparse26_end = nanmean(Cnet_sparse26(95,:));
Cnet_bare26_end = nanmean(Cnet_bare26(95,:));

Cnet26_land = Cnet_TropLow26_end + Cnet_TropFor26_end + Cnet_dry26_end + Cnet_tempLow26_end + Cnet_tempFor26_end +...
              Cnet_BorLow26_end + Cnet_BorFor26_end + Cnet_tundra26_end + Cnet_sparse26_end + Cnet_bare26_end

TropLow26_frc =  Cnet_TropLow26_end./Cnet26_land;
TropFor26_frc = Cnet_TropFor26_end./Cnet26_land;
dry26_frc = Cnet_dry26_end./Cnet26_land;
tempLow26_frc = Cnet_tempLow26_end./Cnet26_land;
tempFor26_frc = Cnet_tempFor26_end./Cnet26_land;
BorLow26_frc = Cnet_BorLow26_end./Cnet26_land;
BorFor26_frc = Cnet_BorFor26_end./Cnet26_land;
tundra26_frc = Cnet_tundra26_end./Cnet26_land;
sparse26_frc = Cnet_sparse26_end./Cnet26_land;
bare26_frc = Cnet_bare26_end./Cnet26_land;

% ssp245
Cnet_TropLow45_end = nanmean(Cnet_TropLow45(95,:));
Cnet_TropFor45_end = nanmean(Cnet_TropFor45(95,:));
Cnet_dry45_end = nanmean(Cnet_dry45(95,:));
Cnet_tempLow45_end = nanmean(Cnet_tempLow45(95,:));
Cnet_tempFor45_end = nanmean(Cnet_tempFor45(95,:));
Cnet_BorLow45_end = nanmean(Cnet_BorLow45(95,:));
Cnet_BorFor45_end = nanmean(Cnet_BorFor45(95,:));
Cnet_tundra45_end = nanmean(Cnet_tundra45(95,:));
Cnet_sparse45_end = nanmean(Cnet_sparse45(95,:));
Cnet_bare45_end = nanmean(Cnet_bare45(95,:));

Cnet45_land = Cnet_TropLow45_end + Cnet_TropFor45_end + Cnet_dry45_end + Cnet_tempLow45_end + Cnet_tempFor45_end +...
              Cnet_BorLow45_end + Cnet_BorFor45_end + Cnet_tundra45_end + Cnet_sparse45_end + Cnet_bare45_end

TropLow45_frc =  Cnet_TropLow45_end./Cnet45_land;
TropFor45_frc = Cnet_TropFor45_end./Cnet45_land;
dry45_frc = Cnet_dry45_end./Cnet45_land;
tempLow45_frc = Cnet_tempLow45_end./Cnet45_land;
tempFor45_frc = Cnet_tempFor45_end./Cnet45_land;
BorLow45_frc = Cnet_BorLow45_end./Cnet45_land;
BorFor45_frc = Cnet_BorFor45_end./Cnet45_land;
tundra45_frc = Cnet_tundra45_end./Cnet45_land;
sparse45_frc = Cnet_sparse45_end./Cnet45_land;
bare45_frc = Cnet_bare45_end./Cnet45_land;

%ssp585
Cnet_TropLow85_end = nanmean(Cnet_TropLow85(95,:));
Cnet_TropFor85_end = nanmean(Cnet_TropFor85(95,:));
Cnet_dry85_end = nanmean(Cnet_dry85(95,:));
Cnet_tempLow85_end = nanmean(Cnet_tempLow85(95,:));
Cnet_tempFor85_end = nanmean(Cnet_tempFor85(95,:));
Cnet_BorLow85_end = nanmean(Cnet_BorLow85(95,:));
Cnet_BorFor85_end = nanmean(Cnet_BorFor85(95,:));
Cnet_tundra85_end = nanmean(Cnet_tundra85(95,:));
Cnet_sparse85_end = nanmean(Cnet_sparse85(95,:));
Cnet_bare85_end = nanmean(Cnet_bare85(95,:));

Cnet85_land = Cnet_TropLow85_end + Cnet_TropFor85_end + Cnet_dry85_end + Cnet_tempLow85_end + Cnet_tempFor85_end +...
              Cnet_BorLow85_end + Cnet_BorFor85_end + Cnet_tundra85_end + Cnet_sparse85_end + Cnet_bare85_end

TropLow85_frc =  Cnet_TropLow85_end./Cnet85_land;
TropFor85_frc = Cnet_TropFor85_end./Cnet85_land;
dry85_frc = Cnet_dry85_end./Cnet85_land;
tempLow85_frc = Cnet_tempLow85_end./Cnet85_land;
tempFor85_frc = Cnet_tempFor85_end./Cnet85_land;
BorLow85_frc = Cnet_BorLow85_end./Cnet85_land;
BorFor85_frc = Cnet_BorFor85_end./Cnet85_land;
tundra85_frc = Cnet_tundra85_end./Cnet85_land;
sparse85_frc = Cnet_sparse85_end./Cnet85_land;
bare85_frc = Cnet_bare85_end./Cnet85_land;

%% Model ensemble mean of predicted land carbon change at the regional scale
% ssp126
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet')
Cnet_26_map = csvread('Cnet11_26_cmip6.csv'); % map of Cnet over 2006-2100 estimated as the difference between 2081-2100 and1986-2005
% convert the map of Cnet into raster
Cnet6_M11_26 = Cnet_26_map;
Cnet6_M11_26(151:180,:) = [];
Cnet6_M11_26 = flipud(Cnet6_M11_26);
raster6_Cnet26 = georasterref('RasterSize',size(Cnet6_M11_26),'Latlim',[-60 90],'Lonlim',[-180 180]);

% ssp245
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp2-4.5\Cnet')
Cnet_45_map = csvread('Cnet11_45_cmip6.csv');     % map of Cnet over 2006-2100 estimated as the difference between 2081-2100 and1986-2005                  
% convert the map of Cnet into raster
Cnet6_M11_45 = Cnet_45_map;
Cnet6_M11_45(151:180,:) = [];
Cnet6_M11_45 = flipud(Cnet6_M11_45);
raster6_Cnet45 = georasterref('RasterSize',size(Cnet6_M11_45),'Latlim',[-60 90],'Lonlim',[-180 180]);

% ssp585
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\Cnet')
Cnet_85_map = csvread('Cnet11_85_cmip6.csv');     % map of Cnet over 2006-2100 estimated as the difference between 2081-2100 and1986-2005 
% convert the map of Cnet into raster
Cnet6_M11_85 = Cnet_85_map;
Cnet6_M11_85(151:180,:) = [];
Cnet6_M11_85 = flipud(Cnet6_M11_85);
raster6_Cnet85 = georasterref('RasterSize',size(Cnet6_M11_85),'Latlim',[-60 90],'Lonlim',[-180 180]);


%% plotting the Figure2
figure
set(gcf,'position',[500,200,1011,656])
plotss(1) = tight_subplot(1,1,[0 0],[0.63 0.02 ],[0.25 0.4]) 
hold on
Year = 2006:2100;
Cnet85_avg5 = nanmean(Cnet_85,2);
Cnet85_std5 = nanstd(Cnet_85,0,2);
%mean85_line = plot(Year',Cnet_85,'color',[1.00,0.47,0.41],'LineWidth',0.4)
mean85_line = boundedline(Year',Cnet85_avg5,Cnet85_std5,'cmap',[1,0,0],'transparency', 0.3,'alpha')
set(mean85_line,'LineWidth',2.5,'color',[1,0,0]);

Cnet45_avg = mean(Cnet_45,2);
Cnet45_std = std(Cnet_45,0,2);
%mean45_line = plot(Year',Cnet_45,'color',[0.56,0.80,0.16],'LineWidth',0.4)
mean45_line = boundedline(Year,Cnet45_avg,Cnet45_std,'cmap',[0.80,1.00,0.47],'transparency',0.6,'alpha')
set(mean45_line,'LineWidth',2.5,'color',[0.56,0.80,0.16]);

Cnet26_avg = mean(Cnet_26,2);
Cnet26_std = std(Cnet_26,0,2);
%mean26_line = plot(Year',Cnet_26,'color',[0.24,0.24,0.89],'LineWidth',0.4)

mean26_line = boundedline(Year,Cnet26_avg,Cnet26_std,'cmap',[0.01,0.67,0.55],'transparency',0.25,'alpha')
set(mean26_line,'LineWidth',2.5,'color',[0.02,0.88,0.88]);

set(gca,'linewidth',1,'box','on');
set(gca,'XLim',[2005 2101]);
set(gca,'YLim',[-100 500]);
set(gca,'Fontname','Arial','FontSize',9)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
leg6 = legend([mean26_line,mean45_line,mean85_line],{'SSP1-2.6','SSP2-4.5','SSP5-8.5'})    
set(leg6,'color','none','EdgeColor','none','Fontname','Arial','Fontsize',10,'NumColumns',1,'Position',[0.24,0.83,0.15,0.11])
text(2007,466,'(a)','Fontname','Arial','Fontsize',10)
xlabel('Years','Fontname','Arial','FontSize',10)
ylabel('Change in land carbon storage (Pg C)','Fontname','Arial','FontSize',10)


plotss(2) = tight_subplot(1,1,[0 0],[0.63 0.02 ],[0.6 0.25]) 
hold on
set(gca, 'XLim',[0.5 3.5],'YLim',[-100 500]);
Cent_85end = Cnet_85(95,:);
Cnet_45end = Cnet_45(95,:);
Cnet_26end = Cnet_26(95,:);


Cnet85_H = patch([0.8,0.8,1.2,1.2],[mean(Cent_85end)-std(Cent_85end),mean(Cent_85end)+std(Cent_85end),mean(Cent_85end)+std(Cent_85end),mean(Cent_85end)-std(Cent_85end)],[1,0,0]);
set(Cnet85_H,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.3)
line([0.8 1.2],[mean(Cent_85end) mean(Cent_85end)],'color',[1,0,0],'linewidth',2.5);

Cnet45_H = patch([1.8,1.8,2.2,2.2],[mean(Cnet_45end)-std(Cnet_45end),mean(Cnet_45end)+std(Cnet_45end),mean(Cnet_45end)+std(Cnet_45end),mean(Cnet_45end)-std(Cnet_45end)],[0.40,0.82,0.11]);
set(Cnet45_H,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.4)
line([1.8 2.2],[mean(Cnet_45end) mean(Cnet_45end)],'color',[0.56,0.80,0.16],'linewidth',2.5);

Cnet26_H = patch([2.8,2.8,3.2,3.2],[mean(Cnet_26end)-std(Cnet_26end),mean(Cnet_26end)+std(Cnet_26end),mean(Cnet_26end)+std(Cnet_26end),mean(Cnet_26end)-std(Cnet_26end)],[0.01,0.67,0.55]);
set(Cnet26_H,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.25)
line([2.8 3.2],[mean(Cnet_26end) mean(Cnet_26end)],'color',[0.02,0.88,0.88],'linewidth',2.5);
set(gca,'xcolor','none','ycolor','none','color','none')  

text(1,102.5,'SSP5-8.5','FontName','Arial','FontSize',10,'Rotation',-90,'color','r')
text(2,76.6,'SSP2-4.5','FontName','Arial','FontSize',10,'Rotation',-90,'color',[0.56,0.80,0.16])
text(3,50.5,'SSP1-2.6','FontName','Arial','FontSize',10,'Rotation',-90,'color',[0.02,0.88,0.88])

%%
maps = tight_subplot(1,3,[-0.1 -0.01],[0.25 0.45],[-0.01 0.09])
load 'E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures\v2_Figure2\mycolor_Cnet.mat';
% SSP126
ssp26MAP = maps(1)
axes(ssp26MAP)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(Cnet6_M11_26,raster6_Cnet26, 'DisplayType','surface','Zdata',zeros(size(Cnet6_M11_26)),'CData',Cnet6_M11_26);
colormap(ssp26MAP,mycolor_Cnet)
caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
text(-0.14,1.67, '(b) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

%SSP245
ssp45MAP = maps(2)
axes(ssp45MAP)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.4)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.5)
h = geoshow(Cnet6_M11_45,raster6_Cnet45, 'DisplayType','surface','Zdata',zeros(size(Cnet6_M11_45)),'CData',Cnet6_M11_45);
colormap(ssp45MAP,mycolor_Cnet)
caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
text(-0.14,1.67, '(c) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

%SSP585
ssp85MAP = maps(3)
axes(ssp85MAP)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.4)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.5)
h = geoshow(Cnet6_M11_85,raster6_Cnet85, 'DisplayType','surface','Zdata',zeros(size(Cnet6_M11_85)),'CData',Cnet6_M11_85);
colormap(ssp85MAP,mycolor_Cnet)
caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
text(-0.14,1.67, '(d) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);



leg_h = colorbar
leg_h.Position = [0.9,0.3,0.014,0.22];
leg_h.Ticks = [-4,-2,0,2,4]
leg_h.TickLabels = {'-4','-2','0','2','4'}
leg_h.FontName = 'Arial'
leg_h.FontSize = 9;
text(3.58,0.37,'Change in cLand (Kg C m^-^2)',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10,'Rotation',90)


%% pies
panel3_4 = tight_subplot(1,3,[0.2 0.2],[0.04 0.8 ],[0.08 0.19]) 
ssp26pie = panel3_4(1)
axes(ssp26pie)
hold on
Cnet26_bios = [TropLow26_frc TropFor26_frc dry26_frc tempLow26_frc tempFor26_frc ...
            BorLow26_frc BorFor26_frc tundra26_frc sparse26_frc bare26_frc]
bios = {'Tropical low' 'Tropical forest' 'Drylands' 'Temperate low' 'Temperate forest'...
          'Boreal low' 'Boreal forest' 'Tundra' 'Sparse' 'Bare'}
h5_ed26 = pie(Cnet26_bios)
colormap(ssp26pie,[0.81,0.92,0.39;...              % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94])           % bare   
axis off
%text(0.8,1.96,'Contribution to mean global land C sink:','HorizontalAlignment','center',...
%        'FontName','Arial','FontSize',12);   
text(0.11,1.89,'(e) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

ssp45pie =  panel3_4(2) 
axes(ssp45pie)
hold on
Cnet45_bios = [TropLow45_frc TropFor45_frc dry45_frc tempLow45_frc tempFor45_frc ...
            BorLow45_frc BorFor45_frc tundra45_frc sparse45_frc bare45_frc]
bios = {'Tropical low' 'Tropical forest' 'Drylands' 'Temperate low' 'Temperate forest'...
          'Boreal low' 'Boreal forest' 'Tundra' 'Sparse' 'Bare'}
h5_ed45 = pie(Cnet45_bios)
colormap(ssp45pie,[0.81,0.92,0.39;...              % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94])           % bare   
axis off
text(0.026,1.89,'(f) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);


ssp85pie = panel3_4(3)
axes(ssp85pie)
hold on
Cnet85_bios = [TropLow85_frc TropFor85_frc dry85_frc tempLow85_frc tempFor85_frc ...
            BorLow85_frc BorFor85_frc tundra85_frc sparse85_frc bare85_frc]
bios = {'Tropical low' 'Tropical forest' 'Drylands' 'Temperate low' 'Temperate forest'...
          'Boreal low' 'Boreal forest' 'Tundra' 'Sparse' 'Bare'}
h5_ed85 = pie(Cnet85_bios)
colormap(ssp85pie,[0.81,0.92,0.39;...              % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94])           % bare   
axis off
text(-0.058,1.89,'(g) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);




panel_leg = tight_subplot(1,1,[0 0],[0.01 0.73 ],[0.87 0.01]) 
axes(panel_leg)
hold on
set(gca, 'YLim',[0 11],'XLim',[1 4]);
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
plot([1,1.6],[10,10],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(1,:))
plot([1,1.6],[9,9],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(2,:))
plot([1,1.6],[8,8],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(3,:))
plot([1,1.6],[7,7],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(4,:))
plot([1,1.6],[6,6],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(5,:))
plot([1,1.6],[5,5],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(6,:))
plot([1,1.6],[4,4],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(7,:))
plot([1,1.6],[3,3],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(8,:))
plot([1,1.6],[2,2],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(9,:))
plot([1,1.6],[1,1],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(10,:))
text(1.64,10,'Tropical low','FontName','Arial','FontSize',9)
text(1.64,9,'Tropical forest','FontName','Arial','FontSize',9)
text(1.64,8,'Drylands','FontName','Arial','FontSize',9)
text(1.64,7,'Temperate low','FontName','Arial','FontSize',9)
text(1.64,6,'Temperate forest','FontName','Arial','FontSize',9)
text(1.64,5,'Boreal low','FontName','Arial','FontSize',9)
text(1.64,4,'Boreal forest','FontName','Arial','FontSize',9)
text(1.64,3,'Tundra','FontName','Arial','FontSize',9)
text(1.64,2,'Sparse','FontName','Arial','FontSize',9)
text(1.64,1,'Bare','FontName','Arial','FontSize',9)
axis off
    













%%

figure
set(gcf,'position',[100 100 598 580])

maps = tight_subplot(3,1,[-0.1 -0.01],[0.16 -0.02],[0.1 0.4])
load 'E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures\v2_Figure2\mycolor_Cnet.mat';
% SSP126
ssp26MAP = maps(1)
axes(ssp26MAP)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.5)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.4)
h = geoshow(Cnet6_M11_26,raster6_Cnet26, 'DisplayType','surface','Zdata',zeros(size(Cnet6_M11_26)),'CData',Cnet6_M11_26);
colormap(ssp26MAP,mycolor_Cnet)
caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
text(-2.26,1.53, '(a) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

%SSP245
ssp45MAP = maps(2)
axes(ssp45MAP)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.4)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.5)
h = geoshow(Cnet6_M11_45,raster6_Cnet45, 'DisplayType','surface','Zdata',zeros(size(Cnet6_M11_45)),'CData',Cnet6_M11_45);
colormap(ssp45MAP,mycolor_Cnet)
caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
text(-2.26,1.53, '(d) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

%SSP585
ssp85MAP = maps(3)
axes(ssp85MAP)
hold on
axesm robinson
setm(gca,'MapLatLimit',[-60 90])
framem('FLineWidth',0.4)
framem('off')
geoshow('landareas.shp','FaceColor','none')
framem('FLineWidth',0.5)
h = geoshow(Cnet6_M11_85,raster6_Cnet85, 'DisplayType','surface','Zdata',zeros(size(Cnet6_M11_85)),'CData',Cnet6_M11_85);
colormap(ssp85MAP,mycolor_Cnet)
caxis([-5 5])
set(gca,'box','off')
axis off
colorbar('off')
text(-2.26,1.53, '(g) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);


leg_h = colorbar
leg_h.Location = 'southoutside'
leg_h.Position = [0.15,0.21,0.39,0.024];
leg_h.Ticks = [-5,-4,-3,-2,-1,0,1,2,3,4,5]
leg_h.TickLabels = {'-5','-4','-3','-2','-1','0','1','2','3','4','5'}
leg_h.FontName = 'Arial'
leg_h.FontSize = 9;
text(0.011,-1.88,'Change in land carbon storage (Kg C m^-^2)',...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10)
    
%%
plotss_tmp = tight_subplot(3,1,[0.123 0.123],[0.236 0.13],[0.04 0.8]) 

axes(plotss_tmp(1))
hold on
Year = 2006:2100;
mycolor6 = [255 0 0; 153 51 255; 237 176 33;...    %BCC-CSM2-MR, CanESM5, CESM2
           0 197 205; 0 205 0; 207 194 124;...     %UKESM1-0-LL, IPSL-CM6A-LR,MIROC-ES2L
           255 99 71; 65 105 255;...               %MPI-ESM1-2-LR,NorESM-LM
            0 0 0; 158 131 149; 119 136 153]./255; %ACCESS-ESM1-5, CNRM-ESM2-1  EC-Earth3-Veg 
for i =1:11
    CMIP6_lines(i) = plot(Year,Cnet_26_tmp(:,i) ,'LineWidth',1.2,'LineStyle','-','color',mycolor6(i,:))
    
end  
set(gca,'linewidth',0.8,'box','off');
set(gca,'XLim',[2005 2101]);
set(gca,'YLim',[-110 630]);
set(gca,'Fontname','Arial','FontSize',9)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
%leg6 = legend([mean26_line,mean45_line,mean85_line],{'SSP1-2.6','SSP2-4.5','SSP5-8.5'})    
%set(leg6,'color','none','EdgeColor','none','Fontname','Arial','Fontsize',10,'NumColumns',1,'Position',[0.18,0.83,0.15,0.11])
text(1993.2,733.2,'(b)','Fontname','Arial','Fontsize',10)
text(2010,580,'SSP1-2.6','Fontname','Arial','Fontsize',10)


axes(plotss_tmp(2))
hold on
Year = 2006:2100;
mycolor6 = [255 0 0; 153 51 255; 237 176 33;...    %BCC-CSM2-MR, CanESM5, CESM2
           0 197 205; 0 205 0; 207 194 124;...     %UKESM1-0-LL, IPSL-CM6A-LR,MIROC-ES2L
           255 99 71; 65 105 255;...               %MPI-ESM1-2-LR,NorESM-LM
            0 0 0; 158 131 149; 119 136 153]./255; %ACCESS-ESM1-5, CNRM-ESM2-1  EC-Earth3-Veg 
for i =1:11
    CMIP6_lines(i) = plot(Year,Cnet_45_tmp(:,i) ,'LineWidth',1.2,'LineStyle','-','color',mycolor6(i,:))
    
end  
set(gca,'linewidth',0.8,'box','off');
set(gca,'XLim',[2005 2101]);
set(gca,'YLim',[-110 630]);
set(gca,'Fontname','Arial','FontSize',9)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
%leg6 = legend([mean26_line,mean45_line,mean85_line],{'SSP1-2.6','SSP2-4.5','SSP5-8.5'})    
%set(leg6,'color','none','EdgeColor','none','Fontname','Arial','Fontsize',10,'NumColumns',1,'Position',[0.18,0.83,0.15,0.11])
text(1993.2,733.2,'(e)','Fontname','Arial','Fontsize',10)
text(2010,580,'SSP2-4.5','Fontname','Arial','Fontsize',10)
ylabel('Change in land carbon storage (Pg C)','Fontname','Arial','FontSize',11,'Position',[1987.5,248.5])


axes(plotss_tmp(3))
hold on
Year = 2006:2100;
mycolor6 = [255 0 0; 153 51 255; 237 176 33;...    %BCC-CSM2-MR, CanESM5, CESM2
           0 197 205; 0 205 0; 207 194 124;...     %UKESM1-0-LL, IPSL-CM6A-LR,MIROC-ES2L
           255 99 71; 65 105 255;...               %MPI-ESM1-2-LR,NorESM-LM
            0 0 0; 158 131 149; 119 136 153]./255; %ACCESS-ESM1-5, CNRM-ESM2-1  EC-Earth3-Veg 
for i =1:11
    CMIP6_lines(i) = plot(Year,Cnet_85_tmp(:,i) ,'LineWidth',1.2,'LineStyle','-','color',mycolor6(i,:))
    
end  
set(gca,'linewidth',0.8,'box','off');
set(gca,'XLim',[2005 2101]);
set(gca,'YLim',[-110 630]);
set(gca,'Fontname','Arial','FontSize',9)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
%leg6 = legend([mean26_line,mean45_line,mean85_line],{'SSP1-2.6','SSP2-4.5','SSP5-8.5'})    
%set(leg6,'color','none','EdgeColor','none','Fontname','Arial','Fontsize',10,'NumColumns',1,'Position',[0.18,0.83,0.15,0.11])
text(1993.2,733.2,'(h)','Fontname','Arial','Fontsize',10)
text(2010,580,'SSP5-8.5','Fontname','Arial','Fontsize',10)
xlabel('Years','Fontname','Arial','FontSize',10)


Cent_85end = Cnet_85_tmp(95,:);
Cnet_45end = Cnet_45_tmp(95,:);
Cnet_26end = Cnet_26_tmp(95,:);
plotss22 = tight_subplot(3,1,[0.07 0.07],[0.12 0.08 ],[0.66 0.3]) 
axes(plotss22(1))
hold on
set(gca, 'XLim',[0 1],'YLim',[-110 630]);
Cnet26_H = patch([0.2,0.2,0.6,0.6],[min(Cnet_26end),max(Cnet_26end),max(Cnet_26end),min(Cnet_26end)],[0.01,0.67,0.55]);
set(Cnet26_H,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.25)
line([0.2 0.6],[mean(Cnet_26end) mean(Cnet_26end)],'color',[0.02,0.88,0.88],'linewidth',2.5);
set(gca,'xcolor','none','ycolor','none','color','none')  
axis off


axes(plotss22(2))
hold on
set(gca, 'XLim',[0 1],'YLim',[-110 630]);
Cnet26_H = patch([0.2,0.2,0.6,0.6],[min(Cnet_45end),max(Cnet_45end),max(Cnet_45end),min(Cnet_45end)],[0.40,0.82,0.11]);
set(Cnet26_H,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.25)
line([0.2 0.6],[mean(Cnet_45end) mean(Cnet_45end)],'color',[0.56,0.80,0.16],'linewidth',2.5);
set(gca,'xcolor','none','ycolor','none','color','none')  
axis off


axes(plotss22(3))
hold on
set(gca, 'XLim',[0 1],'YLim',[-110 630]);
Cnet26_H = patch([0.2,0.2,0.6,0.6],[min(Cent_85end),max(Cent_85end),max(Cent_85end),min(Cent_85end)],[1,0,0]);
set(Cnet26_H,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.25)
line([0.2 0.6],[mean(Cent_85end) mean(Cent_85end)],'color',[1,0,0],'linewidth',2.5);
set(gca,'xcolor','none','ycolor','none','color','none')  
axis off




%% pies
panel3_4 = tight_subplot(3,1,[0.14 0.14],[0.14 0.1 ],[0.75 0.13]) 
ssp26pie = panel3_4(1)
axes(ssp26pie)
hold on
Cnet26_bios = [TropLow26_frc TropFor26_frc dry26_frc tempLow26_frc tempFor26_frc ...
            BorLow26_frc BorFor26_frc tundra26_frc sparse26_frc bare26_frc]
bios = {'Tropical low' 'Tropical forest' 'Drylands' 'Temperate low' 'Temperate forest'...
          'Boreal low' 'Boreal forest' 'Tundra' 'Sparse' 'Bare'}
h5_ed26 = pie(Cnet26_bios)
colormap(ssp26pie,[0.81,0.92,0.39;...              % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94])           % bare   
axis off
%text(0.8,1.96,'Contribution to mean global land C sink:','HorizontalAlignment','center',...
%        'FontName','Arial','FontSize',12);   
text(0.0126,1.82,'(c) SSP1-2.6','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);

ssp45pie =  panel3_4(2) 
axes(ssp45pie)
hold on
Cnet45_bios = [TropLow45_frc TropFor45_frc dry45_frc tempLow45_frc tempFor45_frc ...
            BorLow45_frc BorFor45_frc tundra45_frc sparse45_frc bare45_frc]
bios = {'Tropical low' 'Tropical forest' 'Drylands' 'Temperate low' 'Temperate forest'...
          'Boreal low' 'Boreal forest' 'Tundra' 'Sparse' 'Bare'}
h5_ed45 = pie(Cnet45_bios)
colormap(ssp45pie,[0.81,0.92,0.39;...              % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94])           % bare   
axis off
text(0.0126,1.82,'(f) SSP2-4.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);


ssp85pie = panel3_4(3)
axes(ssp85pie)
hold on
Cnet85_bios = [TropLow85_frc TropFor85_frc dry85_frc tempLow85_frc tempFor85_frc ...
            BorLow85_frc BorFor85_frc tundra85_frc sparse85_frc bare85_frc]
bios = {'Tropical low' 'Tropical forest' 'Drylands' 'Temperate low' 'Temperate forest'...
          'Boreal low' 'Boreal forest' 'Tundra' 'Sparse' 'Bare'}
h5_ed85 = pie(Cnet85_bios)
colormap(ssp85pie,[0.81,0.92,0.39;...              % Tropical low
                0.45,0.89,0.01;...         % Tropical forest
                1,0.6,0.07;...             % Drylands
                0.74,0.99,0.79;...         % Temperate low
                0.22,0.37,0.06;...         % Temperate forest
                0.01,0.66,0.62;...         % Boreal low 
                0.03,0.18,0.33;...         % Boreal forest
                0,1,1;...                  % Tundra
                0.94,0.9,0.55;....         % Sparse
                0.94,0.94,0.94])           % bare   
axis off
text(0.0126,1.82,'(i) SSP5-8.5','HorizontalAlignment','center',...
        'FontName','Arial','FontSize',10);



panel_leg = tight_subplot(1,1,[0 0],[0 0.66 ],[0.85 0.008]) 
axes(panel_leg)
hold on
set(gca, 'YLim',[0 11],'XLim',[1 4]);
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
plot([1,1.6],[10,10],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(1,:))
plot([1,1.6],[9,9],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(2,:))
plot([1,1.6],[8,8],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(3,:))
plot([1,1.6],[7,7],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(4,:))
plot([1,1.6],[6,6],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(5,:))
plot([1,1.6],[5,5],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(6,:))
plot([1,1.6],[4,4],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(7,:))
plot([1,1.6],[3,3],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(8,:))
plot([1,1.6],[2,2],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(9,:))
plot([1,1.6],[1,1],'LineWidth',10,'LineStyle','-','color',mycolor_Bios(10,:))
text(1.64,10,'Tropical low','FontName','Arial','FontSize',9)
text(1.64,9,'Tropical forest','FontName','Arial','FontSize',9)
text(1.64,8,'Drylands','FontName','Arial','FontSize',9)
text(1.64,7,'Temperate low','FontName','Arial','FontSize',9)
text(1.64,6,'Temperate forest','FontName','Arial','FontSize',9)
text(1.64,5,'Boreal low','FontName','Arial','FontSize',9)
text(1.64,4,'Boreal forest','FontName','Arial','FontSize',9)
text(1.64,3,'Tundra','FontName','Arial','FontSize',9)
text(1.64,2,'Sparse','FontName','Arial','FontSize',9)
text(1.64,1,'Bare','FontName','Arial','FontSize',9)
axis off
    

