clear;clc;
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')

% CMIP6
% changes in Rh under the ssp126
%% ssp126
load('Rh_cmip6_126.mat')

% for the estimation of A2
% calculating the multi-model mean value of the historical NPP (OVER 1986-2005)
sp6_RHhist11(:,:,:,1) = rhBCC_3D(:,:,137:156);
sp6_RHhist11(:,:,:,2) = rhCAN_3D(:,:,137:156);
sp6_RHhist11(:,:,:,3) = rhCESM_W3D(:,:,137:156);
sp6_RHhist11(:,:,:,4) = rhUK_3D(:,:,137:156);

sp6_RHhist11(:,:,:,5) = rhIPSL_3D(:,:,137:156);
sp6_RHhist11(:,:,:,6) = rhMIC_3D(:,:,137:156);
sp6_RHhist11(:,:,:,7) = rhMPI_3D(:,:,137:156);
sp6_RHhist11(:,:,:,8) = rhNOR_3D(:,:,137:156);

sp6_RHhist11(:,:,:,9) = rhASS_3D(:,:,137:156);
sp6_RHhist11(:,:,:,10) = rhCNRM_3D(:,:,137:156);
sp6_RHhist11(:,:,:,11) = rhEC_3D(:,:,137:156);

sp6_histRH_avg = nanmean(sp6_RHhist11,4);
sp6_histRH_avg(:,1:30,:) = NaN; 
sp6_histRH_M11 = nanmean(sp6_histRH_avg,3);

mask = nanmean(rhBCC_3D(:,:,137:156),3);
mask(~isnan(mask)) = 1; 

% calculate the multi-model mean value over the 2081-2100
sp6_RHend11(:,:,:,1) = rhBCC_3D(:,:,232:251);
sp6_RHend11(:,:,:,2) = rhCAN_3D(:,:,232:251);
sp6_RHend11(:,:,:,3) = rhCESM_W3D(:,:,232:251);
sp6_RHend11(:,:,:,4) = rhUK_3D(:,:,232:251);

sp6_RHend11(:,:,:,5) = rhIPSL_3D(:,:,232:251);
sp6_RHend11(:,:,:,6) = rhMIC_3D(:,:,232:251);
sp6_RHend11(:,:,:,7) = rhMPI_3D(:,:,232:251);
sp6_RHend11(:,:,:,8) = rhNOR_3D(:,:,232:251);

sp6_RHend11(:,:,:,9) = rhASS_3D(:,:,232:251);
sp6_RHend11(:,:,:,10) = rhCNRM_3D(:,:,232:251);
sp6_RHend11(:,:,:,11) = rhEC_3D(:,:,232:251);

sp6_RHend_avg11= nanmean(sp6_RHend11,4);
sp6_RHend_avg11(:,1:30,:) = NaN; 
sp6_RHend_M11 = nanmean(sp6_RHend_avg11,3);

sp6_RHnet_M11 = sp6_RHend_M11 - sp6_histRH_M11;

% calculating A2
A2_RH(1:360,1:180)= NaN;
n=0;
for i=1:360
    for j=1:180
        
        cell_bg = sp6_histRH_avg(i,j,:);
        cell_ed = sp6_RHend_avg11(i,j,:);
        
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
               A2_RH(i,j) = A2;
               n = n+1; 
            end
        end      
    end
end


% A1
% projected changes in RH for each model
reRH_M11(:,:,:,1) = rhBCC_3D(:,:,232:251) - rhBCC_3D(:,:,137:156);
reRH_M11(:,:,:,2) = rhCAN_3D(:,:,232:251) - rhCAN_3D(:,:,137:156);
reRH_M11(:,:,:,3) = rhCESM_W3D(:,:,232:251) - rhCESM_W3D(:,:,137:156);
reRH_M11(:,:,:,4) = rhUK_3D(:,:,232:251) - rhUK_3D(:,:,137:156);
reRH_M11(:,:,:,5) = rhIPSL_3D(:,:,232:251) - rhIPSL_3D(:,:,137:156);
reRH_M11(:,:,:,6) = rhMIC_3D(:,:,232:251) - rhMIC_3D(:,:,137:156);
reRH_M11(:,:,:,7) = rhMPI_3D(:,:,232:251) - rhMPI_3D(:,:,137:156);
reRH_M11(:,:,:,8) = rhNOR_3D(:,:,232:251) - rhNOR_3D(:,:,137:156);
reRH_M11(:,:,:,9) = rhASS_3D(:,:,232:251) - rhASS_3D(:,:,137:156);
reRH_M11(:,:,:,10) = rhCNRM_3D(:,:,232:251) - rhCNRM_3D(:,:,137:156);
reRH_M11(:,:,:,11) = rhEC_3D(:,:,232:251) - rhEC_3D(:,:,137:156);

