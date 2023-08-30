clear;clc
%% Figure4: identify the dominant component controling the uncertainty of land carbon change
% load CMIP6 model predictions of land carbon storage change at the end of 21th century
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('cLand_cmip6_126.mat')
sp26_Chist11(:,:,:,1) = cLand_BCC(:,:,137:156);
sp26_Chist11(:,:,:,2) = cLand_CAN(:,:,137:156);
sp26_Chist11(:,:,:,3) = cLand_CESM_W(:,:,137:156);
sp26_Chist11(:,:,:,4) = cLand_UK(:,:,137:156);
sp26_Chist11(:,:,:,5) = cLand_IPSL(:,:,137:156);
sp26_Chist11(:,:,:,6) = cLand_MIC(:,:,137:156);
sp26_Chist11(:,:,:,7) = cLand_MPI(:,:,137:156);
sp26_Chist11(:,:,:,8) = cLand_NOR(:,:,137:156);
sp26_Chist11(:,:,:,9) = cLand_ASS(:,:,137:156);
sp26_Chist11(:,:,:,10) = cLand_CNRM(:,:,137:156);
sp26_Chist11(:,:,:,11) = cLand_EC(:,:,137:156);
sp26_C0_M11 = nanmean(sp26_Chist11,3);
sp26_C0_M11 = squeeze(sp26_C0_M11);
sp26_C0_M11(:,1:30,:) = NaN; 

% reNPP calculated as the difference between 2081-2100 and 1987-2005
sp26_Cend11(:,:,:,1) = cLand_BCC(:,:,232:251);
sp26_Cend11(:,:,:,2) = cLand_CAN(:,:,232:251);
sp26_Cend11(:,:,:,3) = cLand_CESM_W(:,:,232:251);
sp26_Cend11(:,:,:,4) = cLand_UK(:,:,232:251);
sp26_Cend11(:,:,:,5) = cLand_IPSL(:,:,232:251);
sp26_Cend11(:,:,:,6) = cLand_MIC(:,:,232:251);
sp26_Cend11(:,:,:,7) = cLand_MPI(:,:,232:251);
sp26_Cend11(:,:,:,8) = cLand_NOR(:,:,232:251);
sp26_Cend11(:,:,:,9) = cLand_ASS(:,:,232:251);
sp26_Cend11(:,:,:,10) = cLand_CNRM(:,:,232:251);
sp26_Cend11(:,:,:,11) = cLand_EC(:,:,232:251);

sp26_Cend_M11= nanmean(sp26_Cend11,3);
sp26_Cend_M11 = squeeze(sp26_Cend_M11);
sp26_Cend_M11(:,1:30,:) = NaN; 

sp6_Cnet26_pre11 = sp26_Cend_M11 - sp26_C0_M11;

clearvars -except sp6_Cnet26_pre11 sp26_Cend_M11 sp26_C0_M11
              
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('cLand_cmip6_245.mat')
% NPP over the 1987-2005
sp45_Chist11(:,:,:,1) = cLand_BCC(:,:,137:156);
sp45_Chist11(:,:,:,2) = cLand_CAN(:,:,137:156);
sp45_Chist11(:,:,:,3) = cLand_CESM_W(:,:,137:156);
sp45_Chist11(:,:,:,4) = cLand_UK(:,:,137:156);
sp45_Chist11(:,:,:,5) = cLand_IPSL(:,:,137:156);
sp45_Chist11(:,:,:,6) = cLand_MIC(:,:,137:156);
sp45_Chist11(:,:,:,7) = cLand_MPI(:,:,137:156);
sp45_Chist11(:,:,:,8) = cLand_NOR(:,:,137:156);
sp45_Chist11(:,:,:,9) = cLand_ASS(:,:,137:156);
sp45_Chist11(:,:,:,10) = cLand_CNRM(:,:,137:156);
sp45_Chist11(:,:,:,11) = cLand_EC(:,:,137:156);
sp45_C0_M11 = nanmean(sp45_Chist11,3);
sp45_C0_M11 = squeeze(sp45_C0_M11);
sp45_C0_M11(:,1:30,:) = NaN; 

 % NPP over the 2081-2100
sp45_Cend11(:,:,:,1) = cLand_BCC(:,:,232:251);
sp45_Cend11(:,:,:,2) = cLand_CAN(:,:,232:251);
sp45_Cend11(:,:,:,3) = cLand_CESM_W(:,:,232:251);
sp45_Cend11(:,:,:,4) = cLand_UK(:,:,232:251);
sp45_Cend11(:,:,:,5) = cLand_IPSL(:,:,232:251);
sp45_Cend11(:,:,:,6) = cLand_MIC(:,:,232:251);
sp45_Cend11(:,:,:,7) = cLand_MPI(:,:,232:251);
sp45_Cend11(:,:,:,8) = cLand_NOR(:,:,232:251);
sp45_Cend11(:,:,:,9) = cLand_ASS(:,:,232:251);
sp45_Cend11(:,:,:,10) = cLand_CNRM(:,:,232:251);
sp45_Cend11(:,:,:,11) = cLand_EC(:,:,232:251);

sp45_Cend_M11= nanmean(sp45_Cend11,3);
sp45_Cend_M11 = squeeze(sp45_Cend_M11);
sp45_Cend_M11(:,1:30,:) = NaN; 

sp6_Cnet45_pre11 = sp45_Cend_M11 - sp45_C0_M11;   
clearvars -except sp6_Cnet26_pre11 sp26_Cend_M11 sp26_C0_M11 ...
                  sp6_Cnet45_pre11 sp45_Cend_M11 sp45_C0_M11

% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('cLand_cmip6_251.mat')
sp85_Chist11(:,:,:,1) = cLand_BCC(:,:,137:156);
sp85_Chist11(:,:,:,2) = cLand_CAN(:,:,137:156);
sp85_Chist11(:,:,:,3) = cLand_CESM_W(:,:,137:156);
sp85_Chist11(:,:,:,4) = cLand_UK(:,:,137:156);
sp85_Chist11(:,:,:,5) = cLand_IPSL(:,:,137:156);
sp85_Chist11(:,:,:,6) = cLand_MIC(:,:,137:156);
sp85_Chist11(:,:,:,7) = cLand_MPI(:,:,137:156);
sp85_Chist11(:,:,:,8) = cLand_NOR(:,:,137:156);
sp85_Chist11(:,:,:,9) = cLand_ASS(:,:,137:156);
sp85_Chist11(:,:,:,10) = cLand_CNRM(:,:,137:156);
sp85_Chist11(:,:,:,11) = cLand_EC(:,:,137:156);
sp85_C0_M11 = nanmean(sp85_Chist11,3);
sp85_C0_M11 = squeeze(sp85_C0_M11);
sp85_C0_M11(:,1:30,:) = NaN; 

% calculate the multi-model mean value of the NPP over the 2081-2100
sp85_Cend11(:,:,:,1) = cLand_BCC(:,:,232:251);
sp85_Cend11(:,:,:,2) = cLand_CAN(:,:,232:251);
sp85_Cend11(:,:,:,3) = cLand_CESM_W(:,:,232:251);
sp85_Cend11(:,:,:,4) = cLand_UK(:,:,232:251);
sp85_Cend11(:,:,:,5) = cLand_IPSL(:,:,232:251);
sp85_Cend11(:,:,:,6) = cLand_MIC(:,:,232:251);
sp85_Cend11(:,:,:,7) = cLand_MPI(:,:,232:251);
sp85_Cend11(:,:,:,8) = cLand_NOR(:,:,232:251);
sp85_Cend11(:,:,:,9) = cLand_ASS(:,:,232:251);
sp85_Cend11(:,:,:,10) = cLand_CNRM(:,:,232:251);
sp85_Cend11(:,:,:,11) = cLand_EC(:,:,232:251);

sp85_Cend_M11= nanmean(sp85_Cend11,3);
sp85_Cend_M11= squeeze(sp85_Cend_M11);
sp85_Cend_M11(:,1:30,:) = NaN; 

sp6_Cnet85_pre11 = sp85_Cend_M11 - sp85_C0_M11;
clearvars -except sp6_Cnet26_pre11 sp26_Cend_M11 sp26_C0_M11 ...
                  sp6_Cnet45_pre11 sp45_Cend_M11 sp45_C0_M11 ...
                  sp6_Cnet85_pre11 sp85_Cend_M11 sp85_C0_M11
              
