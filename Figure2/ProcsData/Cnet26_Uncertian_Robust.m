clear;clc
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')

% CMIP6
% Changes in Net C change under ssp126
%% CMIP6
load('cLand_cmip6_126.mat')

% for CMIP6 A2  
% the multi-model mean value of the land C storage over historical 2 decades (1986-2005)
sp6_CneThist11(:,:,:,1) = cLand_BCC(:,:,137:156);
sp6_CneThist11(:,:,:,2) = cLand_CAN(:,:,137:156);
sp6_CneThist11(:,:,:,3) = cLand_CESM_W(:,:,137:156);
sp6_CneThist11(:,:,:,4) = cLand_UK(:,:,137:156);
sp6_CneThist11(:,:,:,5) = cLand_IPSL(:,:,137:156);
sp6_CneThist11(:,:,:,6) = cLand_MIC(:,:,137:156);
sp6_CneThist11(:,:,:,7) = cLand_MPI(:,:,137:156);
sp6_CneThist11(:,:,:,8) = cLand_NOR(:,:,137:156);
sp6_CneThist11(:,:,:,9) = cLand_ASS(:,:,137:156);
sp6_CneThist11(:,:,:,10) = cLand_CNRM(:,:,137:156);
sp6_CneThist11(:,:,:,11) = cLand_EC(:,:,137:156);

sp6_hist_avg11= nanmean(sp6_CneThist11,4);
sp6_hist_avg11(:,1:30,:) = NaN; 
sp6_hist_M11 = nanmean(sp6_hist_avg11,3);
mask = nanmean(cLand_BCC(:,:,137:156),3);
mask(~isnan(mask)) = 1; 
%save('E:\1_CMIP56_Csink\3_MatData\1_UncertRobust\mask.mat','mask')

% the multi-model mean value of the land C storage over the last 2 decades (2081-2100) 
sp6_CneTend11(:,:,:,1) = cLand_BCC(:,:,232:251);
sp6_CneTend11(:,:,:,2) = cLand_CAN(:,:,232:251);
sp6_CneTend11(:,:,:,3) = cLand_CESM_W(:,:,232:251);
sp6_CneTend11(:,:,:,4) = cLand_UK(:,:,232:251);
sp6_CneTend11(:,:,:,5) = cLand_IPSL(:,:,232:251);
sp6_CneTend11(:,:,:,6) = cLand_MIC(:,:,232:251);
sp6_CneTend11(:,:,:,7) = cLand_MPI(:,:,232:251);
sp6_CneTend11(:,:,:,8) = cLand_NOR(:,:,232:251);
sp6_CneTend11(:,:,:,9) = cLand_ASS(:,:,232:251);
sp6_CneTend11(:,:,:,10) = cLand_CNRM(:,:,232:251);
sp6_CneTend11(:,:,:,11) = cLand_EC(:,:,232:251);

sp6_end_avg11= nanmean(sp6_CneTend11,4);
sp6_end_avg11(:,1:30,:) = NaN; 
sp6_end_M11 = nanmean(sp6_end_avg11,3);

sp6_Cnet_M11 = sp6_end_M11 - sp6_hist_M11;

% estimating A2
A2_Cnet(1:360,1:180)= NaN;
n=0;
for i=1:360
    for j=1:180
        cell_bg = sp6_hist_avg11(i,j,:);
        cell_ed = sp6_end_avg11(i,j,:);
        
        cell_bg(isnan(cell_bg)) = [];
        cell_ed(isnan(cell_ed)) = [];
        
        cell_bg(cell_bg<=0) = [];
        cell_ed(cell_ed<=0) = [];
        
        if (length(cell_bg)>=10) && (length(cell_ed)>=10)
          
            [cdf1all X1] = ecdf(cell_bg(:));
            [cdf2all X2] = ecdf(cell_ed(:));
            
            [x1,ia1,ic1] = unique(X1);
            cdf1 = cdf1all(ia1);
            
            [x2,ia2,ic2] = unique(X2);
            cdf2 = cdf2all(ia2);
            
            X = [x1;x2];
            Y = [cdf1; cdf2];
            
            x_all = linspace(min(X),max(X),10000);
            if length(x1)>5 && length(x2)>5
                Y01 = interp1(x1,cdf1,x_all);
                Y02 = interp1(x2,cdf2,x_all);
             
                index1 = find(x_all <= max(min(x1),min(x2)));
                if max(min(x1),min(x2)) == min(x1)
                    Y01(index1) = 0;
                else
                    Y02(index1) = 0;
                end
                
                index2 = find(x_all >= min(max(x1),max(x2)));
                if min(max(x1),max(x2)) == max(x1)
                    Y01(index2) = 1;
                else
                    Y02(index2) = 1;
                end
               A2 = trapz(x_all,abs(Y01-Y02));
               A2_Cnet(i,j) = A2;
               n = n+1 ;
            end
        end      
        cell_bg = [];
        cell_ed = [];
    end
