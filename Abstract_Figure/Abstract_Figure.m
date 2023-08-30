clear;
clc;

%% the spatial pattens of robustness and uncertian in land carbon change under three SSPs
% ssp126
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet')
Cnet_26 = csvread('Cnet11_26_cmip6.csv'); % map of Cnet over 2006-2100 estimated as the difference between 2081-2100 and1986-2005
map1_26 = csvread('mapR1_0.6_26.csv');  % the mask of robust change in land carbon storage
map3_26 = csvread('map3_frac05_r02_26.csv'); % the mask of uncertain change in land carbon storage
map2_26 = csvread('map2_frac02_26.csv'); % the mask of agreement on marginal change
% ssp245
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp2-4.5\Cnet')  
Cnet_45 = csvread('Cnet11_45_cmip6.csv');     % map of Cnet over 2006-2100 estimated as the difference between 2081-2100 and1986-2005   
map1_45 = csvread('mapR1_0.6_45.csv');         % the mask of robust change in land carbon storage
map3_45 = csvread('map3_frac05_r02_45.csv');     % the mask of uncertain change in land carbon storage
map2_45 = csvread('map2_frac02_45.csv'); % the mask of agreement on marginal change
% ssp585
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\Cnet')
Cnet_85 = csvread('Cnet11_85_cmip6.csv');     % map of Cnet over 2006-2100 estimated as the difference between 2081-2100 and1986-2005 
map1_85 = csvread('mapR1_0.6_85.csv');         % the mask of robust change in land carbon storage
map3_85 = csvread('map3_frac05_r02_85.csv');      % the mask of uncertain change in land carbon storage
map2_85 = csvread('map2_frac02_85.csv'); % the mask of agreement on marginal change

%% the robustness and uncertainty of C storage change in differnt biomes

% load the present K?ppen climate classes (Zimmermann et al., 2018; Nature Scientific Data)
EcoClm = imread('E:\1_Mycase\4_NetC_Robustness_cmip6\1_Code\climateBiome-classes\Beck_KG_V1\Beck_KG_V1_present_0p5.tif');
EcoClm = double(EcoClm);
EcoClm(302:360,:) = []; 
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
ecoBios05(302:360,:) = []; 
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

% the classification of biomes based on ESA land cover and main K?ppen climate classes
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

mycolor_Bios = [0.5, 1, 0;...
                0.13,0.55,0.13;...
                1,0.6,0.07;...
                0.74,0.99,0.79;...
                0.22,0.37,0.06;...
                0.01,0.66,0.62;...
                0.03,0.18,0.33;...
                0,1,1;...
                0.94,0.9,0.55;....
                0.94,0.94,0.94]


% read A(agreement across models) and F(Fraction of models with significant change) data under three climate change scenarios
% ssp126
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\2_csvDATA\ssp126\Cnet')
AgreeCnet26 = csvread('Rindex_Cnet_cmip6.csv');
FracCnet26 = csvread('Fraction_Cnet_cmip6.csv');
% ssp245
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\2_csvDATA\ssp245\Cnet')
AgreeCnet45 = csvread('Rindex_Cnet45_cmip6.csv');
FracCnet45 = csvread('Fraction_Cnet45_cmip6.csv');
% ssp585
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\2_csvDATA\ssp585\Cnet')
AgreeCnet85 = csvread('Rindex_Cnet85_cmip6.csv');
FracCnet85 = csvread('Fraction_Cnet85_cmip6.csv');

% regrided the A and F data to match with the resoluation of MODIS biome map
lat05 = ncread('E:\1_Mycase\3_CMIP56_Cland\2_Benchmark\1_obsData\tuaE\tau_all.nc','lat');
lon05 = ncread('E:\1_Mycase\3_CMIP56_Cland\2_Benchmark\1_obsData\tuaE\tau_all.nc','lon');
lat1 = 89.5:-1:-89.5; lat1 = lat1';
lon1 = -179.5:179.5;  lon1 = lon1';
[x05,y05] = meshgrid(lon05,lat05);
[x1,y1] = meshgrid(lon1,lat1);

AgreeCnet05_26(1:360,1:720) = NaN;
AgreeCnet05_45(1:360,1:720) = NaN;
AgreeCnet05_85(1:360,1:720) = NaN;

FracCnet05_26(1:360,1:720) = NaN;
FracCnet05_45(1:360,1:720) = NaN;
FracCnet05_85(1:360,1:720) = NaN;

AgreeCnet05_26 = interp2(x1,y1,AgreeCnet26,x05,y05,'linear');
AgreeCnet05_45 = interp2(x1,y1,AgreeCnet45,x05,y05,'linear');
AgreeCnet05_85 = interp2(x1,y1,AgreeCnet85,x05,y05,'linear');