% convert model predictions to match with the global map
% NPP0 and reNPP
for i=1:11
    
        rot90map26_C0 = rot90(sp26_C0_M11(:,:,i));
        New26_C0_lefrgt(1:180,1:360) = NaN;
        New26_C0_lefrgt(:,1:180) = rot90map26_C0(:,181:360);
        New26_C0_lefrgt(:,181:360) = rot90map26_C0(:,1:180);
        
        rot90map45_C0 = rot90(sp45_C0_M11(:,:,i));
        New45_C0_lefrgt(1:180,1:360) = NaN;
        New45_C0_lefrgt(:,1:180) = rot90map45_C0(:,181:360);
        New45_C0_lefrgt(:,181:360) = rot90map45_C0(:,1:180);
        
        rot90map85_C0 = rot90(sp85_C0_M11(:,:,i));
        New85_C0_lefrgt(1:180,1:360) = NaN;
        New85_C0_lefrgt(:,1:180) = rot90map85_C0(:,181:360);
        New85_C0_lefrgt(:,181:360) = rot90map85_C0(:,1:180);
        
        rot90map26_Cend = rot90(sp26_Cend_M11(:,:,i));
        New26_Cend_lefrgt(1:180,1:360) = NaN;
        New26_Cend_lefrgt(:,1:180) = rot90map26_Cend(:,181:360);
        New26_Cend_lefrgt(:,181:360) = rot90map26_Cend(:,1:180);
        
        rot90map45_Cend = rot90(sp45_Cend_M11(:,:,i));
        New45_Cend_lefrgt(1:180,1:360) = NaN;
        New45_Cend_lefrgt(:,1:180) = rot90map45_Cend(:,181:360);
        New45_Cend_lefrgt(:,181:360) = rot90map45_Cend(:,1:180);
        
        rot90map85_Cend = rot90(sp85_Cend_M11(:,:,i));
        New85_Cend_lefrgt(1:180,1:360) = NaN;
        New85_Cend_lefrgt(:,1:180) = rot90map85_Cend(:,181:360);
        New85_Cend_lefrgt(:,181:360) = rot90map85_Cend(:,1:180);
        
        
        rot90map26_reC = rot90(sp6_Cnet26_pre11(:,:,i));
        New26_reC_lefrgt(1:180,1:360) = NaN;
        New26_reC_lefrgt(:,1:180) = rot90map26_reC(:,181:360);
        New26_reC_lefrgt(:,181:360) = rot90map26_reC(:,1:180);
        
        rot90map45_reC = rot90(sp6_Cnet45_pre11(:,:,i));
        New45_reC_lefrgt(1:180,1:360) = NaN;
        New45_reC_lefrgt(:,1:180) = rot90map45_reC(:,181:360);
        New45_reC_lefrgt(:,181:360) = rot90map45_reC(:,1:180);
        
        rot90map85_reC = rot90(sp6_Cnet85_pre11(:,:,i));
        New85_reC_lefrgt(1:180,1:360) = NaN;
        New85_reC_lefrgt(:,1:180) = rot90map85_reC(:,181:360);
        New85_reC_lefrgt(:,181:360) = rot90map85_reC(:,1:180);
        
        
        C026_maps11(:,:,i) = New26_C0_lefrgt;
        C045_maps11(:,:,i) = New45_C0_lefrgt;
        C085_maps11(:,:,i) = New85_C0_lefrgt;
        
        Cend26_maps11(:,:,i) = New26_Cend_lefrgt;
        Cend45_maps11(:,:,i) = New45_Cend_lefrgt;
        Cend85_maps11(:,:,i) = New85_Cend_lefrgt;
        
        
        Cnet26_maps11(:,:,i) = New26_reC_lefrgt;
        Cnet45_maps11(:,:,i) = New45_reC_lefrgt;
        Cnet85_maps11(:,:,i) = New85_reC_lefrgt;
        
        
              
end  
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11

%% load CMIP6 model predictions of NPP change (reNPP) and NPP0 (the 1986-2005 mean) at the end of 21th century
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('NPP_cmip6_126.mat')
sp26_NPPhist11(:,:,:,1) = nppBCC_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,2) = nppCAN_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,3) = nppCESM_W_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,4) = nppUK_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,5) = nppIPSL_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,6) = nppMIC_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,7) = nppMPI_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,8) = nppNOR_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,9) = nppASS_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,10) = nppCNRM_3D(:,:,137:156);
sp26_NPPhist11(:,:,:,11) = nppEC_3D(:,:,137:156);
sp26_NPP0_M11 = nanmean(sp26_NPPhist11,3);
sp26_NPP0_M11 = squeeze(sp26_NPP0_M11);
sp26_NPP0_M11(:,1:30,:) = NaN; 

% reNPP calculated as the difference between 2081-2100 and 1987-2005
sp26_NPPend11(:,:,:,1) = nppBCC_3D(:,:,232:251);
sp26_NPPend11(:,:,:,2) = nppCAN_3D(:,:,232:251);
sp26_NPPend11(:,:,:,3) = nppCESM_W_3D(:,:,232:251);
sp26_NPPend11(:,:,:,4) = nppUK_3D(:,:,232:251);
sp26_NPPend11(:,:,:,5) = nppIPSL_3D(:,:,232:251);
sp26_NPPend11(:,:,:,6) = nppMIC_3D(:,:,232:251);
sp26_NPPend11(:,:,:,7) = nppMPI_3D(:,:,232:251);
sp26_NPPend11(:,:,:,8) = nppNOR_3D(:,:,232:251);
sp26_NPPend11(:,:,:,9) = nppASS_3D(:,:,232:251);
sp26_NPPend11(:,:,:,10) = nppCNRM_3D(:,:,232:251);
sp26_NPPend11(:,:,:,11) = nppEC_3D(:,:,232:251);

sp26_NPPend_M11= nanmean(sp26_NPPend11,3);
sp26_NPPend_M11 = squeeze(sp26_NPPend_M11);
sp26_NPPend_M11(:,1:30,:) = NaN; 

sp26_reNPP_M11 = sp26_NPPend_M11 - sp26_NPP0_M11;

clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  sp26_NPPend_M11 sp26_NPP0_M11 sp26_reNPP_M11 
              
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('NPP_cmip6_245.mat')
% NPP over the 1987-2005
sp45_NPPhist11(:,:,:,1) = nppBCC_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,2) = nppCAN_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,3) = nppCESM_W_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,4) = nppUK_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,5) = nppIPSL_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,6) = nppMIC_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,7) = nppMPI_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,8) = nppNOR_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,9) = nppASS_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,10) = nppCNRM_3D(:,:,137:156);
sp45_NPPhist11(:,:,:,11) = nppEC_3D(:,:,137:156);
sp45_NPP0_M11 = nanmean(sp45_NPPhist11,3);
sp45_NPP0_M11 = squeeze(sp45_NPP0_M11);
sp45_NPP0_M11(:,1:30,:) = NaN; 

 % NPP over the 2081-2100
sp45_NPPend11(:,:,:,1) = nppBCC_3D(:,:,232:251);
sp45_NPPend11(:,:,:,2) = nppCAN_3D(:,:,232:251);
sp45_NPPend11(:,:,:,3) = nppCESM_W_3D(:,:,232:251);
sp45_NPPend11(:,:,:,4) = nppUK_3D(:,:,232:251);
sp45_NPPend11(:,:,:,5) = nppIPSL_3D(:,:,232:251);
sp45_NPPend11(:,:,:,6) = nppMIC_3D(:,:,232:251);
sp45_NPPend11(:,:,:,7) = nppMPI_3D(:,:,232:251);
sp45_NPPend11(:,:,:,8) = nppNOR_3D(:,:,232:251);
sp45_NPPend11(:,:,:,9) = nppASS_3D(:,:,232:251);
sp45_NPPend11(:,:,:,10) = nppCNRM_3D(:,:,232:251);
sp45_NPPend11(:,:,:,11) = nppEC_3D(:,:,232:251);

sp45_NPPend_M11= nanmean(sp45_NPPend11,3);
sp45_NPPend_M11 = squeeze(sp45_NPPend_M11);
sp45_NPPend_M11(:,1:30,:) = NaN; 

sp45_reNPP_M11 = sp45_NPPend_M11 - sp45_NPP0_M11;   
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  sp26_NPPend_M11 sp26_NPP0_M11 sp26_reNPP_M11 ...
                  sp45_NPPend_M11 sp45_NPP0_M11 sp45_reNPP_M11

% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('NPP_cmip6_251.mat')
sp85_NPPhist11(:,:,:,1) = nppBCC_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,2) = nppCAN_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,3) = nppCESM_W_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,4) = nppUK_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,5) = nppIPSL_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,6) = nppMIC_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,7) = nppMPI_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,8) = nppNOR_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,9) = nppASS_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,10) = nppCNRM_3D(:,:,137:156);
sp85_NPPhist11(:,:,:,11) = nppEC_3D(:,:,137:156);
sp85_NPP0_M11 = nanmean(sp85_NPPhist11,3);
sp85_NPP0_M11 = squeeze(sp85_NPP0_M11);
sp85_NPP0_M11(:,1:30,:) = NaN; 

