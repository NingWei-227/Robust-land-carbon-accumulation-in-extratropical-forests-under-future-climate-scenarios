clear;clc;
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')

% CMIP6
% changes in NPP under the ssp585
%% ssp585
load('NPP_cmip6_251.mat')

% for the estimation of A2
% calculating the multi-model mean value of the historical NPP (OVER 1986-2005)
sp6_NPPhist11(:,:,:,1) = nppBCC_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,2) = nppCAN_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,3) = nppCESM_W_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,4) = nppUK_3D(:,:,137:156);

sp6_NPPhist11(:,:,:,5) = nppIPSL_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,6) = nppMIC_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,7) = nppMPI_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,8) = nppNOR_3D(:,:,137:156);

sp6_NPPhist11(:,:,:,9) = nppASS_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,10) = nppCNRM_3D(:,:,137:156);
sp6_NPPhist11(:,:,:,11) = nppEC_3D(:,:,137:156);

sp6_histNPP_avg = nanmean(sp6_NPPhist11,4);
sp6_histNPP_avg(:,1:30,:) = NaN; 
sp6_histNPP_M11 = nanmean(sp6_histNPP_avg,3);

mask = nanmean(nppBCC_3D(:,:,137:156),3);
mask(~isnan(mask)) = 1; 

% calculate the multi-model mean value of the GPP over the 2081-2100
sp6_NPPend11(:,:,:,1) = nppBCC_3D(:,:,232:251);
sp6_NPPend11(:,:,:,2) = nppCAN_3D(:,:,232:251);
sp6_NPPend11(:,:,:,3) = nppCESM_W_3D(:,:,232:251);
sp6_NPPend11(:,:,:,4) = nppUK_3D(:,:,232:251);

sp6_NPPend11(:,:,:,5) = nppIPSL_3D(:,:,232:251);
sp6_NPPend11(:,:,:,6) = nppMIC_3D(:,:,232:251);
sp6_NPPend11(:,:,:,7) = nppMPI_3D(:,:,232:251);
sp6_NPPend11(:,:,:,8) = nppNOR_3D(:,:,232:251);

sp6_NPPend11(:,:,:,9) = nppASS_3D(:,:,232:251);
sp6_NPPend11(:,:,:,10) = nppCNRM_3D(:,:,232:251);
sp6_NPPend11(:,:,:,11) = nppEC_3D(:,:,232:251);

sp6_NPPend_avg11= nanmean(sp6_NPPend11,4);
sp6_NPPend_avg11(:,1:30,:) = NaN; 
sp6_NPPend_M11 = nanmean(sp6_NPPend_avg11,3);

sp6_NPPnet_M11 = sp6_NPPend_M11 - sp6_histNPP_M11;

% calculating A2
A2_NPP(1:360,1:180)= NaN;
n=0;
for i=1:360
    for j=1:180
        
        cell_bg = sp6_histNPP_avg(i,j,:);
        cell_ed = sp6_NPPend_avg11(i,j,:);
        
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
               A2_NPP(i,j) = A2;
               n = n+1; 
            end
        end      
    end
end

% A1
% projected changes in GPP for each model
reNPP6_M11(:,:,:,1) = nppBCC_3D(:,:,232:251) - nppBCC_3D(:,:,137:156);
reNPP6_M11(:,:,:,2) = nppCAN_3D(:,:,232:251) - nppCAN_3D(:,:,137:156);
reNPP6_M11(:,:,:,3) = nppCESM_W_3D(:,:,232:251) - nppCESM_W_3D(:,:,137:156);
reNPP6_M11(:,:,:,4) = nppUK_3D(:,:,232:251) - nppUK_3D(:,:,137:156);
reNPP6_M11(:,:,:,5) = nppIPSL_3D(:,:,232:251) - nppIPSL_3D(:,:,137:156);
reNPP6_M11(:,:,:,6) = nppMIC_3D(:,:,232:251) - nppMIC_3D(:,:,137:156);
reNPP6_M11(:,:,:,7) = nppMPI_3D(:,:,232:251) - nppMPI_3D(:,:,137:156);
reNPP6_M11(:,:,:,8) = nppNOR_3D(:,:,232:251) - nppNOR_3D(:,:,137:156);
reNPP6_M11(:,:,:,9) = nppASS_3D(:,:,232:251) - nppASS_3D(:,:,137:156);
reNPP6_M11(:,:,:,10) = nppCNRM_3D(:,:,232:251) - nppCNRM_3D(:,:,137:156);
reNPP6_M11(:,:,:,11) = nppEC_3D(:,:,232:251) - nppEC_3D(:,:,137:156);