FracCnet05_26 = interp2(x1,y1,FracCnet26,x05,y05,'linear');
FracCnet05_45 = interp2(x1,y1,FracCnet45,x05,y05,'linear');
FracCnet05_85 = interp2(x1,y1,FracCnet85,x05,y05,'linear');

% remove outliers of A and F data
AgreeCnet05_26(AgreeCnet05_26>1) = NaN;
AgreeCnet05_45(AgreeCnet05_45>1) = NaN;
AgreeCnet05_85(AgreeCnet05_85>1) = NaN;

FracCnet05_26(FracCnet05_26>1 & FracCnet05_26<0) = NaN;
FracCnet05_45(FracCnet05_45>1 & FracCnet05_45<0) = NaN;
FracCnet05_85(FracCnet05_85>1 & FracCnet05_85<0) = NaN;

AgreeCnet05_26(302:360,:) = []; 
AgreeCnet05_45(302:360,:) = []; 
AgreeCnet05_85(302:360,:) = []; 
FracCnet05_26(302:360,:) = []; 
FracCnet05_45(302:360,:) = []; 
FracCnet05_85(302:360,:) = []; 

ACnet_TropLow26 = AgreeCnet05_26(ID_TropLow);
ACnet_TropLow45 = AgreeCnet05_45(ID_TropLow);
ACnet_TropLow85 = AgreeCnet05_85(ID_TropLow);
FCnet_TropLow26 = FracCnet05_26(ID_TropLow);
FCnet_TropLow45 = FracCnet05_45(ID_TropLow);
FCnet_TropLow85 = FracCnet05_85(ID_TropLow);

ACnet_TropFor26 = AgreeCnet05_26(ID_TropFor);
ACnet_TropFor45 = AgreeCnet05_45(ID_TropFor);
ACnet_TropFor85 = AgreeCnet05_85(ID_TropFor);
FCnet_TropFor26 = FracCnet05_26(ID_TropFor);
FCnet_TropFor45 = FracCnet05_45(ID_TropFor);
FCnet_TropFor85 = FracCnet05_85(ID_TropFor);

ACnet_dry26 = AgreeCnet05_26(ID_dry);
ACnet_dry45 = AgreeCnet05_45(ID_dry);
ACnet_dry85 = AgreeCnet05_85(ID_dry);
FCnet_dry26 = FracCnet05_26(ID_dry);
FCnet_dry45 = FracCnet05_45(ID_dry);
FCnet_dry85 = FracCnet05_85(ID_dry);

ACnet_tempLow26 = AgreeCnet05_26(ID_tempLow);
ACnet_tempLow45 = AgreeCnet05_45(ID_tempLow);
ACnet_tempLow85 = AgreeCnet05_85(ID_tempLow);
FCnet_tempLow26 = FracCnet05_26(ID_tempLow);
FCnet_tempLow45 = FracCnet05_45(ID_tempLow);
FCnet_tempLow85 = FracCnet05_85(ID_tempLow);

ACnet_tempFor26 = AgreeCnet05_26(ID_tempFor);
ACnet_tempFor45 = AgreeCnet05_45(ID_tempFor);
ACnet_tempFor85 = AgreeCnet05_85(ID_tempFor);
FCnet_tempFor26 = FracCnet05_26(ID_tempFor);
FCnet_tempFor45 = FracCnet05_45(ID_tempFor);
FCnet_tempFor85 = FracCnet05_85(ID_tempFor);

ACnet_BorLow26 = AgreeCnet05_26(ID_BorLow);
ACnet_BorLow45 = AgreeCnet05_45(ID_BorLow);
ACnet_BorLow85 = AgreeCnet05_85(ID_BorLow);
FCnet_BorLow26 = FracCnet05_26(ID_BorLow);
FCnet_BorLow45 = FracCnet05_45(ID_BorLow);
FCnet_BorLow85 = FracCnet05_85(ID_BorLow);

ACnet_BorFor26 = AgreeCnet05_26(ID_BorFor);
ACnet_BorFor45 = AgreeCnet05_45(ID_BorFor);
ACnet_BorFor85 = AgreeCnet05_85(ID_BorFor);
FCnet_BorFor26 = FracCnet05_26(ID_BorFor);
FCnet_BorFor45 = FracCnet05_45(ID_BorFor);
FCnet_BorFor85 = FracCnet05_85(ID_BorFor);

ACnet_tundra26 = AgreeCnet05_26(ID_tundra);
ACnet_tundra45 = AgreeCnet05_45(ID_tundra);
ACnet_tundra85 = AgreeCnet05_85(ID_tundra);
FCnet_tundra26 = FracCnet05_26(ID_tundra);
FCnet_tundra45 = FracCnet05_45(ID_tundra);
FCnet_tundra85 = FracCnet05_85(ID_tundra);