% calculate the multi-model mean value of the NPP over the 2081-2100
sp85_NPPend11(:,:,:,1) = nppBCC_3D(:,:,232:251);
sp85_NPPend11(:,:,:,2) = nppCAN_3D(:,:,232:251);
sp85_NPPend11(:,:,:,3) = nppCESM_W_3D(:,:,232:251);
sp85_NPPend11(:,:,:,4) = nppUK_3D(:,:,232:251);
sp85_NPPend11(:,:,:,5) = nppIPSL_3D(:,:,232:251);
sp85_NPPend11(:,:,:,6) = nppMIC_3D(:,:,232:251);
sp85_NPPend11(:,:,:,7) = nppMPI_3D(:,:,232:251);
sp85_NPPend11(:,:,:,8) = nppNOR_3D(:,:,232:251);
sp85_NPPend11(:,:,:,9) = nppASS_3D(:,:,232:251);
sp85_NPPend11(:,:,:,10) = nppCNRM_3D(:,:,232:251);
sp85_NPPend11(:,:,:,11) = nppEC_3D(:,:,232:251);

sp85_NPPend_M11= nanmean(sp85_NPPend11,3);
sp85_NPPend_M11= squeeze(sp85_NPPend_M11);
sp85_NPPend_M11(:,1:30,:) = NaN; 

sp85_reNPP_M11 = sp85_NPPend_M11 - sp85_NPP0_M11;
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  sp26_NPPend_M11 sp26_NPP0_M11 sp26_reNPP_M11 ...
                  sp45_NPPend_M11 sp45_NPP0_M11 sp45_reNPP_M11 ...
                  sp85_NPPend_M11 sp85_NPP0_M11 sp85_reNPP_M11
              
% convert model predictions to match with the global map
% NPP0 and reNPP
for i=1:11
    
        rot90map26_npp0 = rot90(sp26_NPP0_M11(:,:,i));
        New26_npp0_lefrgt(1:180,1:360) = NaN;
        New26_npp0_lefrgt(:,1:180) = rot90map26_npp0(:,181:360);
        New26_npp0_lefrgt(:,181:360) = rot90map26_npp0(:,1:180);
        
        rot90map45_npp0 = rot90(sp45_NPP0_M11(:,:,i));
        New45_npp0_lefrgt(1:180,1:360) = NaN;
        New45_npp0_lefrgt(:,1:180) = rot90map45_npp0(:,181:360);
        New45_npp0_lefrgt(:,181:360) = rot90map45_npp0(:,1:180);
        
        rot90map85_npp0 = rot90(sp85_NPP0_M11(:,:,i));
        New85_npp0_lefrgt(1:180,1:360) = NaN;
        New85_npp0_lefrgt(:,1:180) = rot90map85_npp0(:,181:360);
        New85_npp0_lefrgt(:,181:360) = rot90map85_npp0(:,1:180);
        
        rot90map26_nppED = rot90(sp26_NPPend_M11(:,:,i));
        New26_nppED_lefrgt(1:180,1:360) = NaN;
        New26_nppED_lefrgt(:,1:180) = rot90map26_nppED(:,181:360);
        New26_nppED_lefrgt(:,181:360) = rot90map26_nppED(:,1:180);
        
        rot90map45_nppED = rot90(sp45_NPPend_M11(:,:,i));
        New45_nppED_lefrgt(1:180,1:360) = NaN;
        New45_nppED_lefrgt(:,1:180) = rot90map45_nppED(:,181:360);
        New45_nppED_lefrgt(:,181:360) = rot90map45_nppED(:,1:180);
        
        rot90map85_nppED = rot90(sp85_NPPend_M11(:,:,i));
        New85_nppED_lefrgt(1:180,1:360) = NaN;
        New85_nppED_lefrgt(:,1:180) = rot90map85_nppED(:,181:360);
        New85_nppED_lefrgt(:,181:360) = rot90map85_nppED(:,1:180);
        
        rot90map26_reNPP = rot90(sp26_reNPP_M11(:,:,i));
        New26_reNPP_lefrgt(1:180,1:360) = NaN;
        New26_reNPP_lefrgt(:,1:180) = rot90map26_reNPP(:,181:360);
        New26_reNPP_lefrgt(:,181:360) = rot90map26_reNPP(:,1:180);
        
        rot90map45_reNPP = rot90(sp45_reNPP_M11(:,:,i));
        New45_reNPP_lefrgt(1:180,1:360) = NaN;
        New45_reNPP_lefrgt(:,1:180) = rot90map45_reNPP(:,181:360);
        New45_reNPP_lefrgt(:,181:360) = rot90map45_reNPP(:,1:180);
        
        rot90map85_reNPP = rot90(sp85_reNPP_M11(:,:,i));
        New85_reNPP_lefrgt(1:180,1:360) = NaN;
        New85_reNPP_lefrgt(:,1:180) = rot90map85_reNPP(:,181:360);
        New85_reNPP_lefrgt(:,181:360) = rot90map85_reNPP(:,1:180);
        
        
        NPP026_maps11(:,:,i) = New26_npp0_lefrgt;
        NPP045_maps11(:,:,i) = New45_npp0_lefrgt;
        NPP085_maps11(:,:,i) = New85_npp0_lefrgt;
        
        NPPed26_maps11(:,:,i) = New26_nppED_lefrgt;
        NPPed45_maps11(:,:,i) = New45_nppED_lefrgt;
        NPPed85_maps11(:,:,i) = New85_nppED_lefrgt;
        
        reNPP26_maps11(:,:,i) = New26_reNPP_lefrgt;
        reNPP45_maps11(:,:,i) = New45_reNPP_lefrgt;
        reNPP85_maps11(:,:,i) = New85_reNPP_lefrgt;
        
        
              
end   
imshow(New26_npp0_lefrgt)
              
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11
                           
%% load CMIP6 model predictions of tuaE change (reTuaE) and TuaE0 (the 1986-2005 mean) at the end of 21th century
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('tuaE_cmip6_126.mat')
% tauE over 1987-2005
sp26_tauEhist11(:,:,:,1) = tuaEbcc_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,2) = tuaEcan_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,3) = tuaEcesm_W_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,4) = tuaEuk_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,5) = tuaEipsl_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,6) = tuaEmic_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,7) = tuaEmpi_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,8) = tuaEnor_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,9) = tuaEass_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,10) = tuaEcnrm_3D(:,:,137:156);
sp26_tauEhist11(:,:,:,11) = tuaEec_3D(:,:,137:156);
sp26_tauE0_M11 = nanmean(sp26_tauEhist11,3);
sp26_tauE0_M11 = squeeze(sp26_tauE0_M11);
sp26_tauE0_M11(:,1:30,:) = NaN; 

% reTauE calculated as the difference between 2081-2100 and 1987-2005
sp26_TauEend11(:,:,:,1) = tuaEbcc_3D(:,:,232:251);
sp26_TauEend11(:,:,:,2) = tuaEcan_3D(:,:,232:251);
sp26_TauEend11(:,:,:,3) = tuaEcesm_W_3D(:,:,232:251);
sp26_TauEend11(:,:,:,4) = tuaEuk_3D(:,:,232:251);
sp26_TauEend11(:,:,:,5) = tuaEipsl_3D(:,:,232:251);
sp26_TauEend11(:,:,:,6) = tuaEmic_3D(:,:,232:251);
sp26_TauEend11(:,:,:,7) = tuaEmpi_3D(:,:,232:251);
sp26_TauEend11(:,:,:,8) = tuaEnor_3D(:,:,232:251);
sp26_TauEend11(:,:,:,9) = tuaEass_3D(:,:,232:251);
sp26_TauEend11(:,:,:,10) = tuaEcnrm_3D(:,:,232:251);
sp26_TauEend11(:,:,:,11) = tuaEec_3D(:,:,232:251);

sp26_tauEend_M11= nanmean(sp26_TauEend11,3);
sp26_tauEend_M11 = squeeze(sp26_tauEend_M11);
sp26_tauEend_M11(:,1:30,:) = NaN; 

sp26_reTauE_M11 = sp26_tauEend_M11 - sp26_tauE0_M11;

clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  sp26_tauE0_M11 sp26_reTauE_M11
              
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('tuaE_cmip6_245.mat')
% tauE over the 1987-2005
sp45_tauEhist11(:,:,:,1) = tuaEbcc_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,2) = tuaEcan_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,3) = tuaEcesm_W_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,4) = tuaEuk_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,5) = tuaEipsl_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,6) = tuaEmic_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,7) = tuaEmpi_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,8) = tuaEnor_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,9) = tuaEass_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,10) = tuaEcnrm_3D(:,:,137:156);
sp45_tauEhist11(:,:,:,11) = tuaEec_3D(:,:,137:156);
sp45_tauE0_M11 = nanmean(sp45_tauEhist11,3);
sp45_tauE0_M11 = squeeze(sp45_tauE0_M11);
sp45_tauE0_M11(:,1:30,:) = NaN; 

 % tauE over the 2081-2100