BCC_nppNet = nppBCC_3D(:,:,232:251) - nppBCC_3D(:,:,137:156); BCC_nppNet(:,1:30,:) = NaN; 
Can_nppNet = nppCAN_3D(:,:,232:251) - nppCAN_3D(:,:,137:156); Can_nppNet(:,1:30,:) = NaN; 
CESMW_nppNet = nppCESM_W_3D(:,:,232:251) - nppCESM_W_3D(:,:,137:156); CESMW_nppNet(:,1:30,:) = NaN; 
UK_nppNet = nppUK_3D(:,:,232:251) - nppUK_3D(:,:,137:156); UK_nppNet(:,1:30,:) = NaN; 
IPSL_nppNet = nppIPSL_3D(:,:,232:251) - nppIPSL_3D(:,:,137:156); IPSL_nppNet(:,1:30,:) = NaN; 
MIROC_nppNet = nppMIC_3D(:,:,232:251) - nppMIC_3D(:,:,137:156); MIROC_nppNet(:,1:30,:) = NaN; 
MPI_nppNet = nppMPI_3D(:,:,232:251) - nppMPI_3D(:,:,137:156); MPI_nppNet(:,1:30,:) = NaN; 
NOR_nppNet = nppNOR_3D(:,:,232:251) - nppNOR_3D(:,:,137:156); NOR_nppNet(:,1:30,:) = NaN; 
ASS_nppNet = nppASS_3D(:,:,232:251) - nppASS_3D(:,:,137:156); ASS_nppNet(:,1:30,:) = NaN; 
CNRM_nppNet = nppCNRM_3D(:,:,232:251) - nppCNRM_3D(:,:,137:156); CNRM_nppNet(:,1:30,:) = NaN; 
EC_nppNet = nppEC_3D(:,:,232:251) - nppEC_3D(:,:,137:156); EC_nppNet(:,1:30,:) = NaN; 

reNPP6_avg11 = nanmean(reNPP6_M11,4);reNPP6_avg11(:,1:30,:)=NaN;
A1_NPP(1:360,1:180) = NaN;
N = 0;