ACnet_sparse26 = AgreeCnet05_26(ID_sparse);
ACnet_sparse45 = AgreeCnet05_45(ID_sparse);
ACnet_sparse85 = AgreeCnet05_85(ID_sparse);
FCnet_sparse26 = FracCnet05_26(ID_sparse);
FCnet_sparse45 = FracCnet05_45(ID_sparse);
FCnet_sparse85 = FracCnet05_85(ID_sparse);

ACnet_bare26 = AgreeCnet05_26(ID_bare);
ACnet_bare45 = AgreeCnet05_45(ID_bare);
ACnet_bare85 = AgreeCnet05_85(ID_bare);
FCnet_bare26 = FracCnet05_26(ID_bare);
FCnet_bare45 = FracCnet05_45(ID_bare);
FCnet_bare85 = FracCnet05_85(ID_bare);

% the fractions of different biomes with robust change in ecosystem carbon
ID_TropLow26_sig = find(ACnet_TropLow26>0.6 & FCnet_TropLow26>0.5); 
ID_TropFor26_sig = find(ACnet_TropFor26>0.6 & FCnet_TropFor26>0.5);
ID_dry26_sig = find(ACnet_dry26>0.6 & FCnet_dry26>0.5);            
ID_tempLow26_sig = find(ACnet_tempLow26>0.6 & FCnet_tempLow26>0.5);
ID_tempFor26_sig = find(ACnet_tempFor26>0.6 & FCnet_tempFor26>0.5);
ID_BorLow26_sig = find(ACnet_BorLow26>0.6 & FCnet_BorLow26>0.5);   
ID_BorFor26_sig = find(ACnet_BorFor26>0.6 & FCnet_BorFor26>0.5);   
ID_tundra26_sig = find(ACnet_tundra26>0.6 & FCnet_tundra26>0.5);   
ID_sparse26_sig = find(ACnet_sparse26>0.6 & FCnet_sparse26>0.5); 
ID_bare26_sig = find(ACnet_bare26>0.6 & FCnet_bare26>0.5);  

sigBio26_num(1) = length(ID_TropLow26_sig);
sigBio26_num(2) = length(ID_TropFor26_sig);
sigBio26_num(3) = length(ID_dry26_sig);
sigBio26_num(4) = length(ID_tempLow26_sig);
sigBio26_num(5) = length(ID_tempFor26_sig);
sigBio26_num(6) = length(ID_BorLow26_sig);
sigBio26_num(7) = length(ID_BorFor26_sig);
sigBio26_num(8) = length(ID_tundra26_sig);
sigBio26_num(9) = length(ID_sparse26_sig);
sigBio26_num(10) = length(ID_bare26_sig);

sigBio26_frc = sigBio26_num./nansum(sigBio26_num(:))
[sigbio26_de, ID26_sig] = sort(sigBio26_frc,'descend')


ID_TropLow45_sig = find(ACnet_TropLow45>0.6 & FCnet_TropLow45>0.5);
ID_TropFor45_sig = find(ACnet_TropFor45>0.6 & FCnet_TropFor45>0.5);
ID_dry45_sig = find(ACnet_dry45>0.6 & FCnet_dry45>0.5);            
ID_tempLow45_sig = find(ACnet_tempLow45>0.6 & FCnet_tempLow45>0.5);
ID_tempFor45_sig = find(ACnet_tempFor45>0.6 & FCnet_tempFor45>0.5);
ID_BorLow45_sig = find(ACnet_BorLow45>0.6 & FCnet_BorLow45>0.5);   
ID_BorFor45_sig = find(ACnet_BorFor45>0.6 & FCnet_BorFor45>0.5);   
ID_tundra45_sig = find(ACnet_tundra45>0.6 & FCnet_tundra45>0.5);  
ID_sparse45_sig = find(ACnet_sparse45>0.6 & FCnet_sparse45>0.5);  
ID_bare45_sig = find(ACnet_bare45>0.6 & FCnet_bare45>0.5);  

sigBio45_num(1) = length(ID_TropLow45_sig);
sigBio45_num(2) = length(ID_TropFor45_sig);
sigBio45_num(3) = length(ID_dry45_sig);
sigBio45_num(4) = length(ID_tempLow45_sig);
sigBio45_num(5) = length(ID_tempFor45_sig);
sigBio45_num(6) = length(ID_BorLow45_sig);
sigBio45_num(7) = length(ID_BorFor45_sig);
sigBio45_num(8) = length(ID_tundra45_sig);
sigBio45_num(9) = length(ID_sparse45_sig);
sigBio45_num(10) = length(ID_bare45_sig);

sigBio45_frc = sigBio45_num./nansum(sigBio45_num(:))
[sigbio45_de, ID45_sig] = sort(sigBio45_frc,'descend')