sp45_tauEend11(:,:,:,1) = tuaEbcc_3D(:,:,232:251);
sp45_tauEend11(:,:,:,2) = tuaEcan_3D(:,:,232:251);
sp45_tauEend11(:,:,:,3) = tuaEcesm_W_3D(:,:,232:251);
sp45_tauEend11(:,:,:,4) = tuaEuk_3D(:,:,232:251);
sp45_tauEend11(:,:,:,5) = tuaEipsl_3D(:,:,232:251);
sp45_tauEend11(:,:,:,6) = tuaEmic_3D(:,:,232:251);
sp45_tauEend11(:,:,:,7) = tuaEmpi_3D(:,:,232:251);
sp45_tauEend11(:,:,:,8) = tuaEnor_3D(:,:,232:251);
sp45_tauEend11(:,:,:,9) = tuaEass_3D(:,:,232:251);
sp45_tauEend11(:,:,:,10) = tuaEcnrm_3D(:,:,232:251);
sp45_tauEend11(:,:,:,11) = tuaEec_3D(:,:,232:251);

sp45_tauEend_M11= nanmean(sp45_tauEend11,3);
sp45_tauEend_M11 = squeeze(sp45_tauEend_M11);
sp45_tauEend_M11(:,1:30,:) = NaN; 

sp45_reTauE_M11 = sp45_tauEend_M11 - sp45_tauE0_M11;   
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  sp26_tauE0_M11 sp26_reTauE_M11 ...
                  sp45_tauE0_M11 sp45_reTauE_M11


% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('tuaE_cmip6_251.mat')
sp85_tauEhist11(:,:,:,1) = tuaEbcc_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,2) = tuaEcan_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,3) = tuaEcesm_W_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,4) = tuaEuk_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,5) = tuaEipsl_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,6) = tuaEmic_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,7) = tuaEmpi_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,8) = tuaEnor_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,9) = tuaEass_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,10) = tuaEcnrm_3D(:,:,137:156);
sp85_tauEhist11(:,:,:,11) = tuaEec_3D(:,:,137:156);
sp85_tauE0_M11 = nanmean(sp85_tauEhist11,3);
sp85_tauE0_M11 = squeeze(sp85_tauE0_M11);
sp85_tauE0_M11(:,1:30,:) = NaN; 

% calculate the multi-model mean value of the tauE over the 2081-2100
sp85_tauEend11(:,:,:,1) = tuaEbcc_3D(:,:,232:251);
sp85_tauEend11(:,:,:,2) = tuaEcan_3D(:,:,232:251);
sp85_tauEend11(:,:,:,3) = tuaEcesm_W_3D(:,:,232:251);
sp85_tauEend11(:,:,:,4) = tuaEuk_3D(:,:,232:251);
sp85_tauEend11(:,:,:,5) = tuaEipsl_3D(:,:,232:251);
sp85_tauEend11(:,:,:,6) = tuaEmic_3D(:,:,232:251);
sp85_tauEend11(:,:,:,7) = tuaEmpi_3D(:,:,232:251);
sp85_tauEend11(:,:,:,8) = tuaEnor_3D(:,:,232:251);
sp85_tauEend11(:,:,:,9) = tuaEass_3D(:,:,232:251);
sp85_tauEend11(:,:,:,10) = tuaEcnrm_3D(:,:,232:251);
sp85_tauEend11(:,:,:,11) = tuaEec_3D(:,:,232:251);

sp85_tauEend_M11= nanmean(sp85_tauEend11,3);
sp85_tauEend_M11= squeeze(sp85_tauEend_M11);
sp85_tauEend_M11(:,1:30,:) = NaN; 

sp85_reTauE_M11 = sp85_tauEend_M11 - sp85_tauE0_M11;
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  sp26_tauE0_M11 sp26_reTauE_M11 ...
                  sp45_tauE0_M11 sp45_reTauE_M11 ...
                  sp85_tauE0_M11 sp85_reTauE_M11
              
% convert model predictions to match with the global map
% tauE0 and reTauE
for i=1:11
    
        rot90map26_tauE0 = rot90(sp26_tauE0_M11(:,:,i));
        New26_tauE0_lefrgt(1:180,1:360) = NaN;
        New26_tauE0_lefrgt(:,1:180) = rot90map26_tauE0(:,181:360);
        New26_tauE0_lefrgt(:,181:360) = rot90map26_tauE0(:,1:180);
        
        rot90map45_tauE0 = rot90(sp45_tauE0_M11(:,:,i));
        New45_tauE0_lefrgt(1:180,1:360) = NaN;
        New45_tauE0_lefrgt(:,1:180) = rot90map45_tauE0(:,181:360);
        New45_tauE0_lefrgt(:,181:360) = rot90map45_tauE0(:,1:180);
        
        rot90map85_tauE0 = rot90(sp85_tauE0_M11(:,:,i));
        New85_tauE0_lefrgt(1:180,1:360) = NaN;
        New85_tauE0_lefrgt(:,1:180) = rot90map85_tauE0(:,181:360);
        New85_tauE0_lefrgt(:,181:360) = rot90map85_tauE0(:,1:180);
        
        rot90map26_reTauE = rot90(sp26_reTauE_M11(:,:,i));
        New26_reTauE_lefrgt(1:180,1:360) = NaN;
        New26_reTauE_lefrgt(:,1:180) = rot90map26_reTauE(:,181:360);
        New26_reTauE_lefrgt(:,181:360) = rot90map26_reTauE(:,1:180);
        
        rot90map45_reTauE = rot90(sp45_reTauE_M11(:,:,i));
        New45_reTauE_lefrgt(1:180,1:360) = NaN;
        New45_reTauE_lefrgt(:,1:180) = rot90map45_reTauE(:,181:360);
        New45_reTauE_lefrgt(:,181:360) = rot90map45_reTauE(:,1:180);
        
        rot90map85_reTauE = rot90(sp85_reTauE_M11(:,:,i));
        New85_reTauE_lefrgt(1:180,1:360) = NaN;
        New85_reTauE_lefrgt(:,1:180) = rot90map85_reTauE(:,181:360);
        New85_reTauE_lefrgt(:,181:360) = rot90map85_reTauE(:,1:180);
        
        
        tauE026_maps11(:,:,i) = New26_tauE0_lefrgt;
        tauE045_maps11(:,:,i) = New45_tauE0_lefrgt;
        tauE085_maps11(:,:,i) = New85_tauE0_lefrgt;
        
        reTauE26_maps11(:,:,i) = New26_reTauE_lefrgt;
        reTauE45_maps11(:,:,i) = New45_reTauE_lefrgt;
        reTauE85_maps11(:,:,i) = New85_reTauE_lefrgt;
        
        
              
end   
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11

%% estimate CMIP6 model predictions of Xc change (reXc) at the end of 21th century
% load the Xc0 (1987-2005 mean) and the XCed (2081-2100 mean)
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('Xc_cmip6_126.mat')
sp26_Xc_hist11(:,:,:,1) = XcBcc_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,2) = XcCan_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,3) = XcCesm_W_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,4) = XcUk_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,5) = XcIpsl_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,6) = XcMic_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,7) = XcMpi_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,8) = XcNor_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,9) = XcAss_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,10) = XcCnrm_3D(:,:,137:156);
sp26_Xc_hist11(:,:,:,11) = XcEc_3D(:,:,137:156);
sp26_Xc0_M11 = nanmean(sp26_Xc_hist11,3);
sp26_Xc0_M11 = squeeze(sp26_Xc0_M11);
sp26_Xc0_M11(:,1:30,:) = NaN; 

% reTauE calculated as the difference between 2081-2100 and 1987-2005
sp26_Xc_end11(:,:,:,1) = XcBcc_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,2) = XcCan_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,3) = XcCesm_W_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,4) = XcUk_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,5) = XcIpsl_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,6) = XcMic_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,7) = XcMpi_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,8) = XcNor_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,9) = XcAss_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,10) = XcCnrm_3D(:,:,232:251);
sp26_Xc_end11(:,:,:,11) = XcEc_3D(:,:,232:251);

sp26_Xc_end_M11= nanmean(sp26_Xc_end11,3);
sp26_Xc_end_M11 = squeeze(sp26_Xc_end_M11);
sp26_Xc_end_M11(:,1:30,:) = NaN; 

sp26_reXc_M11 = sp26_Xc_end_M11 - sp26_Xc0_M11;

clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  sp26_reXc_M11 sp26_Xc_end_M11 sp26_Xc0_M11
              
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('Xc_cmip6_245.mat')
% Xc over the 1987-2005
sp45_Xc_hist11(:,:,:,1) = XcBcc_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,2) = XcCan_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,3) = XcCesm_W_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,4) = XcUk_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,5) = XcIpsl_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,6) = XcMic_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,7) = XcMpi_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,8) = XcNor_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,9) = XcAss_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,10) = XcCnrm_3D(:,:,137:156);
sp45_Xc_hist11(:,:,:,11) = XcEc_3D(:,:,137:156);
sp45_Xc0_M11 = nanmean(sp45_Xc_hist11,3);
sp45_Xc0_M11 = squeeze(sp45_Xc0_M11);
sp45_Xc0_M11(:,1:30,:) = NaN; 

 % Xc over the 2081-2100