end

% for CMIP6 A1
% projected changes in Land Cstorage for each model
reCland_6_M11(:,:,:,1) = cLand_BCC(:,:,232:251) - cLand_BCC(:,:,137:156);
reCland_6_M11(:,:,:,2) = cLand_CAN(:,:,232:251) - cLand_CAN(:,:,137:156);
reCland_6_M11(:,:,:,3) = cLand_CESM_W(:,:,232:251) - cLand_CESM_W(:,:,137:156);
reCland_6_M11(:,:,:,4) = cLand_UK(:,:,232:251) - cLand_UK(:,:,137:156);
reCland_6_M11(:,:,:,5) = cLand_IPSL(:,:,232:251) - cLand_IPSL(:,:,137:156);
reCland_6_M11(:,:,:,6) = cLand_MIC(:,:,232:251) - cLand_MIC(:,:,137:156);
reCland_6_M11(:,:,:,7) = cLand_MPI(:,:,232:251) - cLand_MPI(:,:,137:156);
reCland_6_M11(:,:,:,8) = cLand_NOR(:,:,232:251) - cLand_NOR(:,:,137:156);
reCland_6_M11(:,:,:,9) = cLand_ASS(:,:,232:251) - cLand_ASS(:,:,137:156);
reCland_6_M11(:,:,:,10) = cLand_CNRM(:,:,232:251) - cLand_CNRM(:,:,137:156);
reCland_6_M11(:,:,:,11) = cLand_EC(:,:,232:251) - cLand_EC(:,:,137:156);


BCC_Cnet = cLand_BCC(:,:,232:251) - cLand_BCC(:,:,137:156); BCC_Cnet(:,1:30,:) = NaN; 
Can_Cnet = cLand_CAN(:,:,232:251) - cLand_CAN(:,:,137:156); Can_Cnet(:,1:30,:) = NaN; 
CESMW_Cnet = cLand_CESM_W(:,:,232:251) - cLand_CESM_W(:,:,137:156); CESMW_Cnet(:,1:30,:) = NaN; 
UK_Cnet = cLand_UK(:,:,232:251) - cLand_UK(:,:,137:156); UK_Cnet(:,1:30,:) = NaN; 
IPSL5_Cnet = cLand_IPSL(:,:,232:251) - cLand_IPSL(:,:,137:156); IPSL5_Cnet(:,1:30,:) = NaN; 
MIROC_Cnet = cLand_MIC(:,:,232:251) - cLand_MIC(:,:,137:156); MIROC_Cnet(:,1:30,:) = NaN; 
MPI_Cnet = cLand_MPI(:,:,232:251) - cLand_MPI(:,:,137:156); MPI_Cnet(:,1:30,:) = NaN;  
NOR_Cnet = cLand_NOR(:,:,232:251) - cLand_NOR(:,:,137:156); NOR_Cnet(:,1:30,:) = NaN; 
ASS_Cnet = cLand_ASS(:,:,232:251) - cLand_ASS(:,:,137:156);ASS_Cnet(:,1:30,:) = NaN; 
CNRM_Cnet = cLand_CNRM(:,:,232:251) - cLand_CNRM(:,:,137:156);CNRM_Cnet(:,1:30,:) = NaN; 
EC_Cnet = cLand_EC(:,:,232:251) - cLand_EC(:,:,137:156);EC_Cnet(:,1:30,:) = NaN; 

reCland_6_Mavg11 = nanmean(reCland_6_M11,4);
reCland_6_Mavg11(:,1:30,:) = NaN; 
A1_Cnet(1:360,1:180)= NaN;
N=0; 