for i=1:360
    for j=1:180

       cell_M = reNPP6_avg11(i,j,:); cell_M(isnan(cell_M)) = []; cell_M(cell_M==0) = [];
       
       cell_bcc = BCC_nppNet(i,j,:);
       cell_can = Can_nppNet(i,j,:);
       cell_cesmW = CESMW_nppNet(i,j,:);
       cell_uk = UK_nppNet(i,j,:);
       
       cell_ipsl = IPSL_nppNet(i,j,:);
       cell_miroc = MIROC_nppNet(i,j,:);
       cell_mpi = MPI_nppNet(i,j,:);
       cell_nor = NOR_nppNet(i,j,:);
       
       cell_ass = ASS_nppNet(i,j,:);
       cell_cnrm = CNRM_nppNet(i,j,:);
       cell_ec = EC_nppNet(i,j,:);
       
       Models6_all = [cell_bcc(:) cell_can(:) cell_cesmW(:) cell_uk(:) ...
                      cell_ipsl(:) cell_miroc(:) cell_mpi(:) cell_nor(:) ...
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
            A1_NPP(i,j) = A1;
            N = N+1;
           end
       end
       
    end
end

R_npp(1:360,1:180) = NaN;
for i=1:360
    for j=1:180
        
        if isnan(A1_NPP(i,j))==0 && isnan(A2_NPP(i,j))==0
            
            R_npp(i,j) = 1-A1_NPP(i,j)./A2_NPP(i,j);
            
        end
    end
end

%% test whether the changes in GPP is significant or not
% calculate the fractions of models with significant change
clearvars -except sp6_NPPhist11 sp6_NPPend11 R_npp A1_NPP A2_NPP sp6_NPPnet_M11 mask
frac_sig_NPP(1:360,1:180) =NaN;
for i=1:360
    for j=1:180
        p_all(1:11) = NaN;

        M1_ed = sp6_NPPend11(i,j,:,1);
        M1_bg = sp6_NPPhist11(i,j,:,1); 
        if length(find(~isnan(M1_ed(:)))) >= 10 && length(find(~isnan(M1_bg(:))))>=10
            p_all(1) = ranksum(M1_ed(:),M1_bg(:));
        end
        
        M2_ed = sp6_NPPend11(i,j,:,2);
        M2_bg = sp6_NPPhist11(i,j,:,2);
        if length(find(~isnan(M2_ed(:)))) >= 10 && length(find(~isnan(M2_bg(:))))>=10
            p_all(2) = ranksum(M2_ed(:),M2_bg(:));
        end
        
        M3_ed = sp6_NPPend11(i,j,:,3);
        M3_bg = sp6_NPPhist11(i,j,:,3);
        if length(find(~isnan(M3_ed(:)))) >= 10 && length(find(~isnan(M3_bg(:))))>=10
            p_all(3) = ranksum(M3_ed(:), M3_bg(:));
        end
        
        M4_ed = sp6_NPPend11(i,j,:,4);
        M4_bg = sp6_NPPhist11(i,j,:,4);
        if length(find(~isnan(M4_ed(:)))) >= 10 && length(find(~isnan(M4_bg(:))))>=10
            p_all(4) = ranksum(M4_ed(:),M4_bg(:));
        end
        
        M5_ed = sp6_NPPend11(i,j,:,5);
        M5_bg = sp6_NPPhist11(i,j,:,5);
        if length(find(~isnan(M5_ed(:)))) >= 10 && length(find(~isnan(M5_bg(:))))>=10
            p_all(5) = ranksum(M5_ed(:),M5_bg(:));
        end
        
        M6_ed = sp6_NPPend11(i,j,:,6);
        M6_bg = sp6_NPPhist11(i,j,:,6);
        if length(find(~isnan(M6_ed(:)))) >= 10 && length(find(~isnan(M6_bg(:))))>=10
            p_all(6) = ranksum(M6_ed(:),M6_bg(:));
        end
        
        M7_ed = sp6_NPPend11(i,j,:,7);
        M7_bg = sp6_NPPhist11(i,j,:,7);
        if length(find(~isnan(M7_ed(:)))) >= 10 && length(find(~isnan(M7_bg(:))))>=10
            p_all(7) = ranksum(M7_ed(:),M7_bg(:));
        end
        
        M8_ed = sp6_NPPend11(i,j,:,8);
        M8_bg = sp6_NPPhist11(i,j,:,8);
        if length(find(~isnan(M8_ed(:)))) >= 10 && length(find(~isnan(M8_bg(:))))>=10
            p_all(8) = ranksum(M8_ed(:),M8_bg(:));
        end 
        
        M9_ed = sp6_NPPend11(i,j,:,9);
        M9_bg = sp6_NPPhist11(i,j,:,9);
        if length(find(~isnan(M9_ed(:)))) >= 10 && length(find(~isnan(M9_bg(:))))>=10
            p_all(9) = ranksum(M9_ed(:),M9_bg(:));
        end  
        
        M10_ed = sp6_NPPend11(i,j,:,10);
        M10_bg = sp6_NPPhist11(i,j,:,10);
        if length(find(~isnan(M10_ed(:)))) >= 10 && length(find(~isnan(M10_bg(:))))>=10
            p_all(10) = ranksum(M10_ed(:),M10_bg(:));
        end  
        
        M11_ed = sp6_NPPend11(i,j,:,11);
        M11_bg = sp6_NPPhist11(i,j,:,11);
        if length(find(~isnan(M11_ed(:)))) >= 10 && length(find(~isnan(M11_bg(:))))>=10
            p_all(11) = ranksum(M11_ed(:),M11_bg(:));
        end  
        
        if length(~isnan(p_all(:)))>=8            
            frac_sig = length(find(p_all<0.05))./length(~isnan(p_all(:)));
            frac_sig_NPP(i,j) = frac_sig;
        end
        
    end
end

%%
clearvars -except frac_sig_NPP R_npp A1_NPP A2_NPP sp6_NPPnet_M11 mask
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP')
%save('NPP11_ssp585_CMIP6_uncertRobut.mat')
%load NPP11_ssp585_CMIP6_uncertRobut.mat

mapR06_npp85(1:360,1:180) = NaN;  % agree on significant change 0.5
mapR08_npp85(1:360,1:180) = NaN; % agree on significant change 0.8
mapfrac02_npp85(1:360,1:180) = NaN;  % agree on no change
mapfrac05_npp85(1:360,1:180) = NaN;  % inconsistent change
map4_npp85(1:360,1:180) = NaN;  % others

for i=1:360
    for j=1:180
        
        if isnan(R_npp(i,j)) ==0 | isnan(frac_sig_NPP(i,j)) ==0
            if R_npp(i,j)>=0.8
               mapR08_npp85(i,j) = 1; 
            end  
            if R_npp(i,j)>=0.6 && frac_sig_NPP(i,j)> 0.5
               mapR06_npp85(i,j) = 1; 
            
            elseif frac_sig_NPP(i,j)<= 0.2 && frac_sig_NPP(i,j)>0
                mapfrac02_npp85(i,j) = 2;
            
            elseif R_npp(i,j)<0.2 && frac_sig_NPP(i,j)> 0.5
                mapfrac05_npp85(i,j) = 3;
            else
                map4_npp85(i,j) = 4;
            end
        
        end
        
    end
end
mapR06_npp85 = mapR06_npp85.*mask;
mapR08_npp85 = mapR08_npp85.*mask;
mapfrac02_npp85 = mapfrac02_npp85.*mask;
mapfrac05_npp85 = mapfrac05_npp85.*mask;
map4_npp85 = map4_npp85.*mask;
sp6_NPPnet_M11 = sp6_NPPnet_M11.*mask; 
R_npp = R_npp.*mask;
frac_sig_NPP = frac_sig_NPP.*mask;

a = length(find(mapR06_npp85==1))
b = length(find(mapfrac02_npp85==2))
c = length(find(mapfrac05_npp85==3))
d = length(find(map4_npp85==4))
e = length(find(mapR08_npp85==1))

% change above map to match with global map
mapR06_npp85 = rot90(mapR06_npp85);
mapR08_npp85 = rot90(mapR08_npp85);
mapfrac02_npp85 = rot90(mapfrac02_npp85);
mapfrac05_npp85 = rot90(mapfrac05_npp85);
map4_npp85 = rot90(map4_npp85);
sp6_reNPPnet_M11  = rot90(sp6_NPPnet_M11 );
R_REnpp = rot90(R_npp);
frac_REsig_NPP = rot90(frac_sig_NPP);

% left and right
New_mapR06_npp(1:180,1:360) = NaN;
New_mapR08_npp(1:180,1:360) = NaN;
New_mapfrac02_npp(1:180,1:360) = NaN;
New_mapfrac05_npp(1:180,1:360) = NaN;
New_map4_npp(1:180,1:360) = NaN;
New_NPPnet_sp85(1:180,1:360) = NaN;
New_R_npp(1:180,1:360) = NaN;
New_frac_sig_NPP(1:180,1:360) = NaN;

New_mapR06_npp(:,1:180) = mapR06_npp85(:,181:360);
New_mapR06_npp(:,181:360) = mapR06_npp85(:,1:180);

New_mapR08_npp(:,1:180) = mapR08_npp85(:,181:360);
New_mapR08_npp(:,181:360) = mapR08_npp85(:,1:180);

New_mapfrac02_npp(:,1:180) = mapfrac02_npp85(:,181:360);
New_mapfrac02_npp(:,181:360) = mapfrac02_npp85(:,1:180);

New_mapfrac05_npp(:,1:180) = mapfrac05_npp85(:,181:360);
New_mapfrac05_npp(:,181:360) = mapfrac05_npp85(:,1:180);

New_map4_npp(:,1:180) = map4_npp85(:,181:360);
New_map4_npp(:,181:360) = map4_npp85(:,1:180);

New_NPPnet_sp85(:,1:180) = sp6_reNPPnet_M11(:,181:360);
New_NPPnet_sp85(:,181:360) = sp6_reNPPnet_M11(:,1:180);
%New_Cnetc_CMIP6(New_Cnetc_CMIP6<=0) = NaN;

New_R_npp(:,1:180) = R_REnpp(:,181:360);
New_R_npp(:,181:360) = R_REnpp(:,1:180);

New_frac_sig_NPP(:,1:180) = frac_REsig_NPP(:,181:360);
New_frac_sig_NPP(:,181:360) = frac_REsig_NPP(:,1:180);

figure
imshow(New_mapR06_npp)
figure 
imshow(New_frac_sig_NPP)

csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\map1_0.6_npp.csv',New_mapR06_npp);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\map11_0.8_npp.csv',New_mapR08_npp);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\mapfrac02_npp.csv',New_mapfrac02_npp);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\mapfrac08_npp.csv',New_mapfrac05_npp);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\NPPnet_cmip6.csv',New_NPPnet_sp85);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\mapOther_NPP_85.csv',New_map4_npp);

csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\R_NPPnet85_cmip6.csv',New_R_npp);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\NPP\Fraction_NPPnet85_cmip6.csv',New_frac_sig_NPP);