sp45_Xc_end11(:,:,:,1) = XcBcc_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,2) = XcCan_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,3) = XcCesm_W_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,4) = XcUk_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,5) = XcIpsl_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,6) = XcMic_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,7) = XcMpi_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,8) = XcNor_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,9) = XcAss_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,10) = XcCnrm_3D(:,:,232:251);
sp45_Xc_end11(:,:,:,11) = XcEc_3D(:,:,232:251);

sp45_Xc_end_M11= nanmean(sp45_Xc_end11,3);
sp45_Xc_end_M11 = squeeze(sp45_Xc_end_M11);
sp45_Xc_end_M11(:,1:30,:) = NaN; 

sp45_reXc_M11 = sp45_Xc_end_M11 - sp45_Xc0_M11;   
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  sp26_reXc_M11 sp26_Xc_end_M11 sp26_Xc0_M11 ...
                  sp45_reXc_M11 sp45_Xc_end_M11 sp45_Xc0_M11


% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('Xc_cmip6_251.mat')
sp85_Xchist11(:,:,:,1) = XcBcc_3D(:,:,137:156);
sp85_Xchist11(:,:,:,2) = XcCan_3D(:,:,137:156);
sp85_Xchist11(:,:,:,3) = XcCesm_W_3D(:,:,137:156);
sp85_Xchist11(:,:,:,4) = XcUk_3D(:,:,137:156);
sp85_Xchist11(:,:,:,5) = XcIpsl_3D(:,:,137:156);
sp85_Xchist11(:,:,:,6) = XcMic_3D(:,:,137:156);
sp85_Xchist11(:,:,:,7) = XcMpi_3D(:,:,137:156);
sp85_Xchist11(:,:,:,8) = XcNor_3D(:,:,137:156);
sp85_Xchist11(:,:,:,9) = XcAss_3D(:,:,137:156);
sp85_Xchist11(:,:,:,10) = XcCnrm_3D(:,:,137:156);
sp85_Xchist11(:,:,:,11) = XcEc_3D(:,:,137:156);
sp85_Xc0_M11 = nanmean(sp85_Xchist11,3);
sp85_Xc0_M11 = squeeze(sp85_Xc0_M11);
sp85_Xc0_M11(:,1:30,:) = NaN; 

% calculate the multi-model mean value of the GPP over the 2081-2100
sp85_Xcend11(:,:,:,1) = XcBcc_3D(:,:,232:251);
sp85_Xcend11(:,:,:,2) = XcCan_3D(:,:,232:251);
sp85_Xcend11(:,:,:,3) = XcCesm_W_3D(:,:,232:251);
sp85_Xcend11(:,:,:,4) = XcUk_3D(:,:,232:251);
sp85_Xcend11(:,:,:,5) = XcIpsl_3D(:,:,232:251);
sp85_Xcend11(:,:,:,6) = XcMic_3D(:,:,232:251);
sp85_Xcend11(:,:,:,7) = XcMpi_3D(:,:,232:251);
sp85_Xcend11(:,:,:,8) = XcNor_3D(:,:,232:251);
sp85_Xcend11(:,:,:,9) = XcAss_3D(:,:,232:251);
sp85_Xcend11(:,:,:,10) = XcCnrm_3D(:,:,232:251);
sp85_Xcend11(:,:,:,11) = XcEc_3D(:,:,232:251);

sp85_Xc_end_M11= nanmean(sp85_Xcend11,3);
sp85_Xc_end_M11= squeeze(sp85_Xc_end_M11);
sp85_Xc_end_M11(:,1:30,:) = NaN; 

sp85_reXc_M11 = sp85_Xc_end_M11 - sp85_Xc0_M11;
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  sp26_reXc_M11 sp26_Xc_end_M11 sp26_Xc0_M11 ...
                  sp45_reXc_M11 sp45_Xc_end_M11 sp45_Xc0_M11 ...
                  sp85_reXc_M11 sp85_Xc_end_M11 sp85_Xc0_M11
              
% convert model predictions to match with the global map
% Xc0, XcED and reXc
for i=1:11
       
        rot90map26_Xc0 = rot90(sp26_Xc0_M11(:,:,i));
        New26_Xc0_lefrgt(1:180,1:360) = NaN;
        New26_Xc0_lefrgt(:,1:180) = rot90map26_Xc0(:,181:360);
        New26_Xc0_lefrgt(:,181:360) = rot90map26_Xc0(:,1:180);
        
        rot90map45_Xc0 = rot90(sp45_Xc0_M11(:,:,i));
        New45_Xc0_lefrgt(1:180,1:360) = NaN;
        New45_Xc0_lefrgt(:,1:180) = rot90map45_Xc0(:,181:360);
        New45_Xc0_lefrgt(:,181:360) = rot90map45_Xc0(:,1:180);
        
        rot90map85_Xc0 = rot90(sp85_Xc0_M11(:,:,i));
        New85_Xc0_lefrgt(1:180,1:360) = NaN;
        New85_Xc0_lefrgt(:,1:180) = rot90map85_Xc0(:,181:360);
        New85_Xc0_lefrgt(:,181:360) = rot90map85_Xc0(:,1:180);
        
        
        rot90map26_XcED = rot90(sp26_Xc_end_M11(:,:,i));
        New26_XcED_lefrgt(1:180,1:360) = NaN;
        New26_XcED_lefrgt(:,1:180) = rot90map26_XcED(:,181:360);
        New26_XcED_lefrgt(:,181:360) = rot90map26_XcED(:,1:180);
        
        rot90map45_XcED = rot90(sp45_Xc_end_M11(:,:,i));
        New45_XcED_lefrgt(1:180,1:360) = NaN;
        New45_XcED_lefrgt(:,1:180) = rot90map45_XcED(:,181:360);
        New45_XcED_lefrgt(:,181:360) = rot90map45_XcED(:,1:180);
        
        rot90map85_XcED = rot90(sp85_Xc_end_M11(:,:,i));
        New85_XcED_lefrgt(1:180,1:360) = NaN;
        New85_XcED_lefrgt(:,1:180) = rot90map85_XcED(:,181:360);
        New85_XcED_lefrgt(:,181:360) = rot90map85_XcED(:,1:180);
    
        
        rot90map26_reXc = rot90(sp26_reXc_M11(:,:,i));
        New26_reXc_lefrgt(1:180,1:360) = NaN;
        New26_reXc_lefrgt(:,1:180) = rot90map26_reXc(:,181:360);
        New26_reXc_lefrgt(:,181:360) = rot90map26_reXc(:,1:180);
        
        rot90map45_reXc = rot90(sp45_reXc_M11(:,:,i));
        New45_reXc_lefrgt(1:180,1:360) = NaN;
        New45_reXc_lefrgt(:,1:180) = rot90map45_reXc(:,181:360);
        New45_reXc_lefrgt(:,181:360) = rot90map45_reXc(:,1:180);
        
        rot90map85_reXc = rot90(sp85_reXc_M11(:,:,i));
        New85_reXc_lefrgt(1:180,1:360) = NaN;
        New85_reXc_lefrgt(:,1:180) = rot90map85_reXc(:,181:360);
        New85_reXc_lefrgt(:,181:360) = rot90map85_reXc(:,1:180);
        
        Xc026_maps11(:,:,i) = New26_Xc0_lefrgt;
        Xc045_maps11(:,:,i) = New45_Xc0_lefrgt;
        Xc085_maps11(:,:,i) = New85_Xc0_lefrgt;
        
        XCed26_maps11(:,:,i) = New26_XcED_lefrgt;
        XCed45_maps11(:,:,i) = New45_XcED_lefrgt;
        XCed85_maps11(:,:,i) = New85_XcED_lefrgt;
        
        reXc26_maps11(:,:,i) = New26_reXc_lefrgt;
        reXc45_maps11(:,:,i) = New45_reXc_lefrgt;
        reXc85_maps11(:,:,i) = New85_reXc_lefrgt;
        
        
              
end               
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc045_maps11 Xc085_maps11 ...
                  XCed26_maps11 XCed45_maps11 XCed85_maps11 ...
                  reXc26_maps11 reXc45_maps11 reXc85_maps11              
              
                          
%% estimate CMIP6 model predictions of Xp change (reXp) at the end of 21th century
% load the Xp0 (1987-2005 mean) and the XPed (2081-2100 mean)
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('Xp_cmip6_126.mat')
sp26_Xp_hist11(:,:,:,1) = XpBcc_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,2) = XpCan_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,3) = XpCesm_W_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,4) = XpUk_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,5) = XpIpsl_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,6) = XpMic_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,7) = XpMpi_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,8) = XpNor_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,9) = XpAss_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,10) = XpCnrm_3D(:,:,137:156);
sp26_Xp_hist11(:,:,:,11) = XpEc_3D(:,:,137:156);
sp26_Xp0_M11 = nanmean(sp26_Xp_hist11,3);
sp26_Xp0_M11 = squeeze(sp26_Xp0_M11);
sp26_Xp0_M11(:,1:30,:) = NaN; 