ID_TropLow85_sig = find(ACnet_TropLow85>0.6 & FCnet_TropLow85>0.5);
ID_TropFor85_sig = find(ACnet_TropFor85>0.6 & FCnet_TropFor85>0.5);
ID_dry85_sig = find(ACnet_dry85>0.6 & FCnet_dry85>0.5);            
ID_tempLow85_sig = find(ACnet_tempLow85>0.6 & FCnet_tempLow85>0.5);
ID_tempFor85_sig = find(ACnet_tempFor85>0.6 & FCnet_tempFor85>0.5);
ID_BorLow85_sig = find(ACnet_BorLow85>0.6 & FCnet_BorLow85>0.5);   
ID_BorFor85_sig = find(ACnet_BorFor85>0.6 & FCnet_BorFor85>0.5);   
ID_tundra85_sig = find(ACnet_tundra85>0.6 & FCnet_tundra85>0.5);   
ID_sparse85_sig = find(ACnet_sparse85>0.6 & FCnet_sparse85>0.5);   
ID_bare85_sig = find(ACnet_bare85>0.6 & FCnet_bare85>0.5); 

sigBio85_num(1) = length(ID_TropLow85_sig);
sigBio85_num(2) = length(ID_TropFor85_sig);
sigBio85_num(3) = length(ID_dry85_sig);
sigBio85_num(4) = length(ID_tempLow85_sig);
sigBio85_num(5) = length(ID_tempFor85_sig);
sigBio85_num(6) = length(ID_BorLow85_sig);
sigBio85_num(7) = length(ID_BorFor85_sig);
sigBio85_num(8) = length(ID_tundra85_sig);
sigBio85_num(9) = length(ID_sparse85_sig);
sigBio85_num(10) = length(ID_bare85_sig);

sigBio85_frc = sigBio85_num./nansum(sigBio85_num(:))
[sigbio85_de, ID85_sig] = sort(sigBio85_frc,'descend')

% the fractions of different biomes with uncertain change in ecosystem carbon
ID_TropLow26_un = find(ACnet_TropLow26<0.2 & FCnet_TropLow26>0.5); 
ID_TropFor26_un = find(ACnet_TropFor26<0.2 & FCnet_TropFor26>0.5);
ID_dry26_un = find(ACnet_dry26<0.2 & FCnet_dry26>0.5);            
ID_tempLow26_un = find(ACnet_tempLow26<0.2 & FCnet_tempLow26>0.5);
ID_tempFor26_un = find(ACnet_tempFor26<0.2 & FCnet_tempFor26>0.5);
ID_BorLow26_un = find(ACnet_BorLow26<0.2 & FCnet_BorLow26>0.5);   
ID_BorFor26_un = find(ACnet_BorFor26<0.2 & FCnet_BorFor26>0.5);   
ID_tundra26_un = find(ACnet_tundra26<0.2 & FCnet_tundra26>0.5);   
ID_sparse26_un = find(ACnet_sparse26<0.2 & FCnet_sparse26>0.5); 
ID_bare26_un = find(ACnet_bare26<0.2 & FCnet_bare26>0.5); 

unBio26_num(1) = length(ID_TropLow26_un);
unBio26_num(2) = length(ID_TropFor26_un);
unBio26_num(3) = length(ID_dry26_un);
unBio26_num(4) = length(ID_tempLow26_un);
unBio26_num(5) = length(ID_tempFor26_un);
unBio26_num(6) = length(ID_BorLow26_un);
unBio26_num(7) = length(ID_BorFor26_un);
unBio26_num(8) = length(ID_tundra26_un);
unBio26_num(9) = length(ID_sparse26_un);
unBio26_num(10) = length(ID_bare26_un);

unBio26_frc = unBio26_num./nansum(unBio26_num(:))
[unBio26_de, ID26_un] = sort(unBio26_frc,'descend')


ID_TropLow45_un = find(ACnet_TropLow45<0.2 & FCnet_TropLow45>0.5);
ID_TropFor45_un = find(ACnet_TropFor45<0.2 & FCnet_TropFor45>0.5);
ID_dry45_un = find(ACnet_dry45<0.2 & FCnet_dry45>0.5);            
ID_tempLow45_un = find(ACnet_tempLow45<0.2 & FCnet_tempLow45>0.5);
ID_tempFor45_un = find(ACnet_tempFor45<0.2 & FCnet_tempFor45>0.5);
ID_BorLow45_un = find(ACnet_BorLow45<0.2 & FCnet_BorLow45>0.5);   
ID_BorFor45_un = find(ACnet_BorFor45<0.2 & FCnet_BorFor45>0.5);   
ID_tundra45_un = find(ACnet_tundra45<0.2 & FCnet_tundra45>0.5);  
ID_sparse45_un = find(ACnet_sparse45<0.2 & FCnet_sparse45>0.5); 
ID_bare45_un = find(ACnet_bare45<0.2 & FCnet_bare45>0.5);   