BCC_RhNet = rhBCC_3D(:,:,232:251) - rhBCC_3D(:,:,137:156); BCC_RhNet(:,1:30,:) = NaN; 
Can_RhNet = rhCAN_3D(:,:,232:251) - rhCAN_3D(:,:,137:156); Can_RhNet(:,1:30,:) = NaN; 
CESMW_RhNet = rhCESM_W3D(:,:,232:251) - rhCESM_W3D(:,:,137:156); CESMW_RhNet(:,1:30,:) = NaN; 
UK_RhNet = rhUK_3D(:,:,232:251) - rhUK_3D(:,:,137:156); UK_RhNet(:,1:30,:) = NaN; 
IPSL_RhNet = rhIPSL_3D(:,:,232:251) - rhIPSL_3D(:,:,137:156); IPSL_RhNet(:,1:30,:) = NaN; 
MIROC_RhNet = rhMIC_3D(:,:,232:251) - rhMIC_3D(:,:,137:156); MIROC_RhNet(:,1:30,:) = NaN; 
MPI_RhNet = rhMPI_3D(:,:,232:251) - rhMPI_3D(:,:,137:156); MPI_RhNet(:,1:30,:) = NaN; 
NOR_RhNet = rhNOR_3D(:,:,232:251) - rhNOR_3D(:,:,137:156); NOR_RhNet(:,1:30,:) = NaN; 
ASS_RhNet = rhASS_3D(:,:,232:251) - rhASS_3D(:,:,137:156); ASS_RhNet(:,1:30,:) = NaN; 
CNRM_RhNet = rhCNRM_3D(:,:,232:251) - rhCNRM_3D(:,:,137:156); CNRM_RhNet(:,1:30,:) = NaN; 
EC_RhNet = rhEC_3D(:,:,232:251) - rhEC_3D(:,:,137:156); EC_RhNet(:,1:30,:) = NaN; 

reRh6_avg11 = nanmean(reRH_M11,4);reRh6_avg11(:,1:30,:)=NaN;
A1_RH(1:360,1:180) = NaN;
N = 0;

for i=1:360
    for j=1:180

       cell_M = reRh6_avg11(i,j,:); cell_M(isnan(cell_M)) = []; cell_M(cell_M==0) = [];
       
       cell_bcc = BCC_RhNet(i,j,:);
       cell_can = Can_RhNet(i,j,:);
       cell_cesmW = CESMW_RhNet(i,j,:);
       cell_uk = UK_RhNet(i,j,:);
       
       cell_ipsl = IPSL_RhNet(i,j,:);
       cell_miroc = MIROC_RhNet(i,j,:);
       cell_mpi = MPI_RhNet(i,j,:);
       cell_nor = NOR_RhNet(i,j,:);
       
       cell_ass = ASS_RhNet(i,j,:);
       cell_cnrm = CNRM_RhNet(i,j,:);
       cell_ec = EC_RhNet(i,j,:);
       
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
            A1_RH(i,j) = A1;
            N = N+1;
           end
       end
       
    end
end

R_RH(1:360,1:180) = NaN;
for i=1:360
    for j=1:180
        
        if isnan(A1_RH(i,j))==0 && isnan(A2_RH(i,j))==0
            
            R_RH(i,j) = 1-A1_RH(i,j)./A2_RH(i,j);
            
        end
    end
end