% reTauE calculated as the difference between 2081-2100 and 1987-2005
sp26_Xp_end11(:,:,:,1) = XpBcc_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,2) = XpCan_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,3) = XpCesm_W_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,4) = XpUk_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,5) = XpIpsl_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,6) = XpMic_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,7) = XpMpi_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,8) = XpNor_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,9) = XpAss_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,10) = XpCnrm_3D(:,:,232:251);
sp26_Xp_end11(:,:,:,11) = XpEc_3D(:,:,232:251);

sp26_Xpend_M11= nanmean(sp26_Xp_end11,3);
sp26_Xpend_M11 = squeeze(sp26_Xpend_M11);
sp26_Xpend_M11(:,1:30,:) = NaN; 

sp26_reXp_M11 = sp26_Xpend_M11 - sp26_Xp0_M11;

clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc045_maps11 Xc085_maps11 ...
                  XCed26_maps11 XCed45_maps11 XCed85_maps11 ...
                  reXc26_maps11 reXc45_maps11 reXc85_maps11 ...
                  sp26_reXp_M11
              
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('Xp_cmip6_245.mat')
% Xp over the 1987-2005
sp45_Xp_hist11(:,:,:,1) = XpBcc_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,2) = XpCan_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,3) = XpCesm_W_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,4) = XpUk_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,5) = XpIpsl_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,6) = XpMic_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,7) = XpMpi_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,8) = XpNor_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,9) = XpAss_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,10) = XpCnrm_3D(:,:,137:156);
sp45_Xp_hist11(:,:,:,11) = XpEc_3D(:,:,137:156);
sp45_Xp0_M11 = nanmean(sp45_Xp_hist11,3);
sp45_Xp0_M11 = squeeze(sp45_Xp0_M11);
sp45_Xp0_M11(:,1:30,:) = NaN; 

 % Xp over the 2081-2100
sp45_Xp_end11(:,:,:,1) = XpBcc_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,2) = XpCan_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,3) = XpCesm_W_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,4) = XpUk_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,5) = XpIpsl_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,6) = XpMic_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,7) = XpMpi_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,8) = XpNor_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,9) = XpAss_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,10) = XpCnrm_3D(:,:,232:251);
sp45_Xp_end11(:,:,:,11) = XpEc_3D(:,:,232:251);

sp45_Xp_end_M11= nanmean(sp45_Xp_end11,3);
sp45_Xp_end_M11 = squeeze(sp45_Xp_end_M11);
sp45_Xp_end_M11(:,1:30,:) = NaN; 

sp45_reXp_M11 = sp45_Xp_end_M11 - sp45_Xp0_M11;   
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc045_maps11 Xc085_maps11 ...
                  XCed26_maps11 XCed45_maps11 XCed85_maps11 ...
                  reXc26_maps11 reXc45_maps11 reXc85_maps11 ...
                  sp26_reXp_M11 sp45_reXp_M11


% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('Xp_cmip6_251.mat')
sp85_Xphist11(:,:,:,1) = XpBcc_3D(:,:,137:156);
sp85_Xphist11(:,:,:,2) = XpCan_3D(:,:,137:156);
sp85_Xphist11(:,:,:,3) = XpCesm_W_3D(:,:,137:156);
sp85_Xphist11(:,:,:,4) = XpUk_3D(:,:,137:156);
sp85_Xphist11(:,:,:,5) = XpIpsl_3D(:,:,137:156);
sp85_Xphist11(:,:,:,6) = XpMic_3D(:,:,137:156);
sp85_Xphist11(:,:,:,7) = XpMpi_3D(:,:,137:156);
sp85_Xphist11(:,:,:,8) = XpNor_3D(:,:,137:156);
sp85_Xphist11(:,:,:,9) = XpAss_3D(:,:,137:156);
sp85_Xphist11(:,:,:,10) = XpCnrm_3D(:,:,137:156);
sp85_Xphist11(:,:,:,11) = XpEc_3D(:,:,137:156);
sp85_Xp0_M11 = nanmean(sp85_Xphist11,3);
sp85_Xp0_M11 = squeeze(sp85_Xp0_M11);
sp85_Xp0_M11(:,1:30,:) = NaN; 

% calculate the multi-model mean value of the GPP over the 2081-2100
sp85_Xpend11(:,:,:,1) = XpBcc_3D(:,:,232:251);
sp85_Xpend11(:,:,:,2) = XpCan_3D(:,:,232:251);
sp85_Xpend11(:,:,:,3) = XpCesm_W_3D(:,:,232:251);
sp85_Xpend11(:,:,:,4) = XpUk_3D(:,:,232:251);
sp85_Xpend11(:,:,:,5) = XpIpsl_3D(:,:,232:251);
sp85_Xpend11(:,:,:,6) = XpMic_3D(:,:,232:251);
sp85_Xpend11(:,:,:,7) = XpMpi_3D(:,:,232:251);
sp85_Xpend11(:,:,:,8) = XpNor_3D(:,:,232:251);
sp85_Xpend11(:,:,:,9) = XpAss_3D(:,:,232:251);
sp85_Xpend11(:,:,:,10) = XpCnrm_3D(:,:,232:251);
sp85_Xpend11(:,:,:,11) = XpEc_3D(:,:,232:251);

sp85_Xpend_M11= nanmean(sp85_Xpend11,3);
sp85_Xpend_M11= squeeze(sp85_Xpend_M11);
sp85_Xpend_M11(:,1:30,:) = NaN; 

sp85_reXp_M11 = sp85_Xpend_M11 - sp85_Xp0_M11;
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc045_maps11 Xc085_maps11 ...
                  XCed26_maps11 XCed45_maps11 XCed85_maps11 ...
                  reXc26_maps11 reXc45_maps11 reXc85_maps11 ...
                  sp26_reXp_M11 sp45_reXp_M11 sp85_reXp_M11
              
% convert model predictions to match with the global map
% reXp
for i=1:11
        
        rot90map26_reXp = rot90(sp26_reXp_M11(:,:,i));
        New26_reXp_lefrgt(1:180,1:360) = NaN;
        New26_reXp_lefrgt(:,1:180) = rot90map26_reXp(:,181:360);
        New26_reXp_lefrgt(:,181:360) = rot90map26_reXp(:,1:180);
        
        rot90map45_reXp = rot90(sp45_reXp_M11(:,:,i));
        New45_reXp_lefrgt(1:180,1:360) = NaN;
        New45_reXp_lefrgt(:,1:180) = rot90map45_reXp(:,181:360);
        New45_reXp_lefrgt(:,181:360) = rot90map45_reXp(:,1:180);
        
        rot90map85_reXp = rot90(sp85_reXp_M11(:,:,i));
        New85_reXp_lefrgt(1:180,1:360) = NaN;
        New85_reXp_lefrgt(:,1:180) = rot90map85_reXp(:,181:360);
        New85_reXp_lefrgt(:,181:360) = rot90map85_reXp(:,1:180);
        
        reXp26_maps11(:,:,i) = New26_reXp_lefrgt;
        reXp45_maps11(:,:,i) = New45_reXp_lefrgt;
        reXp85_maps11(:,:,i) = New85_reXp_lefrgt;
        
        
              
end               
clearvars -except C026_maps11 C045_maps11 C085_maps11 ...
                  Cend26_maps11 Cend45_maps11 Cend85_maps11 ...
                  Cnet26_maps11 Cnet45_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP045_maps11 NPP085_maps11 ...
                  NPPed26_maps11 NPPed45_maps11 NPPed85_maps11 ...
                  reNPP26_maps11 reNPP45_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc045_maps11 Xc085_maps11 ...
                  XCed26_maps11 XCed45_maps11 XCed85_maps11 ...
                  reXc26_maps11 reXc45_maps11 reXc85_maps11 ...        
                  reXp26_maps11 reXp45_maps11 reXp85_maps11

% load the map3 which shows regions where models have uncertian projections of land carbon change [Agreement index<0.2 and F>0.8]
%ssp126
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet')
%Cnet_26 = csvread('Cnet11_26_cmip6.csv');
map3_26 = csvread('map3_frac05_r02_26.csv');

%ssp245
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp2-4.5\Cnet')
%Cnet_45 = csvread('Cnet11_45_cmip6.csv');
map3_45 = csvread('map3_frac05_r02_45.csv');

% ssp585
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\Cnet')
%Cnet_85 = csvread('Cnet11_85_cmip6.csv');
map3_85 = csvread('map3_frac05_r02_85.csv');