unBio45_num(1) = length(ID_TropLow45_un);
unBio45_num(2) = length(ID_TropFor45_un);
unBio45_num(3) = length(ID_dry45_un);
unBio45_num(4) = length(ID_tempLow45_un);
unBio45_num(5) = length(ID_tempFor45_un);
unBio45_num(6) = length(ID_BorLow45_un);
unBio45_num(7) = length(ID_BorFor45_un);
unBio45_num(8) = length(ID_tundra45_un);
unBio45_num(9) = length(ID_sparse45_un);
unBio45_num(10) = length(ID_bare45_un);

unBio45_frc = unBio45_num./nansum(unBio45_num(:))
[unBio45_de, ID45_un] = sort(unBio45_frc,'descend')


ID_TropLow85_un = find(ACnet_TropLow85<0.2 & FCnet_TropLow85>0.5);
ID_TropFor85_un = find(ACnet_TropFor85<0.2 & FCnet_TropFor85>0.5);
ID_dry85_un = find(ACnet_dry85<0.2 & FCnet_dry85>0.5);            
ID_tempLow85_un = find(ACnet_tempLow85<0.2 & FCnet_tempLow85>0.5);
ID_tempFor85_un = find(ACnet_tempFor85<0.2 & FCnet_tempFor85>0.5);
ID_BorLow85_un = find(ACnet_BorLow85<0.2 & FCnet_BorLow85>0.5);   
ID_BorFor85_un = find(ACnet_BorFor85<0.2 & FCnet_BorFor85>0.5);   
ID_tundra85_un = find(ACnet_tundra85<0.2 & FCnet_tundra85>0.5);   
ID_sparse85_un = find(ACnet_sparse85<0.2 & FCnet_sparse85>0.5); 
ID_bare85_un = find(ACnet_bare85<0.2 & FCnet_bare85>0.5);  

unBio85_num(1) = length(ID_TropLow85_un);
unBio85_num(2) = length(ID_TropFor85_un);
unBio85_num(3) = length(ID_dry85_un);
unBio85_num(4) = length(ID_tempLow85_un);
unBio85_num(5) = length(ID_tempFor85_un);
unBio85_num(6) = length(ID_BorLow85_un);
unBio85_num(7) = length(ID_BorFor85_un);
unBio85_num(8) = length(ID_tundra85_un);
unBio85_num(9) = length(ID_sparse85_un);
unBio85_num(10) = length(ID_bare85_un);

unBio85_frc = unBio85_num./nansum(unBio85_num(:))
[unBio85_de, ID85_un] = sort(unBio85_frc,'descend')

%% plotting the spatial patterns of robustness and uncertianty
figure
set(gcf,'position',[100 100 660 589])
maps = tight_subplot(3,1,[-0.1 -0.01],[0.09 -0.05],[0.02 0.44])

GlobalMap(1:180,1:360) = NaN;
GlobalMap(151:180,:) = [];
GlobalMap = flipud(GlobalMap);
raster_map = georasterref('RasterSize',size(GlobalMap),'Latlim',[-60 90],'Lonlim',[-180 180]);
% SSP126
axes(maps(1))
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
k_patch2 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_26(i,j) == 1
        
            X26_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y26_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_26(i,j) == 3
           X26_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y26_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
        if map2_26(i,j) == 2
           X26_patch2(:,k_patch2) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y26_patch2(:,k_patch2) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch2 = k_patch2+1 
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
% add hatch for consistent with no change 
if k_patch2 > 10
    h = patchm(Y26_patch2,X26_patch2,'g');
end
h2 = hatchfill2(h,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.93,0.69,0.13],'HatchAngle',40,'HatchDensity',60);
h.FaceColor = 'none'
h.EdgeColor = 'none'

text(-2.36,1.5, '(a) low carbon emission scenario','HorizontalAlignment','left',...
        'FontName','Arial','FontSize',11);


% SSP245
axes(maps(2))
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
k_patch2 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_45(i,j) == 1
        
            X45_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y45_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_45(i,j) == 3
           X45_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y45_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end
        
        if map2_45(i,j) == 2
           X45_patch2(:,k_patch2) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y45_patch2(:,k_patch2) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch2 = k_patch2+1 
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
% add hatch for consistent with no change 
if k_patch2 > 10
    h = patchm(Y45_patch2,X45_patch2,'g');
end
h2 = hatchfill2(h,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.93,0.69,0.13],'HatchAngle',40,'HatchDensity',60);
h.FaceColor = 'none'
h.EdgeColor = 'none'

text(-2.36,1.5, '(c) moderate carbon emission scenario','HorizontalAlignment','left',...
        'FontName','Arial','FontSize',11);
    