for i=1:360
    for j=1:180
        
        cell_M = reCland_6_Mavg11(i,j,:); cell_M(isnan(cell_M)) = []; cell_M(cell_M==0) = [];
        
        cell_bcc = BCC_Cnet(i,j,:); %cell_bcc(isnan(cell_bcc)) = []; cell_bcc(cell_bcc<0) = [];
        cell_can = Can_Cnet(i,j,:); %cell_can(isnan(cell_can)) = []; cell_can(cell_can<0) = [];
        cell_cesmW = CESMW_Cnet(i,j,:); %cell_ccsm(isnan(cell_ccsm)) = []; cell_ccsm(cell_ccsm<0) = [];
        cell_uk = UK_Cnet(i,j,:);
        
        cell_ipsl5 = IPSL5_Cnet(i,j,:); %cell_ipsl5A(isnan(cell_ipsl5A)) = []; cell_ipsl5A(cell_ipsl5A<0) = [];
        cell_miroc = MIROC_Cnet(i,j,:); %cell_miroc(isnan(cell_miroc)) = []; cell_miroc(cell_miroc<0) = [];
        cell_mpi = MPI_Cnet(i,j,:); %cell_mpiM(isnan(cell_mpiM)) = []; cell_mpiM(cell_mpiM<0) = [];
        cell_nor = NOR_Cnet(i,j,:); %cell_norM(isnan(cell_norM)) = []; cell_norM(cell_norM<0) = [];
        
        cell_ass = ASS_Cnet(i,j,:); 
        cell_cnrm = CNRM_Cnet(i,j,:); 
        cell_ec = EC_Cnet(i,j,:); 
        
        
        Models6_all = [cell_bcc(:) cell_can(:) cell_cesmW(:) cell_uk(:) ...
                        cell_ipsl5(:) cell_miroc(:) cell_mpi(:) cell_nor(:) ...
                        cell_ass(:) cell_cnrm(:) cell_ec(:)];            
        Models6_all(isnan(Models6_all)) = [];
        num_models = length(Models6_all(:))./20;
        
        if isempty(cell_M)==0 && num_models >=5 
           [cdf_M, x_M] = ecdf(cell_M(:));
           [cdf_k, x_k] = ecdf(Models6_all(:));
            
           [diff_xM,ia1,ic1] = unique(x_M);
           diff_cdf_M = cdf_M(ia1);
            
           [diff_xk,ia2,ic2] = unique(x_k);
           diff_cdf_k = cdf_k(ia2);
           
           Y = [ diff_cdf_M; diff_cdf_k];
           X = [diff_xM; diff_xk];
            
           x = linspace(min(X),max(X),10000); % A1 = 0;
           
           if length(diff_xM) > 5 && length(diff_cdf_M)>5
            y01 = interp1(diff_xM,diff_cdf_M,x);
            y02 = interp1(diff_xk,diff_cdf_k,x);
            
            index1 = find( x<= max(min(x_M),min(x_k)));
            if max(min(diff_xM),min(diff_xk)) == min(diff_xM)
               y01(index1) = 0;
            else 
               y02(index1) = 0;     
            end
            
            index2 = find( x>= min(max(x_M),max(x_k)));
            if min(max(diff_xM),max(diff_xk)) == max(diff_xM)
               y01(index2) = 1;
            else 
               y02(index2) = 1;    
            end
            A1 = trapz(x,abs(y01-y02));
            A1_Cnet(i,j) = A1;
            N = N+1
           end
        end
       
    end
end

R_Cnet(1:360,1:180) = NaN;
for i=1:360
    for j=1:180
        
        if isnan(A1_Cnet(i,j))==0 && isnan(A2_Cnet(i,j))==0
            
            R_Cnet(i,j) = 1-A1_Cnet(i,j)./A2_Cnet(i,j);
            
        end
    end
end

%% test whether the changes in the net land C sink is signicant
% calculate the fractions of models with significant change
clearvars -except sp6_CneThist11 sp6_CneTend11 R_Cnet A2_Cnet A1_Cnet sp6_Cnet_M11 mask