%% test whether the changes in GPP is significant or not
% calculate the fractions of models with significant change
clearvars -except sp6_RHhist11 sp6_RHend11 R_RH A1_RH A2_RH sp6_RHnet_M11 mask
frac_sig_RH(1:360,1:180) =NaN;
for i=1:360
    for j=1:180
        p_all(1:11) = NaN;

        M1_ed = sp6_RHend11(i,j,:,1);
        M1_bg = sp6_RHhist11(i,j,:,1); 
        if length(find(~isnan(M1_ed(:)))) >= 10 && length(find(~isnan(M1_bg(:))))>=10
            p_all(1) = ranksum(M1_ed(:),M1_bg(:));
        end
        
        M2_ed = sp6_RHend11(i,j,:,2);
        M2_bg = sp6_RHhist11(i,j,:,2);
        if length(find(~isnan(M2_ed(:)))) >= 10 && length(find(~isnan(M2_bg(:))))>=10
            p_all(2) = ranksum(M2_ed(:),M2_bg(:));
        end
        
        M3_ed = sp6_RHend11(i,j,:,3);
        M3_bg = sp6_RHhist11(i,j,:,3);
        if length(find(~isnan(M3_ed(:)))) >= 10 && length(find(~isnan(M3_bg(:))))>=10
            p_all(3) = ranksum(M3_ed(:), M3_bg(:));
        end
        
        M4_ed = sp6_RHend11(i,j,:,4);
        M4_bg = sp6_RHhist11(i,j,:,4);
        if length(find(~isnan(M4_ed(:)))) >= 10 && length(find(~isnan(M4_bg(:))))>=10
            p_all(4) = ranksum(M4_ed(:),M4_bg(:));
        end
        
        M5_ed = sp6_RHend11(i,j,:,5);
        M5_bg = sp6_RHhist11(i,j,:,5);
        if length(find(~isnan(M5_ed(:)))) >= 10 && length(find(~isnan(M5_bg(:))))>=10
            p_all(5) = ranksum(M5_ed(:),M5_bg(:));
        end
        
        M6_ed = sp6_RHend11(i,j,:,6);
        M6_bg = sp6_RHhist11(i,j,:,6);
        if length(find(~isnan(M6_ed(:)))) >= 10 && length(find(~isnan(M6_bg(:))))>=10
            p_all(6) = ranksum(M6_ed(:),M6_bg(:));
        end
        
        M7_ed = sp6_RHend11(i,j,:,7);
        M7_bg = sp6_RHhist11(i,j,:,7);
        if length(find(~isnan(M7_ed(:)))) >= 10 && length(find(~isnan(M7_bg(:))))>=10
            p_all(7) = ranksum(M7_ed(:),M7_bg(:));
        end
        
        M8_ed = sp6_RHend11(i,j,:,8);
        M8_bg = sp6_RHhist11(i,j,:,8);
        if length(find(~isnan(M8_ed(:)))) >= 10 && length(find(~isnan(M8_bg(:))))>=10
            p_all(8) = ranksum(M8_ed(:),M8_bg(:));
        end 
        
        M9_ed = sp6_RHend11(i,j,:,9);
        M9_bg = sp6_RHhist11(i,j,:,9);
        if length(find(~isnan(M9_ed(:)))) >= 10 && length(find(~isnan(M9_bg(:))))>=10
            p_all(9) = ranksum(M9_ed(:),M9_bg(:));
        end  
        
        M10_ed = sp6_RHend11(i,j,:,10);
        M10_bg = sp6_RHhist11(i,j,:,10);
        if length(find(~isnan(M10_ed(:)))) >= 10 && length(find(~isnan(M10_bg(:))))>=10
            p_all(10) = ranksum(M10_ed(:),M10_bg(:));
        end  
        
        M11_ed = sp6_RHend11(i,j,:,11);
        M11_bg = sp6_RHhist11(i,j,:,11);
        if length(find(~isnan(M11_ed(:)))) >= 10 && length(find(~isnan(M11_bg(:))))>=10
            p_all(11) = ranksum(M11_ed(:),M11_bg(:));
        end  
        
        if length(~isnan(p_all(:)))>=8            
            frac_sig = length(find(p_all<0.05))./length(~isnan(p_all(:)));
            frac_sig_RH(i,j) = frac_sig;
        end
        
    end
end

%%
clearvars -except frac_sig_RH R_RH A1_RH A2_RH sp6_RHnet_M11 mask
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh')
save('RH11_ssp126_CMIP6_uncertRobut.mat')
%load RH11_ssp126_CMIP6_uncertRobut.mat

mapR06_rh26(1:360,1:180) = NaN;  % agree on significant change 0.5
mapR08_rh26(1:360,1:180) = NaN; % agree on significant change 0.8
mapfrac02_rh26(1:360,1:180) = NaN;  % agree on no change
mapfrac05_rh26(1:360,1:180) = NaN;  % inconsistent change
map4_rh26(1:360,1:180) = NaN;  % others