%%
cellarea1 = xlsread('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures\v2-Figure4\area1бу.csv');  % unit:km2 = 10^6 m2
% mask of the uncertian region
map3_26(map3_26==3)=1;
map3_45(map3_45==3)=1;
map3_85(map3_85==3)=1;

C026_unMap11 = C026_maps11.*map3_26;
C045_unMap11 = C045_maps11.*map3_45;
C085_unMap11 = C085_maps11.*map3_85; 

Cend26_unMap11 = Cend26_maps11.*map3_26;
Cend45_unMap11 = Cend45_maps11.*map3_45;
Cend85_unMap11 = Cend85_maps11.*map3_85; 

Cnet26_unMap11 = Cnet26_maps11.*map3_26;  % unit: KgC m-2
Cnet45_unMap11 = Cnet45_maps11.*map3_45;
Cnet85_unMap11 = Cnet85_maps11.*map3_85; 

NPP026_unMap11 = NPP026_maps11.*map3_26; % unit: KgC m-2 yr-1
NPP045_unMap11 = NPP045_maps11.*map3_45;
NPP085_unMap11 = NPP085_maps11.*map3_85; 

NPPed26_unMap11 = NPPed26_maps11.*map3_26; % unit: KgC m-2 yr-1
NPPed45_unMap11 = NPPed45_maps11.*map3_45;
NPPed85_unMap11 = NPPed85_maps11.*map3_85; 

reNPP26_unMap11 = reNPP26_maps11.*map3_26; % unit: KgC m-2 yr-1
reNPP45_unMap11 = reNPP45_maps11.*map3_45;
reNPP85_unMap11 = reNPP85_maps11.*map3_85;  

tuaE026_unMap11 = tauE026_maps11.*map3_26; % unit: years
tuaE045_unMap11 = tauE045_maps11.*map3_45;
tuaE085_unMap11 = tauE085_maps11.*map3_85; 

reTuaE26_unMap11 = reTauE26_maps11.*map3_26; % unit: years
reTuaE45_unMap11 = reTauE45_maps11.*map3_45;
reTuaE85_unMap11= reTauE85_maps11.*map3_85; 
                  
Xc026_unMap11 = Xc026_maps11.*map3_26;    % unit: KgC m-2
Xc045_unMap11 = Xc045_maps11.*map3_45;    
Xc085_unMap11 = Xc085_maps11.*map3_85; 

XCed26_unMap11 = XCed26_maps11.*map3_26;  % unit: KgC m-2 
XCed45_unMap11 = XCed45_maps11.*map3_45; 
XCed85_unMap11 = XCed85_maps11.*map3_85; 

reXc26_unMap11 = reXc26_maps11.*map3_26;   % unit: KgC m-2
reXc45_unMap11 = reXc45_maps11.*map3_45; 
reXc85_unMap11 = reXc85_maps11.*map3_85;

reXp26_unMap11 = reXp26_maps11.*map3_26; % unit: KgC m-2
reXp45_unMap11 = reXp45_maps11.*map3_45;
reXp85_unMap11 = reXp85_maps11.*map3_85; 


%% 
leg6_str = {'BCC-CSM2-MR'; 'CanESM5'; 'CESM2-WACCM'; ...
        'UKESM1-0-LL'; 'IPSL-CM6A-LR';'MIROC-ES2L';...
        'MPI-ESM1-2-LR'; 'NorESM2-LM';...
        'ACCESS-ESM1-5'; 'CNRM-ESM2-1';'EC-Earth3-Veg'}
    
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure5\UN_factors_regional')
   Cnet26_unMap11(isnan(Cnet26_unMap11)) = 99999;
    Cnet45_unMap11(isnan(Cnet45_unMap11)) = 99999;
    Cnet85_unMap11(isnan(Cnet85_unMap11)) = 99999;
    
    NPP026_unMap11(isnan(NPP026_unMap11)) = 99999;
    NPP045_unMap11(isnan(NPP045_unMap11)) = 99999;
    NPP085_unMap11(isnan(NPP085_unMap11)) = 99999;
    
    reNPP26_unMap11(isnan(reNPP26_unMap11)) = 99999;
    reNPP45_unMap11(isnan(reNPP45_unMap11)) = 99999;
    reNPP85_unMap11(isnan(reNPP85_unMap11)) = 99999;
    
    tuaE026_unMap11(isnan(tuaE026_unMap11)) = 99999;
    tuaE045_unMap11(isnan(tuaE045_unMap11)) = 99999;
    tuaE085_unMap11(isnan(tuaE085_unMap11)) = 99999;
    
    reTuaE26_unMap11(isnan(reTuaE26_unMap11)) =99999;
    reTuaE45_unMap11(isnan(reTuaE45_unMap11)) = 99999;
    reTuaE85_unMap11(isnan(reTuaE85_unMap11)) = 99999;
    
    reXp26_unMap11(isnan(reXp26_unMap11)) = 99999;
    reXp45_unMap11(isnan(reXp45_unMap11)) = 99999;
    reXp85_unMap11(isnan(reXp85_unMap11)) = 99999;