frac_sig_Cnet(1:360,1:180) =NaN;
for i=1:360
    for j=1:180
        p_all(1:8) = NaN;
        
        M1_ed = sp6_CneTend11(i,j,:,1);
        M1_bg = sp6_CneThist11(i,j,:,1); 
        if length(find(~isnan(M1_ed(:)))) >= 10 && length(find(~isnan(M1_bg(:))))>=10
            p_all(1) = ranksum(M1_ed(:),M1_bg(:));
        end
        
        M2_ed = sp6_CneTend11(i,j,:,2);
        M2_bg = sp6_CneThist11(i,j,:,2);
        if length(find(~isnan(M2_ed(:)))) >= 10 && length(find(~isnan(M2_bg(:))))>=10
            p_all(2) = ranksum(M2_ed(:),M2_bg(:));
        end
        
        M3_ed = sp6_CneTend11(i,j,:,3);
        M3_bg = sp6_CneThist11(i,j,:,3);
        if length(find(~isnan(M3_ed(:)))) >= 10 && length(find(~isnan(M3_bg(:))))>=10
            p_all(3) = ranksum(M3_ed(:), M3_bg(:));
        end
        
        M4_ed = sp6_CneTend11(i,j,:,4);
        M4_bg = sp6_CneThist11(i,j,:,4);
        if length(find(~isnan(M4_ed(:)))) >= 10 && length(find(~isnan(M4_bg(:))))>=10
            p_all(4) = ranksum(M4_ed(:),M4_bg(:));
        end
        
        M5_ed = sp6_CneTend11(i,j,:,5);
        M5_bg = sp6_CneThist11(i,j,:,5);
        if length(find(~isnan(M5_ed(:)))) >= 10 && length(find(~isnan(M5_bg(:))))>=10
            p_all(5) = ranksum(M5_ed(:),M5_bg(:));
        end
        
        M6_ed = sp6_CneTend11(i,j,:,6);
        M6_bg = sp6_CneThist11(i,j,:,6);
        if length(find(~isnan(M6_ed(:)))) >= 10 && length(find(~isnan(M6_bg(:))))>=10
            p_all(6) = ranksum(M6_ed(:),M6_bg(:));
        end
        
        M7_ed = sp6_CneTend11(i,j,:,7);
        M7_bg = sp6_CneThist11(i,j,:,7);
        if length(find(~isnan(M7_ed(:)))) >= 10 && length(find(~isnan(M7_bg(:))))>=10
            p_all(7) = ranksum(M7_ed(:),M7_bg(:));
        end
        
        M8_ed = sp6_CneTend11(i,j,:,8);
        M8_bg = sp6_CneThist11(i,j,:,8);
        if length(find(~isnan(M8_ed(:)))) >= 10 && length(find(~isnan(M8_bg(:))))>=10
            p_all(8) = ranksum(M8_ed(:),M8_bg(:));
        end 
        
        M9_ed = sp6_CneTend11(i,j,:,9);
        M9_bg = sp6_CneThist11(i,j,:,9);
        if length(find(~isnan(M9_ed(:)))) >= 10 && length(find(~isnan(M9_bg(:))))>=10
            p_all(9) = ranksum(M9_ed(:),M9_bg(:));
        end  
        
        M10_ed = sp6_CneTend11(i,j,:,10);
        M10_bg = sp6_CneThist11(i,j,:,10);
        if length(find(~isnan(M10_ed(:)))) >= 10 && length(find(~isnan(M10_bg(:))))>=10
            p_all(10) = ranksum(M10_ed(:),M10_bg(:));
        end  
        
        M11_ed = sp6_CneTend11(i,j,:,11);
        M11_bg = sp6_CneThist11(i,j,:,11);
        if length(find(~isnan(M11_ed(:)))) >= 10 && length(find(~isnan(M11_bg(:))))>=10
            p_all(11) = ranksum(M11_ed(:),M11_bg(:));
        end  
        
        
        if length(~isnan(p_all(:)))>=8            
            frac_sig = length(find(p_all<0.05))./length(~isnan(p_all(:)));
            frac_sig_Cnet(i,j) = frac_sig;
        end
        
    end
end

%%
clearvars -except frac_sig_Cnet  R_Cnet A2_Cnet A1_Cnet sp6_Cnet_M11 mask
%cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet')
%save('Cnet11_ssp126_CMIP6_uncertRobut.mat')

mapR06_Cnet(1:360,1:180) = NaN;  % agree on significant change 0.6
mapR08_Cnet(1:360,1:180) = NaN; % agree on significant change 0.8
mapfrac02_Cnet(1:360,1:180) = NaN;  % agree on no change
mapfrac05_R02_Cnet(1:360,1:180) = NaN;  % inconsistent change 
map4_Cnet26(1:360,1:180) = NaN;  % others

for i=1:360
    for j=1:180
        
        if isnan(R_Cnet(i,j)) ==0 | isnan(frac_sig_Cnet(i,j)) ==0
            if R_Cnet(i,j)>=0.8
               mapR08_Cnet(i,j) = 1; 
            end  
            if R_Cnet(i,j)>=0.6 && frac_sig_Cnet(i,j)> 0.5
               mapR06_Cnet(i,j) = 1; 
            
            elseif frac_sig_Cnet(i,j)<= 0.2 && frac_sig_Cnet(i,j)>0
                mapfrac02_Cnet(i,j) = 2;
            
            elseif R_Cnet(i,j)<0.2 && frac_sig_Cnet(i,j)> 0.5
                mapfrac05_R02_Cnet(i,j) = 3;
            else
                map4_Cnet26(i,j) = 4;
            end
        
        end
        
    end