% SSP585
axes(maps(3))
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
k_patch2 = 1
for i = 1:m-1
    for j = 1:n-1
        if map1_85(i,j) == 1
        
            X85_patch1(:,k_patch1) = [lon(j) lon(j+1) lon(j+1) lon(j)];
            Y85_patch1(:,k_patch1) = [lat(i) lat(i) lat(i+1) lat(i+1)];
            k_patch1 = k_patch1+1            
        end       
        
        if map3_85(i,j) == 3
           X85_patch3(:,k_patch3) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y85_patch3(:,k_patch3) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch3 = k_patch3+1 
        end

        if map2_85(i,j) == 2
           X85_patch2(:,k_patch2) = [lon(j) lon(j+1) lon(j+1) lon(j)];
           Y85_patch2(:,k_patch2) = [lat(i) lat(i) lat(i+1) lat(i+1)];
           k_patch2 = k_patch2+1 
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
% add hatch for consistent with no change 
if k_patch2 > 10
    h = patchm(Y85_patch2,X85_patch2,'g');
end
h2 = hatchfill2(h,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.93,0.69,0.13],'HatchAngle',40,'HatchDensity',60);
h.FaceColor = 'none'
h.EdgeColor = 'none'


text(-2.36,1.5, '(e) high carbon emission scenario','HorizontalAlignment','left',...
        'FontName','Arial','FontSize',11);

text(-0.25,-2.12,['Spatial pattern of robustness and uncertainty',newline,' in projected land carbon change'],...
    'HorizontalAlignment','center',...
        'FontName','Arial','FontSize',11)       
    
%%
% add the area fraction of robustness and uncertianty to each map
%ssp126
Cnet_26(151:180,:) = [];
map1_26(151:180,:) = [];
map3_26(151:180,:) = [];
map2_26(151:180,:) = [];
cell_all26 = nansum(~isnan(Cnet_26(:)))
rbt_26_fra = nansum(~isnan(map1_26(:))) ./cell_all26
uncert_26_fra = nansum(~isnan(map3_26(:)))./cell_all26
agreeNO_26_fra = nansum(~isnan(map2_26(:)))./cell_all26
other_26_fra = 1 - rbt_26_fra - uncert_26_fra - agreeNO_26_fra
%ssp245
Cnet_45(151:180,:) = [];
map1_45(151:180,:) = [];
map3_45(151:180,:) = [];
map2_45(151:180,:) = [];
cell_all45 = nansum(~isnan(Cnet_45(:)))
rbt_45_fra = nansum(~isnan(map1_45(:))) ./cell_all45
uncert_45_fra = nansum(~isnan(map3_45(:)))./cell_all45
agreeNO_45_fra = nansum(~isnan(map2_45(:)))./cell_all45
other_45_fra = 1 - rbt_45_fra - uncert_45_fra - agreeNO_45_fra
%ssp585
Cnet_85(151:180,:) = [];
map1_85(151:180,:) = [];
map3_85(151:180,:) = [];
map2_85(151:180,:) = [];
cell_all85 = nansum(~isnan(Cnet_85(:)))
rbt_85_fra = nansum(~isnan(map1_85(:))) ./cell_all85
uncert_85_fra = nansum(~isnan(map3_85(:)))./cell_all85
agreeNO_85_fra = nansum(~isnan(map2_85(:)))./cell_all85
other_85_fra = 1 - rbt_85_fra - uncert_85_fra - agreeNO_85_fra


panel = tight_subplot(3,1,[0.168 0.24],[0.157 0.15],[0.04 0.83]) 
axes(panel(1))
hold on
bar(1,rbt_26_fra,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_26_fra,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
hatch_bar = bar(3,agreeNO_26_fra,'FaceColor','none','EdgeColor',[0.93,0.69,0.13],'BarWidth',0.7,'LineWidth',1)
h = hatchfill2(hatch_bar,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.93,0.69,0.13],'HatchAngle',40,'HatchDensity',50);
bar(4,other_26_fra,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1)

set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 5],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});
%set(gca,'color','none');

axes(panel(2))
hold on
bar(1,rbt_45_fra,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar(2,uncert_45_fra,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
hatch_bar = bar(3,agreeNO_45_fra,'FaceColor','none','EdgeColor',[0.93,0.69,0.13],'BarWidth',0.7,'LineWidth',1)
h = hatchfill2(hatch_bar,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.93,0.69,0.13],'HatchAngle',40,'HatchDensity',50);
bar(4,other_45_fra,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 5],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});