for i=1:360
    for j=1:180
        
        if isnan(R_RH(i,j)) ==0 | isnan(frac_sig_RH(i,j)) ==0
            if R_RH(i,j)>=0.8
               mapR08_rh26(i,j) = 1; 
            end  
            if R_RH(i,j)>=0.6 && frac_sig_RH(i,j)>0.5
               mapR06_rh26(i,j) = 1; 
            
            elseif frac_sig_RH(i,j)<= 0.2 && frac_sig_RH(i,j)>0
                mapfrac02_rh26(i,j) = 2;
            
            elseif R_RH(i,j)<0.2 && frac_sig_RH(i,j)> 0.5
                mapfrac05_rh26(i,j) = 3;
            else
                map4_rh26(i,j) = 4;
            end
        
        end
        
    end
end
mapR06_rh26 = mapR06_rh26.*mask;
mapR08_rh26 = mapR08_rh26.*mask;
mapfrac02_rh26 = mapfrac02_rh26.*mask;
mapfrac05_rh26 = mapfrac05_rh26.*mask;
map4_rh26 = map4_rh26.*mask;
sp6_RHnet_M11 = sp6_RHnet_M11.*mask; 
R_RH = R_RH.*mask;
frac_sig_RH = frac_sig_RH.*mask;

a = length(find(mapR06_rh26==1))
b = length(find(mapfrac02_rh26==2))
c = length(find(mapfrac05_rh26==3))
d = length(find(map4_rh26==4))
e = length(find(mapR08_rh26==1))

% change above map to match with global map
mapR06_rh26 = rot90(mapR06_rh26);
mapR08_rh26 = rot90(mapR08_rh26);
mapfrac02_rh26 = rot90(mapfrac02_rh26);
mapfrac05_rh26 = rot90(mapfrac05_rh26);
map4_rh26 = rot90(map4_rh26);
sp6_reRHnet_M11  = rot90(sp6_RHnet_M11 );
R_RErh = rot90(R_RH);
frac_REsig_RH = rot90(frac_sig_RH);

% left and right
New_mapR06_rh(1:180,1:360) = NaN;
New_mapR08_rh(1:180,1:360) = NaN;
New_mapfrac02_rh(1:180,1:360) = NaN;
New_mapfrac05_rh(1:180,1:360) = NaN;
New_map4_rh(1:180,1:360) = NaN;
New_RHnet_sp26(1:180,1:360) = NaN;
New_R_RH(1:180,1:360) = NaN;
New_frac_sig_RH(1:180,1:360) = NaN;

New_mapR06_rh(:,1:180) = mapR06_rh26(:,181:360);
New_mapR06_rh(:,181:360) = mapR06_rh26(:,1:180);

New_mapR08_rh(:,1:180) = mapR08_rh26(:,181:360);
New_mapR08_rh(:,181:360) = mapR08_rh26(:,1:180);

New_mapfrac02_rh(:,1:180) = mapfrac02_rh26(:,181:360);
New_mapfrac02_rh(:,181:360) = mapfrac02_rh26(:,1:180);

New_mapfrac05_rh(:,1:180) = mapfrac05_rh26(:,181:360);
New_mapfrac05_rh(:,181:360) = mapfrac05_rh26(:,1:180);

New_map4_rh(:,1:180) = map4_rh26(:,181:360);
New_map4_rh(:,181:360) = map4_rh26(:,1:180);

New_RHnet_sp26(:,1:180) = sp6_reRHnet_M11(:,181:360);
New_RHnet_sp26(:,181:360) = sp6_reRHnet_M11(:,1:180);
%New_Cnetc_CMIP6(New_Cnetc_CMIP6<=0) = NaN;

New_R_RH(:,1:180) = R_RErh(:,181:360);
New_R_RH(:,181:360) = R_RErh(:,1:180);

New_frac_sig_RH(:,1:180) = frac_REsig_RH(:,181:360);
New_frac_sig_RH(:,181:360) = frac_REsig_RH(:,1:180);

imshow (New_frac_sig_RH)

csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\map1_0.6_rh.csv',New_mapR06_rh);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\map11_0.8_rh.csv',New_mapR08_rh);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\mapfrac02_rh.csv',New_mapfrac02_rh);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\mapfrac05_rh.csv',New_mapfrac05_rh);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\RHnet_cmip6.csv',New_RHnet_sp26);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\mapOther_RH_cmip6.csv',New_map4_rh);

csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\R_RHnet_cmip6.csv',New_R_RH);
csvwrite('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Rh\Fraction_RHnet_cmip6.csv',New_frac_sig_RH);