end
mapR06_Cnet = mapR06_Cnet.*mask;
mapR08_Cnet = mapR08_Cnet.*mask;
mapfrac02_Cnet = mapfrac02_Cnet.*mask;
mapfrac05_R02_Cnet = mapfrac05_R02_Cnet.*mask;
map4_Cnet26 = map4_Cnet26.*mask;

sp6_Cnet_M11 = sp6_Cnet_M11.*mask; 
R_Cnet = R_Cnet.* mask;
frac_sig_Cnet = frac_sig_Cnet.*mask;

a = length(find(mapR06_Cnet==1))
b = length(find(mapfrac02_Cnet==2))
c = length(find(mapfrac05_R02_Cnet==3))
d = length(find(map4_Cnet26==4))
e = length(find(mapR08_Cnet==1))

% change sp5_Cnet_M8 map1_CMIP5£¬map1_CMIP5£¬map1_CMIP5£¬map1_CMIP5£¬map1_CMIP5 into global map
mapR06_Cnet = rot90(mapR06_Cnet);
mapR08_Cnet = rot90(mapR08_Cnet);
mapfrac02_Cnet = rot90(mapfrac02_Cnet);
mapfrac05_R02_Cnet = rot90(mapfrac05_R02_Cnet);
map4_Cnet26 = rot90(map4_Cnet26);

sp6_reCnet_M11  = rot90(sp6_Cnet_M11 );
R_reCnet = rot90(R_Cnet);
frac_REsig_Cnet = rot90(frac_sig_Cnet);

% left and right
New_mapR06_Cnet(1:180,1:360) = NaN;
New_mapR08_Cnet(1:180,1:360) = NaN;
New_mapfrac02_Cnet(1:180,1:360) = NaN;
New_mapfrac05_r02_Cnet(1:180,1:360) = NaN;
New_map4_Cnet(1:180,1:360) = NaN;
New_Cnet26_cmip6(1:180,1:360) = NaN;
New_R_Cnet(1:180,1:360) = NaN;
New_frac_sig_Cnet(1:180,1:360) = NaN;

New_mapR06_Cnet(:,1:180) = mapR06_Cnet(:,181:360);
New_mapR06_Cnet(:,181:360) = mapR06_Cnet(:,1:180);

New_mapR08_Cnet(:,1:180) = mapR08_Cnet(:,181:360);
New_mapR08_Cnet(:,181:360) = mapR08_Cnet(:,1:180);

New_mapfrac02_Cnet(:,1:180) = mapfrac02_Cnet(:,181:360);
New_mapfrac02_Cnet(:,181:360) = mapfrac02_Cnet(:,1:180);

New_mapfrac05_r02_Cnet(:,1:180) = mapfrac05_R02_Cnet(:,181:360);
New_mapfrac05_r02_Cnet(:,181:360) = mapfrac05_R02_Cnet(:,1:180);

New_map4_Cnet(:,1:180) = map4_Cnet26(:,181:360);
New_map4_Cnet(:,181:360) = map4_Cnet26(:,1:180);

New_Cnet26_cmip6(:,1:180) = sp6_reCnet_M11(:,181:360);
New_Cnet26_cmip6(:,181:360) = sp6_reCnet_M11(:,1:180);

New_R_Cnet(:,1:180) = R_reCnet(:,181:360);
New_R_Cnet(:,181:360) = R_reCnet(:,1:180);

New_frac_sig_Cnet(:,1:180) = frac_REsig_Cnet(:,181:360);
New_frac_sig_Cnet(:,181:360) = frac_REsig_Cnet(:,1:180);


%New_Cnetc_CMIP6(New_Cnetc_CMIP6<=0) = NaN;
imshow(New_R_Cnet)
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\mapR1_0.6_26.csv',New_mapR06_Cnet);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\mapR1_0.8_26.csv',New_mapR08_Cnet);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\map2_frac02_26.csv',New_mapfrac02_Cnet);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\map3_frac05_r02_26.csv',New_mapfrac05_r02_Cnet);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\Cnet11_26_cmip6.csv',New_Cnet26_cmip6);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\map4Other_Cnet_cmip6.csv',New_map4_Cnet);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\Rindex_Cnet_cmip6.csv',New_R_Cnet);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet\Fraction_Cnet_cmip6.csv',New_frac_sig_Cnet);