for i=1:11
 
    xlswrite('CMIP6_Cnet26_sp.xlsx',Cnet26_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_Cnet45_sp.xlsx',Cnet45_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_Cnet85_sp.xlsx',Cnet85_unMap11(:,:,i),leg6_str{i})
    
    xlswrite('CMIP6_NPP026_sp.xlsx',NPP026_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_NPP045_sp.xlsx',NPP045_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_NPP085_sp.xlsx',NPP085_unMap11(:,:,i),leg6_str{i})
    
    xlswrite('CMIP6_reNPP26_sp.xlsx',reNPP26_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_reNPP45_sp.xlsx',reNPP45_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_reNPP85_sp.xlsx',reNPP85_unMap11(:,:,i),leg6_str{i})
    
    xlswrite('CMIP6_tuaE026_sp.xlsx',tuaE026_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_tuaE045_sp.xlsx',tuaE045_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_tuaE085_sp.xlsx',tuaE085_unMap11(:,:,i),leg6_str{i})
    
    xlswrite('CMIP6_reTuaE26_sp.xlsx',reTuaE26_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_reTuaE45_sp.xlsx',reTuaE45_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_reTuaE85_sp.xlsx',reTuaE85_unMap11(:,:,i),leg6_str{i})
    
    xlswrite('CMIP6_reXp26_sp.xlsx',reXp26_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_reXp45_sp.xlsx',reXp45_unMap11(:,:,i),leg6_str{i})
    xlswrite('CMIP6_reXp85_sp.xlsx',reXp85_unMap11(:,:,i),leg6_str{i})
    
end


%%
C026_PgC_M11 = C026_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C026_PgC_gbUN = nansum(C026_PgC_M11,1); C026_PgC_gbUN = nansum(C026_PgC_gbUN,2); 
C026_PgC_gbUN = squeeze(C026_PgC_gbUN)
Cend26_PgC_M11 = Cend26_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Cend26_PgC_gbUN = nansum(Cend26_PgC_M11,1); Cend26_PgC_gbUN = nansum(Cend26_PgC_gbUN,2); 
Cend26_PgC_gbUN = squeeze(Cend26_PgC_gbUN)

C045_PgC_M11 = C045_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C045_PgC_gbUN = nansum(C045_PgC_M11,1); C045_PgC_gbUN = nansum(C045_PgC_gbUN,2); 
C045_PgC_gbUN = squeeze(C045_PgC_gbUN)
Cend45_PgC_M11 = Cend45_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Cend45_PgC_gbUN = nansum(Cend45_PgC_M11,1); Cend45_PgC_gbUN = nansum(Cend45_PgC_gbUN,2); 
Cend45_PgC_gbUN = squeeze(Cend45_PgC_gbUN)

C085_PgC_M11 = C085_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C085_PgC_gbUN = nansum(C085_PgC_M11,1); C085_PgC_gbUN = nansum(C085_PgC_gbUN,2); 
C085_PgC_gbUN = squeeze(C085_PgC_gbUN)
Cend85_PgC_M11 = Cend85_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Cend85_PgC_gbUN = nansum(Cend85_PgC_M11,1); Cend85_PgC_gbUN = nansum(Cend85_PgC_gbUN,2); 
Cend85_PgC_gbUN = squeeze(Cend85_PgC_gbUN)


Xc026_PgC_M11 = Xc026_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc026_PgC_gbUN = nansum(Xc026_PgC_M11,1); Xc026_PgC_gbUN = nansum(Xc026_PgC_gbUN,2);
Xc026_PgC_gbUN = squeeze(Xc026_PgC_gbUN)
XCed26_PgC_M11 = XCed26_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
XCed26_PgC_gbUN = nansum(XCed26_PgC_M11,1); XCed26_PgC_gbUN = nansum(XCed26_PgC_gbUN,2);
XCed26_PgC_gbUN = squeeze(XCed26_PgC_gbUN)

Xc045_PgC_M11 = Xc045_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc045_PgC_gbUN = nansum(Xc045_PgC_M11,1); Xc045_PgC_gbUN = nansum(Xc045_PgC_gbUN,2);
Xc045_PgC_gbUN = squeeze(Xc045_PgC_gbUN)
XCed45_PgC_M11 = XCed45_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
XCed45_PgC_gbUN = nansum(XCed45_PgC_M11,1); XCed45_PgC_gbUN = nansum(XCed45_PgC_gbUN,2);
XCed45_PgC_gbUN = squeeze(XCed45_PgC_gbUN)

Xc085_PgC_M11 = Xc085_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc085_PgC_gbUN = nansum(Xc085_PgC_M11,1); Xc085_PgC_gbUN = nansum(Xc085_PgC_gbUN,2);
Xc085_PgC_gbUN = squeeze(Xc085_PgC_gbUN)
XCed85_PgC_M11 = XCed85_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
XCed85_PgC_gbUN = nansum(XCed85_PgC_M11,1); XCed85_PgC_gbUN = nansum(XCed85_PgC_gbUN,2);
XCed85_PgC_gbUN = squeeze(XCed85_PgC_gbUN)


NPP026_PgC_M11 = NPP026_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 yr-1 into PgC
NPP26_PgC_gbUN = nansum(NPP026_PgC_M11,1); NPP26_PgC_gbUN = nansum(NPP26_PgC_gbUN,2);
NPP26_PgC_gbUN = squeeze(NPP26_PgC_gbUN)
NPPed26_PgC_M11 = NPPed26_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPPed26_PgC_gbUN = nansum(NPPed26_PgC_M11,1); NPPed26_PgC_gbUN = nansum(NPPed26_PgC_gbUN,2);
NPPed26_PgC_gbUN = squeeze(NPPed26_PgC_gbUN)

NPP045_PgC_M11 = NPP045_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP045_PgC_gbUN = nansum(NPP045_PgC_M11,1); NPP045_PgC_gbUN = nansum(NPP045_PgC_gbUN,2);
NPP045_PgC_gbUN = squeeze(NPP045_PgC_gbUN)
NPPed45_PgC_M11 = NPPed45_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPPed45_PgC_gbUN = nansum(NPPed45_PgC_M11,1); NPPed45_PgC_gbUN = nansum(NPPed45_PgC_gbUN,2);
NPPed45_PgC_gbUN = squeeze(NPPed45_PgC_gbUN)

NPP085_PgC_M11 = NPP085_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP085_PgC_gbUN = nansum(NPP085_PgC_M11,1); NPP085_PgC_gbUN = nansum(NPP085_PgC_gbUN,2);
NPP085_PgC_gbUN = squeeze(NPP085_PgC_gbUN)
NPPed85_PgC_M11 = NPPed85_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPPed85_PgC_gbUN = nansum(NPPed85_PgC_M11,1); NPPed85_PgC_gbUN = nansum(NPPed85_PgC_gbUN,2);
NPPed85_PgC_gbUN = squeeze(NPPed85_PgC_gbUN)


% calculate tauE0, TauEed, reTuaE
tuaE026_gbUN = Xc026_PgC_gbUN./NPP26_PgC_gbUN
tuaE045_gbUN = Xc045_PgC_gbUN./NPP045_PgC_gbUN
tuaE085_gbUN = Xc085_PgC_gbUN./NPP085_PgC_gbUN

tuaEed26_gbUN = XCed26_PgC_gbUN./NPPed26_PgC_gbUN
tuaEed45_gbUN = XCed45_PgC_gbUN./NPPed45_PgC_gbUN
tuaEed85_gbUN = XCed85_PgC_gbUN./NPPed85_PgC_gbUN

reTauE26_gbUN = tuaEed26_gbUN - tuaE026_gbUN
reTauE45_gbUN = tuaEed45_gbUN - tuaE045_gbUN
reTauE85_gbUN = tuaEed85_gbUN - tuaE085_gbUN

% reNPP
reNPP26_gbUN = NPPed26_PgC_gbUN - NPP26_PgC_gbUN
reNPP45_gbUN = NPPed45_PgC_gbUN - NPP045_PgC_gbUN
reNPP85_gbUN = NPPed85_PgC_gbUN - NPP085_PgC_gbUN

% reNPP*tauE0
reNPP_tauE026_gbUN =  reNPP26_gbUN.* tuaE026_gbUN
reNPP_tauE045_gbUN =  reNPP45_gbUN.* tuaE045_gbUN
reNPP_tauE085_gbUN =  reNPP85_gbUN.* tuaE085_gbUN

% NPP0 * retauE0
NPP0_reTauE26_gbUN = NPP26_PgC_gbUN.*reTauE26_gbUN
NPP0_reTauE45_gbUN = NPP045_PgC_gbUN.*reTauE45_gbUN
NPP0_reTauE85_gbUN = NPP085_PgC_gbUN.*reTauE85_gbUN

% reNPP * reTauE
reNPP_reTauE26_gbUN = reNPP26_gbUN.*reTauE26_gbUN
reNPP_reTauE45_gbUN = reNPP45_gbUN.*reTauE45_gbUN
reNPP_reTauE85_gbUN = reNPP85_gbUN.*reTauE85_gbUN

% reXc
reXc26_gbUN = reNPP_tauE026_gbUN + NPP0_reTauE26_gbUN + reNPP_reTauE26_gbUN
reXc45_gbUN = reNPP_tauE045_gbUN + NPP0_reTauE45_gbUN + reNPP_reTauE45_gbUN
reXc85_gbUN = reNPP_tauE085_gbUN + NPP0_reTauE85_gbUN + reNPP_reTauE85_gbUN

% reX
reC26_gbUN =  Cend26_PgC_gbUN - C026_PgC_gbUN
reC45_gbUN =  Cend45_PgC_gbUN - C045_PgC_gbUN
reC85_gbUN =  Cend85_PgC_gbUN - C085_PgC_gbUN

% reXp
reXp26_gbUN =  reXc26_gbUN - reC26_gbUN
reXp45_gbUN =  reXc45_gbUN - reC45_gbUN
reXp85_gbUN =  reXc85_gbUN - reC85_gbUN

reXp26_Pg_unMap11 = reXp26_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
reXp26_Pg_gbUN = nansum(reXp26_Pg_unMap11,1); reXp26_Pg_gbUN = nansum(reXp26_Pg_gbUN,2);
reXp26_Pg_gbUN = squeeze(reXp26_Pg_gbUN)
reXp45_Pg_unMap11 = reXp45_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
reXp45_Pg_gbUN = nansum(reXp45_Pg_unMap11,1); reXp45_Pg_gbUN = nansum(reXp45_Pg_gbUN,2);
reXp45_Pg_gbUN = squeeze(reXp45_Pg_gbUN)
reXp85_Pg_unMap11 = reXp85_unMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
reXp85_Pg_gbUN = nansum(reXp85_Pg_unMap11,1); reXp85_Pg_gbUN = nansum(reXp85_Pg_gbUN,2);
reXp85_Pg_gbUN = squeeze(reXp85_Pg_gbUN)

leg6_str = {'BCC-CSM2-MR'; 'CanESM5'; 'CESM2-WACCM'; ...
        'UKESM1-0-LL'; 'IPSL-CM6A-LR';'MIROC-ES2L';...
        'MPI-ESM1-2-LR'; 'NorESM2-LM';...
        'ACCESS-ESM1-5'; 'CNRM-ESM2-1';'EC-Earth3-Veg'}
Factors = {'Models','reX','reNPP*tauE0','NPP0*retauE0','reNPP*reTauE','reXp'} 


fct26 = [reC26_gbUN, reNPP_tauE026_gbUN, NPP0_reTauE26_gbUN, reNPP_reTauE26_gbUN, reXp26_gbUN]
ssp126_fcts = [leg6_str, num2cell(fct26)]    
ssp126_fcts = [Factors; ssp126_fcts]

fct45 = [reC45_gbUN, reNPP_tauE045_gbUN, NPP0_reTauE45_gbUN, reNPP_reTauE45_gbUN, reXp45_gbUN]
ssp245_fcts = [leg6_str, num2cell(fct45)]    
ssp245_fcts = [Factors; ssp245_fcts]

fct85 = [reC85_gbUN, reNPP_tauE085_gbUN, NPP0_reTauE85_gbUN, reNPP_reTauE85_gbUN, reXp85_gbUN]
ssp585_fcts = [leg6_str, num2cell(fct85)]    
ssp585_fcts = [Factors; ssp585_fcts]

cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure5')
xlswrite('CMIP6_reCnet_fcts.xlsx',ssp126_fcts,'SSP126')
xlswrite('CMIP6_reCnet_fcts.xlsx',ssp245_fcts,'SSP245')
xlswrite('CMIP6_reCnet_fcts.xlsx',ssp585_fcts,'SSP585')

save('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure5\Cnet_ssp3_UN.mat','reC26_gbUN','reC45_gbUN','reC85_gbUN')

