axes(panel(3))
hold on
bar1 = bar(1,rbt_85_fra,'FaceColor',[0.38,0.89,0.02],'EdgeColor',[0.5, 0.5 0.5],'BarWidth',0.7,'LineWidth',1.5)
bar2 = bar(2,uncert_85_fra,'FaceColor',[0.50,0.50,0.50],'EdgeColor',[0.47,0.67,0.19],'BarWidth',0.7,'LineWidth',1.5)
hatch_bar = bar(3,agreeNO_85_fra,'FaceColor','none','EdgeColor',[0.93,0.69,0.13],'BarWidth',0.7,'LineWidth',1)
h = hatchfill2(hatch_bar,'single','LineWidth',1.2,'HatchLineStyle','-','HatchColor',[0.93,0.69,0.13],'HatchAngle',40,'HatchDensity',50);
bar4 = bar(4,other_85_fra,'FaceColor','none','EdgeColor',[0.15 0.15 0.15],'BarWidth',0.7,'LineWidth',1)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',0.8,'box','off')
set(gca,'XLim',[0 5],'YLim',[0 0.7]);
xticks([]);
yticks([0 0.2 0.4 0.6]);
yticklabels({'0','20%','40%','60%'});

legendData = {'Robust','Uncertian','Agree on marginal change','Others'};
[legend_h, object_h, plot_h, text_str] = legendflex([bar1 bar2 hatch_bar bar4], legendData,...
    'ncol',2,'Anchor', [6 2], 'Buffer',[0 -10],'Position',[31.740576701268708,64.75727083333332,294.9988465974625,32.8640625],...
    'box','off','color','none',...
    'FontSize',9,'FontName','Arial');
% object_h(1) is the first bar's text
% object_h(2) is the second bar's text
% object_h(3) is the first bar's patch
% object_h(4) is the second bar's patch
%object_h(7) is the thrid bar's patch
% Set the patches within the legend
hatchfill2(object_h(7), 'single', 'HatchAngle', 40, 'HatchDensity', 20, 'HatchColor', [0.93,0.69,0.13]);


%% ploting the area contribution of different biomes to the global robustness and uncertianty

figs_Bios_sig = tight_subplot(3,1,[0.05 0.11],[0.15 0.03],[0.65 0.02])     
color_iveg = mycolor_Bios             
legIveg_str = {'Tropical low', 'Tropical forest', 'Drylands', 'Temperate low',...
               'Temperate forest', 'Boreal low', 'Boreal forest', 'Tundra','Sparse','Bare'};
           
mycolor_Bios = [0.5, 1, 0;...
                0.13,0.55,0.13;...
                1,0.6,0.07;...
                0.74,0.99,0.79;...
                0.22,0.37,0.06;...
                0.01,0.66,0.62;...
                0.03,0.18,0.33;...
                0,1,1;...
                0.94,0.9,0.55;....
                0.7,0.7,0.7]           
                      
           
axes(figs_Bios_sig(1));
hold on
X_bios = 9:-1:1;
bbar26_bios_sig(1) = barh(10, sigbio26_de(1),'FaceColor',mycolor_Bios(ID26_sig(1),:),'EdgeColor','none')
bbar26_bios_sig(2) = barh(9, sigbio26_de(2),'FaceColor',mycolor_Bios(ID26_sig(2),:),'EdgeColor','none')
bbar26_bios_sig(3) = barh(8, sigbio26_de(3),'FaceColor',mycolor_Bios(ID26_sig(3),:),'EdgeColor','none')
bbar26_bios_sig(4) = barh(7, sigbio26_de(4),'FaceColor',mycolor_Bios(ID26_sig(4),:),'EdgeColor','none')
bbar26_bios_sig(5) = barh(6, sigbio26_de(5),'FaceColor',mycolor_Bios(ID26_sig(5),:),'EdgeColor','none')
bbar26_bios_sig(6) = barh(5, sigbio26_de(6),'FaceColor',mycolor_Bios(ID26_sig(6),:),'EdgeColor','none')
bbar26_bios_sig(7) = barh(4, sigbio26_de(7),'FaceColor',mycolor_Bios(ID26_sig(7),:),'EdgeColor','none')
bbar26_bios_sig(8) = barh(3, sigbio26_de(8),'FaceColor',mycolor_Bios(ID26_sig(8),:),'EdgeColor','none')
bbar26_bios_sig(9) = barh(2, sigbio26_de(9),'FaceColor',mycolor_Bios(ID26_sig(9),:),'EdgeColor','none')
bbar26_bios_sig(10) = barh(1, sigbio26_de(10),'FaceColor',mycolor_Bios(ID26_sig(10),:),'EdgeColor','none')

set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','off')
set(gca,'XLim',[0 0.7],'YLim',[0 11]);
yticks([1 2 3 4 5 6 7 8 9 10]);
yticklabels(legIveg_str(ID26_sig(10:-1:1)));
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6]);
xticklabels({'0' '10' '20' '30' '40' '50' '60%'});
set(gca,'Fontname','Arial','FontSize',8,'color',[0.95 0.99 0.91]);
text(-0.063,11.35,'(b)','HorizontalAlignment','center','FontName','Arial','FontSize',10)

axes(figs_Bios_sig(2));
hold on
X_bios = 9:-1:1;
bbar45_bios_sig(1) = barh(10, sigbio45_de(1),'FaceColor',mycolor_Bios(ID45_sig(1),:),'EdgeColor','none')
bbar45_bios_sig(2) = barh(9, sigbio45_de(2),'FaceColor',mycolor_Bios(ID45_sig(2),:),'EdgeColor','none')
bbar45_bios_sig(3) = barh(8, sigbio45_de(3),'FaceColor',mycolor_Bios(ID45_sig(3),:),'EdgeColor','none')
bbar45_bios_sig(4) = barh(7, sigbio45_de(4),'FaceColor',mycolor_Bios(ID45_sig(4),:),'EdgeColor','none')
bbar45_bios_sig(5) = barh(6, sigbio45_de(5),'FaceColor',mycolor_Bios(ID45_sig(5),:),'EdgeColor','none')
bbar45_bios_sig(6) = barh(5, sigbio45_de(6),'FaceColor',mycolor_Bios(ID45_sig(6),:),'EdgeColor','none')
bbar45_bios_sig(7) = barh(4, sigbio45_de(7),'FaceColor',mycolor_Bios(ID45_sig(7),:),'EdgeColor','none')
bbar45_bios_sig(8) = barh(3, sigbio45_de(8),'FaceColor',mycolor_Bios(ID45_sig(8),:),'EdgeColor','none')
bbar45_bios_sig(9) = barh(2, sigbio45_de(9),'FaceColor',mycolor_Bios(ID45_sig(9),:),'EdgeColor','none')
bbar45_bios_sig(10) = barh(1, sigbio45_de(10),'FaceColor',mycolor_Bios(ID45_sig(10),:),'EdgeColor','none')


set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','off')
set(gca,'XLim',[0 0.7],'YLim',[0 11]);
yticks([1 2 3 4 5 6 7 8 9 10]);
yticklabels(legIveg_str(ID45_sig(10:-1:1)));
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6]);
xticklabels({'0' '10' '20' '30' '40' '50' '60%'});
set(gca,'Fontname','Arial','FontSize',8,'color',[0.95 0.99 0.91]);
text(-0.063,11.35,'(d)','HorizontalAlignment','center','FontName','Arial','FontSize',10)

axes(figs_Bios_sig(3));
hold on
X_bios = 9:-1:1;
bbar85_bios_sig(1) = barh(10, sigbio85_de(1),'FaceColor',mycolor_Bios(ID85_sig(1),:),'EdgeColor','none')
bbar85_bios_sig(2) = barh(9, sigbio85_de(2),'FaceColor',mycolor_Bios(ID85_sig(2),:),'EdgeColor','none')
bbar85_bios_sig(3) = barh(8, sigbio85_de(3),'FaceColor',mycolor_Bios(ID85_sig(3),:),'EdgeColor','none')
bbar85_bios_sig(4) = barh(7, sigbio85_de(4),'FaceColor',mycolor_Bios(ID85_sig(4),:),'EdgeColor','none')
bbar85_bios_sig(5) = barh(6, sigbio85_de(5),'FaceColor',mycolor_Bios(ID85_sig(5),:),'EdgeColor','none')
bbar85_bios_sig(6) = barh(5, sigbio85_de(6),'FaceColor',mycolor_Bios(ID85_sig(6),:),'EdgeColor','none')
bbar85_bios_sig(7) = barh(4, sigbio85_de(7),'FaceColor',mycolor_Bios(ID85_sig(7),:),'EdgeColor','none')
bbar85_bios_sig(8) = barh(3, sigbio85_de(8),'FaceColor',mycolor_Bios(ID85_sig(8),:),'EdgeColor','none')
bbar85_bios_sig(9) = barh(2, sigbio85_de(9),'FaceColor',mycolor_Bios(ID85_sig(9),:),'EdgeColor','none')
bbar85_bios_sig(10) = barh(1, sigbio85_de(10),'FaceColor',mycolor_Bios(ID85_sig(10),:),'EdgeColor','none')


set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','off')
set(gca,'XLim',[0 0.7],'YLim',[0 11]);
yticks([1 2 3 4 5 6 7 8 9 10]);
yticklabels(legIveg_str(ID85_sig(10:-1:1)));
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6]);
xticklabels({'0' '10' '20' '30' '40' '50' '60%'});
set(gca,'Fontname','Arial','FontSize',8,'color',[0.95 0.99 0.91]);
text(-0.063,11.35,'(f)','HorizontalAlignment','center','FontName','Arial','FontSize',10)
xlabel(['Area contribution to robust projections',newline,' of land carbon change'],'FontName','Arial','FontSize',11)















