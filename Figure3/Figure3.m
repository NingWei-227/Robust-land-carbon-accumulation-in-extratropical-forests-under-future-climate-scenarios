clear;clc

%% The temporal dynamics of land C storage change over 2006-2100

% load CMIP6 model predictions of land carbon storage change over 2006-2100
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
sp26_C0_M11(:,1:30,:) = NaN; % get rid of the Antarctic region
% Cland over the 2006-2100
sp6_C26_pre11(:,:,:,1) = cLand_BCC(:,:,157:251);
sp6_C26_pre11(:,:,:,2) = cLand_CAN(:,:,157:251);
sp6_C26_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251);
sp6_C26_pre11(:,:,:,4) = cLand_UK(:,:,157:251);
sp6_C26_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251);
sp6_C26_pre11(:,:,:,6) = cLand_MIC(:,:,157:251);
sp6_C26_pre11(:,:,:,7) = cLand_MPI(:,:,157:251);
sp6_C26_pre11(:,:,:,8) = cLand_NOR(:,:,157:251);
sp6_C26_pre11(:,:,:,9) = cLand_ASS(:,:,157:251);
sp6_C26_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251);
sp6_C26_pre11(:,:,:,11) = cLand_EC(:,:,157:251);
sp6_C26_pre11(:,1:30,:,:) = NaN;
% Cnet calculated as the difference between 2006-2100 and the 1986-2005 mean
sp6_Cnet26_pre11(:,:,:,1) = cLand_BCC(:,:,157:251)- sp26_C0_M11(:,:,1);
sp6_Cnet26_pre11(:,:,:,2) = cLand_CAN(:,:,157:251)- sp26_C0_M11(:,:,2);
sp6_Cnet26_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251)- sp26_C0_M11(:,:,3);
sp6_Cnet26_pre11(:,:,:,4) = cLand_UK(:,:,157:251)- sp26_C0_M11(:,:,4);
sp6_Cnet26_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251)- sp26_C0_M11(:,:,5);
sp6_Cnet26_pre11(:,:,:,6) = cLand_MIC(:,:,157:251)- sp26_C0_M11(:,:,6);
sp6_Cnet26_pre11(:,:,:,7) = cLand_MPI(:,:,157:251)- sp26_C0_M11(:,:,7);
sp6_Cnet26_pre11(:,:,:,8) = cLand_NOR(:,:,157:251)- sp26_C0_M11(:,:,8);
sp6_Cnet26_pre11(:,:,:,9) = cLand_ASS(:,:,157:251)- sp26_C0_M11(:,:,9);
sp6_Cnet26_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251)- sp26_C0_M11(:,:,10);
sp6_Cnet26_pre11(:,:,:,11) = cLand_EC(:,:,157:251)- sp26_C0_M11(:,:,11);
sp6_Cnet26_pre11(:,1:30,:,:) = NaN;  % get rid of the Antarctic region
clearvars -except sp26_C0_M11 sp6_C26_pre11 sp6_Cnet26_pre11

% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('cLand_cmip6_245.mat')
% cLand over the 1987-2005
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
% Cland over the 2006-2100
sp6_C45_pre11(:,:,:,1) = cLand_BCC(:,:,157:251);
sp6_C45_pre11(:,:,:,2) = cLand_CAN(:,:,157:251);
sp6_C45_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251);
sp6_C45_pre11(:,:,:,4) = cLand_UK(:,:,157:251);
sp6_C45_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251);
sp6_C45_pre11(:,:,:,6) = cLand_MIC(:,:,157:251);
sp6_C45_pre11(:,:,:,7) = cLand_MPI(:,:,157:251);
sp6_C45_pre11(:,:,:,8) = cLand_NOR(:,:,157:251);
sp6_C45_pre11(:,:,:,9) = cLand_ASS(:,:,157:251);
sp6_C45_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251);
sp6_C45_pre11(:,:,:,11) = cLand_EC(:,:,157:251);
sp6_C45_pre11(:,1:30,:,:) = NaN;
 % change in land carbon storage over the 2006-2100
sp6_Cnet45_pre11(:,:,:,1) = cLand_BCC(:,:,157:251) - sp45_C0_M11(:,:,1);
sp6_Cnet45_pre11(:,:,:,2) = cLand_CAN(:,:,157:251)- sp45_C0_M11(:,:,2);
sp6_Cnet45_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251)- sp45_C0_M11(:,:,3);
sp6_Cnet45_pre11(:,:,:,4) = cLand_UK(:,:,157:251)- sp45_C0_M11(:,:,4);
sp6_Cnet45_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251)- sp45_C0_M11(:,:,5);
sp6_Cnet45_pre11(:,:,:,6) = cLand_MIC(:,:,157:251)- sp45_C0_M11(:,:,6);
sp6_Cnet45_pre11(:,:,:,7) = cLand_MPI(:,:,157:251)- sp45_C0_M11(:,:,7);
sp6_Cnet45_pre11(:,:,:,8) = cLand_NOR(:,:,157:251)- sp45_C0_M11(:,:,8);
sp6_Cnet45_pre11(:,:,:,9) = cLand_ASS(:,:,157:251)- sp45_C0_M11(:,:,9);
sp6_Cnet45_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251)- sp45_C0_M11(:,:,10);
sp6_Cnet45_pre11(:,:,:,11) = cLand_EC(:,:,157:251)- sp45_C0_M11(:,:,11);
sp6_Cnet45_pre11(:,1:30,:,:) = NaN;  % get rid of the Antarctic region
clearvars -except sp26_C0_M11 sp6_C26_pre11 sp6_Cnet26_pre11 ....
                  sp45_C0_M11 sp6_C45_pre11 sp6_Cnet45_pre11 
                  
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
% Cland over the 2006-2100
sp6_C85_pre11(:,:,:,1) = cLand_BCC(:,:,157:251);
sp6_C85_pre11(:,:,:,2) = cLand_CAN(:,:,157:251);
sp6_C85_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251);
sp6_C85_pre11(:,:,:,4) = cLand_UK(:,:,157:251);
sp6_C85_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251);
sp6_C85_pre11(:,:,:,6) = cLand_MIC(:,:,157:251);
sp6_C85_pre11(:,:,:,7) = cLand_MPI(:,:,157:251);
sp6_C85_pre11(:,:,:,8) = cLand_NOR(:,:,157:251);
sp6_C85_pre11(:,:,:,9) = cLand_ASS(:,:,157:251);
sp6_C85_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251);
sp6_C85_pre11(:,:,:,11) = cLand_EC(:,:,157:251);
sp6_C85_pre11(:,1:30,:,:) = NaN;
 % change in land carbon storage over the 2006-2100
sp6_Cnet85_pre11(:,:,:,1) = cLand_BCC(:,:,157:251) - sp85_C0_M11(:,:,1);
sp6_Cnet85_pre11(:,:,:,2) = cLand_CAN(:,:,157:251)- sp85_C0_M11(:,:,2);
sp6_Cnet85_pre11(:,:,:,3) = cLand_CESM_W(:,:,157:251)- sp85_C0_M11(:,:,3);
sp6_Cnet85_pre11(:,:,:,4) = cLand_UK(:,:,157:251)- sp85_C0_M11(:,:,4);
sp6_Cnet85_pre11(:,:,:,5) = cLand_IPSL(:,:,157:251)- sp85_C0_M11(:,:,5);
sp6_Cnet85_pre11(:,:,:,6) = cLand_MIC(:,:,157:251)- sp85_C0_M11(:,:,6);
sp6_Cnet85_pre11(:,:,:,7) = cLand_MPI(:,:,157:251)- sp85_C0_M11(:,:,7);
sp6_Cnet85_pre11(:,:,:,8) = cLand_NOR(:,:,157:251)- sp85_C0_M11(:,:,8);
sp6_Cnet85_pre11(:,:,:,9) = cLand_ASS(:,:,157:251)- sp85_C0_M11(:,:,9);
sp6_Cnet85_pre11(:,:,:,10) = cLand_CNRM(:,:,157:251)- sp85_C0_M11(:,:,10);
sp6_Cnet85_pre11(:,:,:,11) = cLand_EC(:,:,157:251)- sp85_C0_M11(:,:,11);
sp6_Cnet85_pre11(:,1:30,:,:) = NaN; % get rid of the Antarctic region
clearvars -except sp26_C0_M11 sp6_C26_pre11 sp6_Cnet26_pre11 ....
                  sp45_C0_M11 sp6_C45_pre11 sp6_Cnet45_pre11 ....
                  sp85_C0_M11 sp6_C85_pre11 sp6_Cnet85_pre11

% convert model predictions to match with the global map
for M=1:11
    
    for yr = 1:95
        
        rot90map26_reC_M = rot90(sp6_Cnet26_pre11(:,:,yr,M));
        New26_reC_lefrgt_M(1:180,1:360) = NaN;
        New26_reC_lefrgt_M(:,1:180) = rot90map26_reC_M(:,181:360);
        New26_reC_lefrgt_M(:,181:360) = rot90map26_reC_M(:,1:180);
        
        rot90map45_reC_M = rot90(sp6_Cnet45_pre11(:,:,yr,M));
        New45_reC_lefrgt_M(1:180,1:360) = NaN;
        New45_reC_lefrgt_M(:,1:180) = rot90map45_reC_M(:,181:360);
        New45_reC_lefrgt_M(:,181:360) = rot90map45_reC_M(:,1:180);
        
        rot90map85_reC_M = rot90(sp6_Cnet85_pre11(:,:,yr,M));
        New85_reC_lefrgt_M(1:180,1:360) = NaN;
        New85_reC_lefrgt_M(:,1:180) = rot90map85_reC_M(:,181:360);
        New85_reC_lefrgt_M(:,181:360) = rot90map85_reC_M(:,1:180);
        
        Cnet26_YRmaps(:,:,yr) = New26_reC_lefrgt_M;
        Cnet45_YRmaps(:,:,yr) = New45_reC_lefrgt_M;
        Cnet85_YRmaps(:,:,yr) = New85_reC_lefrgt_M;   
        
        rot90map26_C_M = rot90(sp6_C26_pre11(:,:,yr,M));
        New26_C_lefrgt_M(1:180,1:360) = NaN;
        New26_C_lefrgt_M(:,1:180) = rot90map26_C_M(:,181:360);
        New26_C_lefrgt_M(:,181:360) = rot90map26_C_M(:,1:180);
        
        rot90map45_C_M = rot90(sp6_C45_pre11(:,:,yr,M));
        New45_C_lefrgt_M(1:180,1:360) = NaN;
        New45_C_lefrgt_M(:,1:180) = rot90map45_C_M(:,181:360);
        New45_C_lefrgt_M(:,181:360) = rot90map45_C_M(:,1:180);
        
        rot90map85_C_M = rot90(sp6_C85_pre11(:,:,yr,M));
        New85_C_lefrgt_M(1:180,1:360) = NaN;
        New85_C_lefrgt_M(:,1:180) = rot90map85_C_M(:,181:360);
        New85_C_lefrgt_M(:,181:360) = rot90map85_C_M(:,1:180);
        
        C26_YRmaps(:,:,yr) = New26_C_lefrgt_M;
        C45_YRmaps(:,:,yr) = New45_C_lefrgt_M;
        C85_YRmaps(:,:,yr) = New85_C_lefrgt_M; 
    end
    M
    Cnet26_maps11(:,:,:,M) = Cnet26_YRmaps;
    Cnet45_maps11(:,:,:,M) = Cnet45_YRmaps;
    Cnet85_maps11(:,:,:,M) = Cnet85_YRmaps;
    
    C26_maps11(:,:,:,M) = C26_YRmaps;
    C45_maps11(:,:,:,M) = C45_YRmaps;
    C85_maps11(:,:,:,M) = C85_YRmaps;
    
    rot90map26_C0 = rot90(sp26_C0_M11(:,:,M));
    New26_C0_lefrgt(1:180,1:360) = NaN;
    New26_C0_lefrgt(:,1:180) = rot90map26_C0(:,181:360);
    New26_C0_lefrgt(:,181:360) = rot90map26_C0(:,1:180);
        
    rot90map45_C0 = rot90(sp45_C0_M11(:,:,M));
    New45_C0_lefrgt(1:180,1:360) = NaN;
    New45_C0_lefrgt(:,1:180) = rot90map45_C0(:,181:360);
    New45_C0_lefrgt(:,181:360) = rot90map45_C0(:,1:180);
        
    rot90map85_C0 = rot90(sp85_C0_M11(:,:,M));
    New85_C0_lefrgt(1:180,1:360) = NaN;
    New85_C0_lefrgt(:,1:180) = rot90map85_C0(:,181:360);
    New85_C0_lefrgt(:,181:360) = rot90map85_C0(:,1:180);
    
    C026_maps11(:,:,M) = New26_C0_lefrgt;
    C045_maps11(:,:,M) = New45_C0_lefrgt;
    C085_maps11(:,:,M) = New85_C0_lefrgt;
end
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11
%% load CMIP6 model predictions of NPP change (reNPP) and NPP0 (the 1986-2005 mean)
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('NPP_cmip6_126.mat')
%NPP0 (the 1986-2005 mean)
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
sp26_NPP0_M11(:,1:30,:) = NaN;  % get rid of the Antarctic region
% NPP over the 2006-2100
sp26_NPP_pre11(:,:,:,1) = nppBCC_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,2) = nppCAN_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,3) = nppCESM_W_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,4) = nppUK_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,5) = nppIPSL_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,6) = nppMIC_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,7) = nppMPI_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,8) = nppNOR_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,9) = nppASS_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,10) = nppCNRM_3D(:,:,157:251);
sp26_NPP_pre11(:,:,:,11) = nppEC_3D(:,:,157:251);
sp26_NPP_pre11(:,1:30,:,:) = NaN; 
% reNPP calculated as the difference between 2006-2100 and 1987-2005
sp26_reNPP_M11(:,:,:,1) = nppBCC_3D(:,:,157:251)-sp26_NPP0_M11(:,:,1);
sp26_reNPP_M11(:,:,:,2) = nppCAN_3D(:,:,157:251)-sp26_NPP0_M11(:,:,2);
sp26_reNPP_M11(:,:,:,3) = nppCESM_W_3D(:,:,157:251)-sp26_NPP0_M11(:,:,3);
sp26_reNPP_M11(:,:,:,4) = nppUK_3D(:,:,157:251)-sp26_NPP0_M11(:,:,4);
sp26_reNPP_M11(:,:,:,5) = nppIPSL_3D(:,:,157:251)-sp26_NPP0_M11(:,:,5);
sp26_reNPP_M11(:,:,:,6) = nppMIC_3D(:,:,157:251)-sp26_NPP0_M11(:,:,6);
sp26_reNPP_M11(:,:,:,7) = nppMPI_3D(:,:,157:251)-sp26_NPP0_M11(:,:,7);
sp26_reNPP_M11(:,:,:,8) = nppNOR_3D(:,:,157:251)-sp26_NPP0_M11(:,:,8);
sp26_reNPP_M11(:,:,:,9) = nppASS_3D(:,:,157:251)-sp26_NPP0_M11(:,:,9);
sp26_reNPP_M11(:,:,:,10) = nppCNRM_3D(:,:,157:251)-sp26_NPP0_M11(:,:,10);
sp26_reNPP_M11(:,:,:,11) = nppEC_3D(:,:,157:251)-sp26_NPP0_M11(:,:,11);
sp26_reNPP_M11(:,1:30,:,:) = NaN;  % get rid of the Antarctic region
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  sp26_NPP0_M11 sp26_NPP_pre11 sp26_reNPP_M11
                  
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
sp45_NPP0_M11(:,1:30,:) = NaN; % get rid of the Antarctic region

% NPP over the 2006-2100
sp45_NPP_pre11(:,:,:,1) = nppBCC_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,2) = nppCAN_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,3) = nppCESM_W_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,4) = nppUK_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,5) = nppIPSL_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,6) = nppMIC_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,7) = nppMPI_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,8) = nppNOR_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,9) = nppASS_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,10) = nppCNRM_3D(:,:,157:251);
sp45_NPP_pre11(:,:,:,11) = nppEC_3D(:,:,157:251);
sp45_NPP_pre11(:,1:30,:,:) = NaN; 

 % reNPP over the 2081-2100
sp45_reNPP_M11(:,:,:,1) = nppBCC_3D(:,:,157:251)-sp45_NPP0_M11(:,:,1);
sp45_reNPP_M11(:,:,:,2) = nppCAN_3D(:,:,157:251)-sp45_NPP0_M11(:,:,2);
sp45_reNPP_M11(:,:,:,3) = nppCESM_W_3D(:,:,157:251)-sp45_NPP0_M11(:,:,3);
sp45_reNPP_M11(:,:,:,4) = nppUK_3D(:,:,157:251)-sp45_NPP0_M11(:,:,4);
sp45_reNPP_M11(:,:,:,5) = nppIPSL_3D(:,:,157:251)-sp45_NPP0_M11(:,:,5);
sp45_reNPP_M11(:,:,:,6) = nppMIC_3D(:,:,157:251)-sp45_NPP0_M11(:,:,6);
sp45_reNPP_M11(:,:,:,7) = nppMPI_3D(:,:,157:251)-sp45_NPP0_M11(:,:,7);
sp45_reNPP_M11(:,:,:,8) = nppNOR_3D(:,:,157:251)-sp45_NPP0_M11(:,:,8);
sp45_reNPP_M11(:,:,:,9) = nppASS_3D(:,:,157:251)-sp45_NPP0_M11(:,:,9);
sp45_reNPP_M11(:,:,:,10) = nppCNRM_3D(:,:,157:251)-sp45_NPP0_M11(:,:,10);
sp45_reNPP_M11(:,:,:,11) = nppEC_3D(:,:,157:251)-sp45_NPP0_M11(:,:,11);
sp45_reNPP_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  sp26_NPP0_M11 sp26_NPP_pre11 sp26_reNPP_M11 ...
                  sp45_NPP0_M11 sp45_NPP_pre11 sp45_reNPP_M11
              
% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('NPP_cmip6_251.mat')
% NPP over the 1987-2005
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
sp85_NPP0_M11(:,1:30,:) = NaN; % get rid of the Antarctic region

% NPP over the 2006-2100
sp85_NPP_pre11(:,:,:,1) = nppBCC_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,2) = nppCAN_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,3) = nppCESM_W_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,4) = nppUK_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,5) = nppIPSL_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,6) = nppMIC_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,7) = nppMPI_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,8) = nppNOR_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,9) = nppASS_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,10) = nppCNRM_3D(:,:,157:251);
sp85_NPP_pre11(:,:,:,11) = nppEC_3D(:,:,157:251);
sp85_NPP_pre11(:,1:30,:,:) = NaN; 

% reNPP over the 2081-2100
sp85_reNPP_M11(:,:,:,1) = nppBCC_3D(:,:,157:251)-sp85_NPP0_M11(:,:,1);
sp85_reNPP_M11(:,:,:,2) = nppCAN_3D(:,:,157:251)-sp85_NPP0_M11(:,:,2);
sp85_reNPP_M11(:,:,:,3) = nppCESM_W_3D(:,:,157:251)-sp85_NPP0_M11(:,:,3);
sp85_reNPP_M11(:,:,:,4) = nppUK_3D(:,:,157:251)-sp85_NPP0_M11(:,:,4);
sp85_reNPP_M11(:,:,:,5) = nppIPSL_3D(:,:,157:251)-sp85_NPP0_M11(:,:,5);
sp85_reNPP_M11(:,:,:,6) = nppMIC_3D(:,:,157:251)-sp85_NPP0_M11(:,:,6);
sp85_reNPP_M11(:,:,:,7) = nppMPI_3D(:,:,157:251)-sp85_NPP0_M11(:,:,7);
sp85_reNPP_M11(:,:,:,8) = nppNOR_3D(:,:,157:251)-sp85_NPP0_M11(:,:,8);
sp85_reNPP_M11(:,:,:,9) = nppASS_3D(:,:,157:251)-sp85_NPP0_M11(:,:,9);
sp85_reNPP_M11(:,:,:,10) = nppCNRM_3D(:,:,157:251)-sp85_NPP0_M11(:,:,10);
sp85_reNPP_M11(:,:,:,11) = nppEC_3D(:,:,157:251)-sp85_NPP0_M11(:,:,11);
sp85_reNPP_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  sp26_NPP0_M11 sp26_NPP_pre11 sp26_reNPP_M11 ...
                  sp45_NPP0_M11 sp45_NPP_pre11 sp45_reNPP_M11 ...
                  sp85_NPP0_M11 sp85_NPP_pre11 sp85_reNPP_M11

% convert model predictions to match with the global map
for M=1:11
    for yr = 1:95
        
        rot90map26_reNPP_M = rot90(sp26_reNPP_M11(:,:,yr,M));
        New26_reNPP_lefrgt_M(1:180,1:360) = NaN;
        New26_reNPP_lefrgt_M(:,1:180) = rot90map26_reNPP_M(:,181:360);
        New26_reNPP_lefrgt_M(:,181:360) = rot90map26_reNPP_M(:,1:180);
        
        rot90map45_reNPP_M = rot90(sp45_reNPP_M11(:,:,yr,M));
        New45_reNPP_lefrgt_M(1:180,1:360) = NaN;
        New45_reNPP_lefrgt_M(:,1:180) = rot90map45_reNPP_M(:,181:360);
        New45_reNPP_lefrgt_M(:,181:360) = rot90map45_reNPP_M(:,1:180);
        
        rot90map85_reNPP_M = rot90(sp85_reNPP_M11(:,:,yr,M));
        New85_reNPP_lefrgt_M(1:180,1:360) = NaN;
        New85_reNPP_lefrgt_M(:,1:180) = rot90map85_reNPP_M(:,181:360);
        New85_reNPP_lefrgt_M(:,181:360) = rot90map85_reNPP_M(:,1:180);
        
        reNPP26_YRmaps(:,:,yr) = New26_reNPP_lefrgt_M;
        reNPP45_YRmaps(:,:,yr) = New45_reNPP_lefrgt_M;
        reNPP85_YRmaps(:,:,yr) = New85_reNPP_lefrgt_M;
        
        rot90map26_NPP_M = rot90(sp26_NPP_pre11(:,:,yr,M));
        New26_NPP_lefrgt_M(1:180,1:360) = NaN;
        New26_NPP_lefrgt_M(:,1:180) = rot90map26_NPP_M(:,181:360);
        New26_NPP_lefrgt_M(:,181:360) = rot90map26_NPP_M(:,1:180);
        
        rot90map45_NPP_M = rot90(sp45_NPP_pre11(:,:,yr,M));
        New45_NPP_lefrgt_M(1:180,1:360) = NaN;
        New45_NPP_lefrgt_M(:,1:180) = rot90map45_NPP_M(:,181:360);
        New45_NPP_lefrgt_M(:,181:360) = rot90map45_NPP_M(:,1:180);
        
        rot90map85_NPP_M = rot90(sp85_NPP_pre11(:,:,yr,M));
        New85_NPP_lefrgt_M(1:180,1:360) = NaN;
        New85_NPP_lefrgt_M(:,1:180) = rot90map85_NPP_M(:,181:360);
        New85_NPP_lefrgt_M(:,181:360) = rot90map85_NPP_M(:,1:180);
        
        NPP26_YRmaps(:,:,yr) = New26_NPP_lefrgt_M;
        NPP45_YRmaps(:,:,yr) = New45_NPP_lefrgt_M;
        NPP85_YRmaps(:,:,yr) = New85_NPP_lefrgt_M;
        
    end
    M
    reNPP26_maps11(:,:,:,M) = reNPP26_YRmaps;
    reNPP45_maps11(:,:,:,M) = reNPP45_YRmaps;
    reNPP85_maps11(:,:,:,M) = reNPP85_YRmaps;
    
    NPP26_maps11(:,:,:,M) = NPP26_YRmaps;
    NPP45_maps11(:,:,:,M) = NPP45_YRmaps;
    NPP85_maps11(:,:,:,M) = NPP85_YRmaps;
    
    rot90map26_npp0 = rot90(sp26_NPP0_M11(:,:,M));
    New26_npp0_lefrgt(1:180,1:360) = NaN;
    New26_npp0_lefrgt(:,1:180) = rot90map26_npp0(:,181:360);
    New26_npp0_lefrgt(:,181:360) = rot90map26_npp0(:,1:180);
        
    rot90map45_npp0 = rot90(sp45_NPP0_M11(:,:,M));
    New45_npp0_lefrgt(1:180,1:360) = NaN;
    New45_npp0_lefrgt(:,1:180) = rot90map45_npp0(:,181:360);
    New45_npp0_lefrgt(:,181:360) = rot90map45_npp0(:,1:180);
        
    rot90map85_npp0 = rot90(sp85_NPP0_M11(:,:,M));
    New85_npp0_lefrgt(1:180,1:360) = NaN;
    New85_npp0_lefrgt(:,1:180) = rot90map85_npp0(:,181:360);
    New85_npp0_lefrgt(:,181:360) = rot90map85_npp0(:,1:180);
    
    NPP026_maps11(:,:,M) = New26_npp0_lefrgt;
    NPP045_maps11(:,:,M) = New45_npp0_lefrgt;
    NPP085_maps11(:,:,M) = New85_npp0_lefrgt;
     
end

clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11
              
%% load CMIP6 model predictions of tuaE change (reTuaE) and TuaE0 (the 1986-2005 mean)
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
% reTauE calculated as the difference between 2006-2100 and 1987-2005 mean
sp26_reTauE_M11(:,:,:,1) = tuaEbcc_3D(:,:,157:251)-sp26_tauE0_M11(:,:,1);
sp26_reTauE_M11(:,:,:,2) = tuaEcan_3D(:,:,157:251)-sp26_tauE0_M11(:,:,2);
sp26_reTauE_M11(:,:,:,3) = tuaEcesm_W_3D(:,:,157:251)-sp26_tauE0_M11(:,:,3);
sp26_reTauE_M11(:,:,:,4) = tuaEuk_3D(:,:,157:251)-sp26_tauE0_M11(:,:,4);
sp26_reTauE_M11(:,:,:,5) = tuaEipsl_3D(:,:,157:251)-sp26_tauE0_M11(:,:,5);
sp26_reTauE_M11(:,:,:,6) = tuaEmic_3D(:,:,157:251)-sp26_tauE0_M11(:,:,6);
sp26_reTauE_M11(:,:,:,7) = tuaEmpi_3D(:,:,157:251)-sp26_tauE0_M11(:,:,7);
sp26_reTauE_M11(:,:,:,8) = tuaEnor_3D(:,:,157:251)-sp26_tauE0_M11(:,:,8);
sp26_reTauE_M11(:,:,:,9) = tuaEass_3D(:,:,157:251)-sp26_tauE0_M11(:,:,9);
sp26_reTauE_M11(:,:,:,10) = tuaEcnrm_3D(:,:,157:251)-sp26_tauE0_M11(:,:,10);
sp26_reTauE_M11(:,:,:,11) = tuaEec_3D(:,:,157:251)-sp26_tauE0_M11(:,:,11);
sp26_reTauE_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  sp26_tauE0_M11 sp26_reTauE_M11
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('tuaE_cmip6_245.mat')
% tauE over 1987-2005
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
% reTauE calculated as the difference between 2006-2100 and 1987-2005 mean
sp45_reTauE_M11(:,:,:,1) = tuaEbcc_3D(:,:,157:251)-sp45_tauE0_M11(:,:,1);
sp45_reTauE_M11(:,:,:,2) = tuaEcan_3D(:,:,157:251)-sp45_tauE0_M11(:,:,2);
sp45_reTauE_M11(:,:,:,3) = tuaEcesm_W_3D(:,:,157:251)-sp45_tauE0_M11(:,:,3);
sp45_reTauE_M11(:,:,:,4) = tuaEuk_3D(:,:,157:251)-sp45_tauE0_M11(:,:,4);
sp45_reTauE_M11(:,:,:,5) = tuaEipsl_3D(:,:,157:251)-sp45_tauE0_M11(:,:,5);
sp45_reTauE_M11(:,:,:,6) = tuaEmic_3D(:,:,157:251)-sp45_tauE0_M11(:,:,6);
sp45_reTauE_M11(:,:,:,7) = tuaEmpi_3D(:,:,157:251)-sp45_tauE0_M11(:,:,7);
sp45_reTauE_M11(:,:,:,8) = tuaEnor_3D(:,:,157:251)-sp45_tauE0_M11(:,:,8);
sp45_reTauE_M11(:,:,:,9) = tuaEass_3D(:,:,157:251)-sp45_tauE0_M11(:,:,9);
sp45_reTauE_M11(:,:,:,10) = tuaEcnrm_3D(:,:,157:251)-sp45_tauE0_M11(:,:,10);
sp45_reTauE_M11(:,:,:,11) = tuaEec_3D(:,:,157:251)-sp45_tauE0_M11(:,:,11);
sp45_reTauE_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  sp26_tauE0_M11 sp26_reTauE_M11 ...
                  sp45_tauE0_M11 sp45_reTauE_M11

% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('tuaE_cmip6_251.mat') 
% tauE over 1987-2005
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
% reTauE calculated as the difference between 2006-2100 and 1987-2005 mean
sp85_reTauE_M11(:,:,:,1) = tuaEbcc_3D(:,:,157:251)-sp85_tauE0_M11(:,:,1);
sp85_reTauE_M11(:,:,:,2) = tuaEcan_3D(:,:,157:251)-sp85_tauE0_M11(:,:,2);
sp85_reTauE_M11(:,:,:,3) = tuaEcesm_W_3D(:,:,157:251)-sp85_tauE0_M11(:,:,3);
sp85_reTauE_M11(:,:,:,4) = tuaEuk_3D(:,:,157:251)-sp85_tauE0_M11(:,:,4);
sp85_reTauE_M11(:,:,:,5) = tuaEipsl_3D(:,:,157:251)-sp85_tauE0_M11(:,:,5);
sp85_reTauE_M11(:,:,:,6) = tuaEmic_3D(:,:,157:251)-sp85_tauE0_M11(:,:,6);
sp85_reTauE_M11(:,:,:,7) = tuaEmpi_3D(:,:,157:251)-sp85_tauE0_M11(:,:,7);
sp85_reTauE_M11(:,:,:,8) = tuaEnor_3D(:,:,157:251)-sp85_tauE0_M11(:,:,8);
sp85_reTauE_M11(:,:,:,9) = tuaEass_3D(:,:,157:251)-sp85_tauE0_M11(:,:,9);
sp85_reTauE_M11(:,:,:,10) = tuaEcnrm_3D(:,:,157:251)-sp85_tauE0_M11(:,:,10);
sp85_reTauE_M11(:,:,:,11) = tuaEec_3D(:,:,157:251)-sp85_tauE0_M11(:,:,11);
sp85_reTauE_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  sp26_tauE0_M11 sp26_reTauE_M11 ...
                  sp45_tauE0_M11 sp45_reTauE_M11 ...
                  sp85_tauE0_M11 sp85_reTauE_M11              
% convert model predictions to match with the global map
for M=1:11
    for yr = 1:95
        
        rot90map26_reTauE_M = rot90(sp26_reTauE_M11(:,:,yr,M));
        New26_reTauE_lefrgt_M(1:180,1:360) = NaN;
        New26_reTauE_lefrgt_M(:,1:180) = rot90map26_reTauE_M(:,181:360);
        New26_reTauE_lefrgt_M(:,181:360) = rot90map26_reTauE_M(:,1:180);
        
        rot90map45_reTauE_M = rot90(sp45_reTauE_M11(:,:,yr,M));
        New45_reTauE_lefrgt_M(1:180,1:360) = NaN;
        New45_reTauE_lefrgt_M(:,1:180) = rot90map45_reTauE_M(:,181:360);
        New45_reTauE_lefrgt_M(:,181:360) = rot90map45_reTauE_M(:,1:180);
        
        rot90map85_reTauE_M = rot90(sp85_reTauE_M11(:,:,yr,M));
        New85_reTauE_lefrgt_M(1:180,1:360) = NaN;
        New85_reTauE_lefrgt_M(:,1:180) = rot90map85_reTauE_M(:,181:360);
        New85_reTauE_lefrgt_M(:,181:360) = rot90map85_reTauE_M(:,1:180);
        
        reTauE26_YRmaps(:,:,yr) = New26_reTauE_lefrgt_M;
        reTauE45_YRmaps(:,:,yr) = New45_reTauE_lefrgt_M;
        reTauE85_YRmaps(:,:,yr) = New85_reTauE_lefrgt_M;   
    end
    M
    reTauE26_maps11(:,:,:,M) = reTauE26_YRmaps;
    reTauE45_maps11(:,:,:,M) = reTauE45_YRmaps;
    reTauE85_maps11(:,:,:,M) = reTauE85_YRmaps;
    
    rot90map26_tauE0 = rot90(sp26_tauE0_M11(:,:,M));
    New26_tauE0_lefrgt(1:180,1:360) = NaN;
    New26_tauE0_lefrgt(:,1:180) = rot90map26_tauE0(:,181:360);
    New26_tauE0_lefrgt(:,181:360) = rot90map26_tauE0(:,1:180);
        
    rot90map45_tauE0 = rot90(sp45_tauE0_M11(:,:,M));
    New45_tauE0_lefrgt(1:180,1:360) = NaN;
    New45_tauE0_lefrgt(:,1:180) = rot90map45_tauE0(:,181:360);
    New45_tauE0_lefrgt(:,181:360) = rot90map45_tauE0(:,1:180);
        
    rot90map85_tauE0 = rot90(sp85_tauE0_M11(:,:,M));
    New85_tauE0_lefrgt(1:180,1:360) = NaN;
    New85_tauE0_lefrgt(:,1:180) = rot90map85_tauE0(:,181:360);
    New85_tauE0_lefrgt(:,181:360) = rot90map85_tauE0(:,1:180);
    
    tauE026_maps11(:,:,M) = New26_tauE0_lefrgt;
    tauE045_maps11(:,:,M) = New45_tauE0_lefrgt;
    tauE085_maps11(:,:,M) = New85_tauE0_lefrgt;
end
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11               
%% estimate CMIP6 model predictions of Xc change (reXc) at the end of 21th century
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('Xc_cmip6_126.mat')
% the Xc0 (1987-2005 mean)
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
% Xc over 2006-2100
sp26_Xc_pre11(:,:,:,1) = XcBcc_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,2) = XcCan_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,3) = XcCesm_W_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,4) = XcUk_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,5) = XcIpsl_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,6) = XcMic_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,7) = XcMpi_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,8) = XcNor_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,9) = XcAss_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,10) = XcCnrm_3D(:,:,157:251);
sp26_Xc_pre11(:,:,:,11) = XcEc_3D(:,:,157:251);
sp26_Xc_pre11(:,1:30,:,:) = NaN; 

% reXc calculated as the difference between 2006-2100 and 1987-2005 mean
sp26_reXc_M11(:,:,:,1) = XcBcc_3D(:,:,157:251)-sp26_Xc0_M11(:,:,1);
sp26_reXc_M11(:,:,:,2) = XcCan_3D(:,:,157:251)-sp26_Xc0_M11(:,:,2);
sp26_reXc_M11(:,:,:,3) = XcCesm_W_3D(:,:,157:251)-sp26_Xc0_M11(:,:,3);
sp26_reXc_M11(:,:,:,4) = XcUk_3D(:,:,157:251)-sp26_Xc0_M11(:,:,4);
sp26_reXc_M11(:,:,:,5) = XcIpsl_3D(:,:,157:251)-sp26_Xc0_M11(:,:,5);
sp26_reXc_M11(:,:,:,6) = XcMic_3D(:,:,157:251)-sp26_Xc0_M11(:,:,6);
sp26_reXc_M11(:,:,:,7) = XcMpi_3D(:,:,157:251)-sp26_Xc0_M11(:,:,7);
sp26_reXc_M11(:,:,:,8) = XcNor_3D(:,:,157:251)-sp26_Xc0_M11(:,:,8);
sp26_reXc_M11(:,:,:,9) = XcAss_3D(:,:,157:251)-sp26_Xc0_M11(:,:,9);
sp26_reXc_M11(:,:,:,10) = XcCnrm_3D(:,:,157:251)-sp26_Xc0_M11(:,:,10);
sp26_reXc_M11(:,:,:,11) = XcEc_3D(:,:,157:251)-sp26_Xc0_M11(:,:,11);
sp26_reXc_M11(:,1:30,:,:) = NaN;              
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  sp26_Xc0_M11 sp26_Xc_pre11  sp26_reXc_M11 

% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('Xc_cmip6_245.mat')
% the Xc0 (1987-2005 mean)
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
% Xc over 2006-2100
sp45_Xc_pre11(:,:,:,1) = XcBcc_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,2) = XcCan_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,3) = XcCesm_W_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,4) = XcUk_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,5) = XcIpsl_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,6) = XcMic_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,7) = XcMpi_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,8) = XcNor_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,9) = XcAss_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,10) = XcCnrm_3D(:,:,157:251);
sp45_Xc_pre11(:,:,:,11) = XcEc_3D(:,:,157:251);
sp45_Xc_pre11(:,1:30,:,:) = NaN; 

% reXc calculated as the difference between 2006-2100 and 1987-2005 mean
sp45_reXc_M11(:,:,:,1) = XcBcc_3D(:,:,157:251)-sp45_Xc0_M11(:,:,1);
sp45_reXc_M11(:,:,:,2) = XcCan_3D(:,:,157:251)-sp45_Xc0_M11(:,:,2);
sp45_reXc_M11(:,:,:,3) = XcCesm_W_3D(:,:,157:251)-sp45_Xc0_M11(:,:,3);
sp45_reXc_M11(:,:,:,4) = XcUk_3D(:,:,157:251)-sp45_Xc0_M11(:,:,4);
sp45_reXc_M11(:,:,:,5) = XcIpsl_3D(:,:,157:251)-sp45_Xc0_M11(:,:,5);
sp45_reXc_M11(:,:,:,6) = XcMic_3D(:,:,157:251)-sp45_Xc0_M11(:,:,6);
sp45_reXc_M11(:,:,:,7) = XcMpi_3D(:,:,157:251)-sp45_Xc0_M11(:,:,7);
sp45_reXc_M11(:,:,:,8) = XcNor_3D(:,:,157:251)-sp45_Xc0_M11(:,:,8);
sp45_reXc_M11(:,:,:,9) = XcAss_3D(:,:,157:251)-sp45_Xc0_M11(:,:,9);
sp45_reXc_M11(:,:,:,10) = XcCnrm_3D(:,:,157:251)-sp45_Xc0_M11(:,:,10);
sp45_reXc_M11(:,:,:,11) = XcEc_3D(:,:,157:251)-sp45_Xc0_M11(:,:,11);
sp45_reXc_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  sp26_Xc0_M11 sp26_Xc_pre11  sp26_reXc_M11 ...
                  sp45_Xc0_M11 sp45_Xc_pre11  sp45_reXc_M11
% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('Xc_cmip6_251.mat')
% the Xc0 (1987-2005 mean)
sp85_Xc_hist11(:,:,:,1) = XcBcc_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,2) = XcCan_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,3) = XcCesm_W_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,4) = XcUk_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,5) = XcIpsl_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,6) = XcMic_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,7) = XcMpi_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,8) = XcNor_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,9) = XcAss_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,10) = XcCnrm_3D(:,:,137:156);
sp85_Xc_hist11(:,:,:,11) = XcEc_3D(:,:,137:156);
sp85_Xc0_M11 = nanmean(sp85_Xc_hist11,3);
sp85_Xc0_M11 = squeeze(sp85_Xc0_M11);
sp85_Xc0_M11(:,1:30,:) = NaN; 
% Xc over 2006-2100
sp85_Xc_pre11(:,:,:,1) = XcBcc_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,2) = XcCan_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,3) = XcCesm_W_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,4) = XcUk_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,5) = XcIpsl_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,6) = XcMic_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,7) = XcMpi_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,8) = XcNor_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,9) = XcAss_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,10) = XcCnrm_3D(:,:,157:251);
sp85_Xc_pre11(:,:,:,11) = XcEc_3D(:,:,157:251);
sp85_Xc_pre11(:,1:30,:,:) = NaN; 
% reXc calculated as the difference between 2006-2100 and 1987-2005 mean
sp85_reXc_M11(:,:,:,1) = XcBcc_3D(:,:,157:251)-sp85_Xc0_M11(:,:,1);
sp85_reXc_M11(:,:,:,2) = XcCan_3D(:,:,157:251)-sp85_Xc0_M11(:,:,2);
sp85_reXc_M11(:,:,:,3) = XcCesm_W_3D(:,:,157:251)-sp85_Xc0_M11(:,:,3);
sp85_reXc_M11(:,:,:,4) = XcUk_3D(:,:,157:251)-sp85_Xc0_M11(:,:,4);
sp85_reXc_M11(:,:,:,5) = XcIpsl_3D(:,:,157:251)-sp85_Xc0_M11(:,:,5);
sp85_reXc_M11(:,:,:,6) = XcMic_3D(:,:,157:251)-sp85_Xc0_M11(:,:,6);
sp85_reXc_M11(:,:,:,7) = XcMpi_3D(:,:,157:251)-sp85_Xc0_M11(:,:,7);
sp85_reXc_M11(:,:,:,8) = XcNor_3D(:,:,157:251)-sp85_Xc0_M11(:,:,8);
sp85_reXc_M11(:,:,:,9) = XcAss_3D(:,:,157:251)-sp85_Xc0_M11(:,:,9);
sp85_reXc_M11(:,:,:,10) = XcCnrm_3D(:,:,157:251)-sp85_Xc0_M11(:,:,10);
sp85_reXc_M11(:,:,:,11) = XcEc_3D(:,:,157:251)-sp85_Xc0_M11(:,:,11);
sp85_reXc_M11(:,1:30,:,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  sp26_Xc0_M11 sp26_Xc_pre11  sp26_reXc_M11 ...
                  sp45_Xc0_M11 sp45_Xc_pre11  sp45_reXc_M11 ...
                  sp85_Xc0_M11 sp85_Xc_pre11  sp85_reXc_M11

% convert model outputs to match with the global map
for M=1:11
    for yr = 1:95
        
        rot90map26_reXc_M = rot90(sp26_reXc_M11(:,:,yr,M));
        New26_reXc_lefrgt_M(1:180,1:360) = NaN;
        New26_reXc_lefrgt_M(:,1:180) = rot90map26_reXc_M(:,181:360);
        New26_reXc_lefrgt_M(:,181:360) = rot90map26_reXc_M(:,1:180);
        
        rot90map45_rXc_M = rot90(sp45_reXc_M11(:,:,yr,M));
        New45_reXc_lefrgt_M(1:180,1:360) = NaN;
        New45_reXc_lefrgt_M(:,1:180) = rot90map45_rXc_M(:,181:360);
        New45_reXc_lefrgt_M(:,181:360) = rot90map45_rXc_M(:,1:180);
        
        rot90map85_reXc_M = rot90(sp85_reXc_M11(:,:,yr,M));
        New85_reXc_lefrgt_M(1:180,1:360) = NaN;
        New85_reXc_lefrgt_M(:,1:180) = rot90map85_reXc_M(:,181:360);
        New85_reXc_lefrgt_M(:,181:360) = rot90map85_reXc_M(:,1:180);
        
        reXc26_YRmaps(:,:,yr) = New26_reXc_lefrgt_M;
        reXc45_YRmaps(:,:,yr) = New45_reXc_lefrgt_M;
        reXc85_YRmaps(:,:,yr) = New85_reXc_lefrgt_M;   
        
        rot90map26_Xc_M = rot90(sp26_Xc_pre11(:,:,yr,M));
        New26_Xc_lefrgt_M(1:180,1:360) = NaN;
        New26_Xc_lefrgt_M(:,1:180) = rot90map26_Xc_M(:,181:360);
        New26_Xc_lefrgt_M(:,181:360) = rot90map26_Xc_M(:,1:180);
        
        rot90map45_Xc_M = rot90(sp45_Xc_pre11(:,:,yr,M));
        New45_Xc_lefrgt_M(1:180,1:360) = NaN;
        New45_Xc_lefrgt_M(:,1:180) = rot90map45_Xc_M(:,181:360);
        New45_Xc_lefrgt_M(:,181:360) = rot90map45_Xc_M(:,1:180);
        
        rot90map85_Xc_M = rot90(sp85_Xc_pre11(:,:,yr,M));
        New85_Xc_lefrgt_M(1:180,1:360) = NaN;
        New85_Xc_lefrgt_M(:,1:180) = rot90map85_Xc_M(:,181:360);
        New85_Xc_lefrgt_M(:,181:360) = rot90map85_Xc_M(:,1:180);
        
        Xc26_YRmaps(:,:,yr) = New26_Xc_lefrgt_M;
        Xc45_YRmaps(:,:,yr) = New45_Xc_lefrgt_M;
        Xc85_YRmaps(:,:,yr) = New85_Xc_lefrgt_M; 
        
    end
    M
    reXc26_maps11(:,:,:,M) = reXc26_YRmaps;
    reXc45_maps11(:,:,:,M) = reXc45_YRmaps;
    reXc85_maps11(:,:,:,M) = reXc85_YRmaps;
    
    Xc26_maps11(:,:,:,M) = Xc26_YRmaps;
    Xc45_maps11(:,:,:,M) = Xc45_YRmaps;
    Xc85_maps11(:,:,:,M) = Xc85_YRmaps;
    
    rot90map26_Xc0 = rot90(sp26_Xc0_M11(:,:,M));
    New26_Xc0_lefrgt(1:180,1:360) = NaN;
    New26_Xc0_lefrgt(:,1:180) = rot90map26_Xc0(:,181:360);
    New26_Xc0_lefrgt(:,181:360) = rot90map26_Xc0(:,1:180);
        
    rot90map45_Xc0 = rot90(sp45_Xc0_M11(:,:,M));
    New45_Xc0_lefrgt(1:180,1:360) = NaN;
    New45_Xc0_lefrgt(:,1:180) = rot90map45_Xc0(:,181:360);
    New45_Xc0_lefrgt(:,181:360) = rot90map45_Xc0(:,1:180);
        
    rot90map85_Xc0 = rot90(sp85_Xc0_M11(:,:,M));
    New85_Xc0_lefrgt(1:180,1:360) = NaN;
    New85_Xc0_lefrgt(:,1:180) = rot90map85_Xc0(:,181:360);
    New85_Xc0_lefrgt(:,181:360) = rot90map85_Xc0(:,1:180);
    
    Xc026_maps11(:,:,M) = New26_Xc0_lefrgt;
    Xc045_maps11(:,:,M) = New45_Xc0_lefrgt;
    Xc085_maps11(:,:,M) = New85_Xc0_lefrgt;
end

clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc26_maps11  reXc26_maps11 ...
                  Xc045_maps11 Xc45_maps11  reXc45_maps11 ...
                  Xc085_maps11 Xc85_maps11  reXc85_maps11              
              
%% estimate CMIP6 model predictions of Xp change (reXp) 
% ssp126
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp126')
load('Xp_cmip6_126.mat')
% load the Xp0 (1987-2005 mean)
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

% reXp calculated as the difference between 2006-2100 and 1987-2005 mean
sp26_reXp_M11(:,:,:,1) = XpBcc_3D(:,:,157:251)-sp26_Xp0_M11(:,:,1);
sp26_reXp_M11(:,:,:,2) = XpCan_3D(:,:,157:251)-sp26_Xp0_M11(:,:,2);
sp26_reXp_M11(:,:,:,3) = XpCesm_W_3D(:,:,157:251)-sp26_Xp0_M11(:,:,3);
sp26_reXp_M11(:,:,:,4) = XpUk_3D(:,:,157:251)-sp26_Xp0_M11(:,:,4);
sp26_reXp_M11(:,:,:,5) = XpIpsl_3D(:,:,157:251)-sp26_Xp0_M11(:,:,5);
sp26_reXp_M11(:,:,:,6) = XpMic_3D(:,:,157:251)-sp26_Xp0_M11(:,:,6);
sp26_reXp_M11(:,:,:,7) = XpMpi_3D(:,:,157:251)-sp26_Xp0_M11(:,:,7);
sp26_reXp_M11(:,:,:,8) = XpNor_3D(:,:,157:251)-sp26_Xp0_M11(:,:,8);
sp26_reXp_M11(:,:,:,9) = XpAss_3D(:,:,157:251)-sp26_Xp0_M11(:,:,9);
sp26_reXp_M11(:,:,:,10) = XpCnrm_3D(:,:,157:251)-sp26_Xp0_M11(:,:,10);
sp26_reXp_M11(:,:,:,11) = XpEc_3D(:,:,157:251)-sp26_Xp0_M11(:,:,11);
sp26_reXp_M11(:,1:30,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc26_maps11  reXc26_maps11 ...
                  Xc045_maps11 Xc45_maps11  reXc45_maps11 ...
                  Xc085_maps11 Xc85_maps11  reXc85_maps11 ...
                  sp26_Xp0_M11   sp26_reXp_M11 
% ssp245             
cd('G:\CMIP56_Csink\4_MatData\spatial_data\ssp245')
load('Xp_cmip6_245.mat')
% load the Xp0 (1987-2005 mean)
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

% reXp calculated as the difference between 2006-2100 and 1987-2005 mean
sp45_reXp_M11(:,:,:,1) = XpBcc_3D(:,:,157:251)-sp45_Xp0_M11(:,:,1);
sp45_reXp_M11(:,:,:,2) = XpCan_3D(:,:,157:251)-sp45_Xp0_M11(:,:,2);
sp45_reXp_M11(:,:,:,3) = XpCesm_W_3D(:,:,157:251)-sp45_Xp0_M11(:,:,3);
sp45_reXp_M11(:,:,:,4) = XpUk_3D(:,:,157:251)-sp45_Xp0_M11(:,:,4);
sp45_reXp_M11(:,:,:,5) = XpIpsl_3D(:,:,157:251)-sp45_Xp0_M11(:,:,5);
sp45_reXp_M11(:,:,:,6) = XpMic_3D(:,:,157:251)-sp45_Xp0_M11(:,:,6);
sp45_reXp_M11(:,:,:,7) = XpMpi_3D(:,:,157:251)-sp45_Xp0_M11(:,:,7);
sp45_reXp_M11(:,:,:,8) = XpNor_3D(:,:,157:251)-sp45_Xp0_M11(:,:,8);
sp45_reXp_M11(:,:,:,9) = XpAss_3D(:,:,157:251)-sp45_Xp0_M11(:,:,9);
sp45_reXp_M11(:,:,:,10) = XpCnrm_3D(:,:,157:251)-sp45_Xp0_M11(:,:,10);
sp45_reXp_M11(:,:,:,11) = XpEc_3D(:,:,157:251)-sp45_Xp0_M11(:,:,11);
sp45_reXp_M11(:,1:30,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc26_maps11  reXc26_maps11 ...
                  Xc045_maps11 Xc45_maps11  reXc45_maps11 ...
                  Xc085_maps11 Xc85_maps11  reXc85_maps11 ...
                  sp26_Xp0_M11   sp26_reXp_M11 ...
                  sp45_Xp0_M11   sp45_reXp_M11
% ssp585
cd('G:\CMIP56_Csink\4_MatData\spatial_data\hist_ssp585')
load('Xp_cmip6_251.mat')
% load the Xp0 (1987-2005 mean)
sp85_Xp_hist11(:,:,:,1) = XpBcc_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,2) = XpCan_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,3) = XpCesm_W_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,4) = XpUk_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,5) = XpIpsl_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,6) = XpMic_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,7) = XpMpi_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,8) = XpNor_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,9) = XpAss_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,10) = XpCnrm_3D(:,:,137:156);
sp85_Xp_hist11(:,:,:,11) = XpEc_3D(:,:,137:156);
sp85_Xp0_M11 = nanmean(sp85_Xp_hist11,3);
sp85_Xp0_M11 = squeeze(sp85_Xp0_M11);
sp85_Xp0_M11(:,1:30,:) = NaN; 
% reXp calculated as the difference between 2006-2100 and 1987-2005 mean
sp85_reXp_M11(:,:,:,1) = XpBcc_3D(:,:,157:251)-sp85_Xp0_M11(:,:,1);
sp85_reXp_M11(:,:,:,2) = XpCan_3D(:,:,157:251)-sp85_Xp0_M11(:,:,2);
sp85_reXp_M11(:,:,:,3) = XpCesm_W_3D(:,:,157:251)-sp85_Xp0_M11(:,:,3);
sp85_reXp_M11(:,:,:,4) = XpUk_3D(:,:,157:251)-sp85_Xp0_M11(:,:,4);
sp85_reXp_M11(:,:,:,5) = XpIpsl_3D(:,:,157:251)-sp85_Xp0_M11(:,:,5);
sp85_reXp_M11(:,:,:,6) = XpMic_3D(:,:,157:251)-sp85_Xp0_M11(:,:,6);
sp85_reXp_M11(:,:,:,7) = XpMpi_3D(:,:,157:251)-sp85_Xp0_M11(:,:,7);
sp85_reXp_M11(:,:,:,8) = XpNor_3D(:,:,157:251)-sp85_Xp0_M11(:,:,8);
sp85_reXp_M11(:,:,:,9) = XpAss_3D(:,:,157:251)-sp85_Xp0_M11(:,:,9);
sp85_reXp_M11(:,:,:,10) = XpCnrm_3D(:,:,157:251)-sp85_Xp0_M11(:,:,10);
sp85_reXp_M11(:,:,:,11) = XpEc_3D(:,:,157:251)-sp85_Xp0_M11(:,:,11);
sp85_reXp_M11(:,1:30,:) = NaN; 
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc26_maps11  reXc26_maps11 ...
                  Xc045_maps11 Xc45_maps11  reXc45_maps11 ...
                  Xc085_maps11 Xc85_maps11  reXc85_maps11 ...
                  sp26_Xp0_M11   sp26_reXp_M11 ...
                  sp45_Xp0_M11   sp45_reXp_M11 ...
                  sp85_Xp0_M11   sp85_reXp_M11
% convert model outputs to match with the global map
for M=1:11
    for yr = 1:95
        
        rot90map26_reXp_M = rot90(sp26_reXp_M11(:,:,yr,M));
        New26_reXp_lefrgt_M(1:180,1:360) = NaN;
        New26_reXp_lefrgt_M(:,1:180) = rot90map26_reXp_M(:,181:360);
        New26_reXp_lefrgt_M(:,181:360) = rot90map26_reXp_M(:,1:180);
        
        rot90map45_rXp_M = rot90(sp45_reXp_M11(:,:,yr,M));
        New45_reXp_lefrgt_M(1:180,1:360) = NaN;
        New45_reXp_lefrgt_M(:,1:180) = rot90map45_rXp_M(:,181:360);
        New45_reXp_lefrgt_M(:,181:360) = rot90map45_rXp_M(:,1:180);
        
        rot90map85_reXp_M = rot90(sp85_reXp_M11(:,:,yr,M));
        New85_reXp_lefrgt_M(1:180,1:360) = NaN;
        New85_reXp_lefrgt_M(:,1:180) = rot90map85_reXp_M(:,181:360);
        New85_reXp_lefrgt_M(:,181:360) = rot90map85_reXp_M(:,1:180);
        
        reXp26_YRmaps(:,:,yr) = New26_reXp_lefrgt_M;
        reXp45_YRmaps(:,:,yr) = New45_reXp_lefrgt_M;
        reXp85_YRmaps(:,:,yr) = New85_reXp_lefrgt_M;   
    end
    M
    reXp26_maps11(:,:,:,M) = reXp26_YRmaps;
    reXp45_maps11(:,:,:,M) = reXp45_YRmaps;
    reXp85_maps11(:,:,:,M) = reXp85_YRmaps;
    
end
clearvars -except C026_maps11 C26_maps11 Cnet26_maps11 ....
                  C045_maps11 C45_maps11 Cnet45_maps11 ....
                  C085_maps11 C85_maps11 Cnet85_maps11 ...
                  NPP026_maps11 NPP26_maps11 reNPP26_maps11 ...
                  NPP045_maps11 NPP45_maps11 reNPP45_maps11 ...
                  NPP085_maps11 NPP85_maps11 reNPP85_maps11 ...
                  tauE026_maps11 reTauE26_maps11 ...
                  tauE045_maps11 reTauE45_maps11 ...
                  tauE085_maps11 reTauE85_maps11 ...
                  Xc026_maps11 Xc26_maps11  reXc26_maps11 ...
                  Xc045_maps11 Xc45_maps11  reXc45_maps11 ...
                  Xc085_maps11 Xc85_maps11  reXc85_maps11 ...
                  reXp26_maps11 reXp45_maps11 reXp85_maps11
              
% load the map1:  the mask of robust change in land carbon storage
% and the map3: the mask of uncertain change in land carbon storage
% ssp126
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp1-2.6\Cnet')
map1_26 = csvread('mapR1_0.6_26.csv'); 
map3_26 = csvread('map3_frac05_r02_26.csv'); 
% ssp245
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp2-4.5\Cnet')  
map1_45 = csvread('mapR1_0.6_45.csv');         % the mask of robust change in land carbon storage
map3_45 = csvread('map3_frac05_r02_45.csv');     % the mask of uncertain change in land carbon storage
% ssp585
cd('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\2_Codes_matdata\ssp5-5.8\Cnet')
map1_85 = csvread('mapR1_0.6_85.csv');         % the mask of robust change in land carbon storage
map3_85 = csvread('map3_frac05_r02_85.csv');      % the mask of uncertain change in land carbon storage

%save E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures3\MFigure4\data4Figure4.mat              
%% mask of the robust region   

C026_bstMap11 = C026_maps11.*map1_26;  % unit: KgC m-2
C045_bstMap11 = C045_maps11.*map1_45;  % unit: KgC m-2
C085_bstMap11 = C085_maps11.*map1_85;  % unit: KgC m-2

C26_bstMap11 = C26_maps11.*map1_26;  % unit: KgC m-2
C45_bstMap11 = C45_maps11.*map1_45;
C85_bstMap11 = C85_maps11.*map1_85; 

Cnet26_bstMap11 = Cnet26_maps11.*map1_26;  % unit: KgC m-2
Cnet45_bstMap11 = Cnet45_maps11.*map1_45;
Cnet85_bstMap11 = Cnet85_maps11.*map1_85; 

NPP026_bstMap11 = NPP026_maps11.*map1_26; % unit: KgC m-2 yr-1
NPP045_bstMap11 = NPP045_maps11.*map1_45;
NPP085_bstMap11 = NPP085_maps11.*map1_85; 

NPP26_bstMap11 = NPP26_maps11.*map1_26; % unit: KgC m-2 yr-1
NPP45_bstMap11 = NPP45_maps11.*map1_45;
NPP85_bstMap11 = NPP85_maps11.*map1_85; 

reNPP26_bstMap11 = reNPP26_maps11.*map1_26; % unit: KgC m-2 yr-1
reNPP45_bstMap11 = reNPP45_maps11.*map1_45;
reNPP85_bstMap11 = reNPP85_maps11.*map1_85;  

tuaE026_bstMap11 = tauE026_maps11.*map1_26; % unit: years
tuaE045_bstMap11 = tauE045_maps11.*map1_45;
tuaE085_bstMap11 = tauE085_maps11.*map1_85; 

reTuaE26_bstMap11 = reTauE26_maps11.*map1_26; % unit: years
reTuaE45_bstMap11 = reTauE45_maps11.*map1_45;
reTuaE85_bstMap11= reTauE85_maps11.*map1_85; 
                  
Xc026_bstMap11 = Xc026_maps11.*map1_26;    % unit: KgC m-2
Xc045_bstMap11 = Xc045_maps11.*map1_45;    
Xc085_bstMap11 = Xc085_maps11.*map1_85; 

Xc26_bstMap11 = Xc26_maps11.*map1_26;    % unit: KgC m-2
Xc45_bstMap11 = Xc45_maps11.*map1_45; 
Xc85_bstMap11 = Xc85_maps11.*map1_85;

reXc26_bstMap11 = reXc26_maps11.*map1_26;   % unit: KgC m-2
reXc45_bstMap11 = reXc45_maps11.*map1_45; 
reXc85_bstMap11 = reXc85_maps11.*map1_85;

reXp26_bstMap11 = reXp26_maps11.*map1_26; % unit: KgC m-2
reXp45_bstMap11 = reXp45_maps11.*map1_45;
reXp85_bstMap11 = reXp85_maps11.*map1_85; 

%
cellarea1 = xlsread('E:\1_Mycase\4_NetC_Robustness_cmip6\writing\1_MainFigures\v2-Figure4\area1бу.csv');  % unit:km2 = 10^6 m2

C026_PgC_M11_bst = C026_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C026_PgC_gbBST = nansum(C026_PgC_M11_bst,1); C026_PgC_gbBST = nansum(C026_PgC_gbBST,2); 
C026_PgC_gbBST = squeeze(C026_PgC_gbBST)
C26_PgC_M11_bst = C26_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C26_PgC_gbBST = nansum(C26_PgC_M11_bst,1); C26_PgC_gbBST = nansum(C26_PgC_gbBST,2); 
C26_PgC_gbBST = squeeze(C26_PgC_gbBST)

C045_PgC_M11_bst = C045_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C045_PgC_gbBST = nansum(C045_PgC_M11_bst,1); C045_PgC_gbBST = nansum(C045_PgC_gbBST,2); 
C045_PgC_gbBST = squeeze(C045_PgC_gbBST)
C45_PgC_M11_bst = C45_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C45_PgC_gbBST = nansum(C45_PgC_M11_bst,1); C45_PgC_gbBST = nansum(C45_PgC_gbBST,2); 
C45_PgC_gbBST = squeeze(C45_PgC_gbBST)

C085_PgC_M11_bst = C085_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C085_PgC_gbBST = nansum(C085_PgC_M11_bst,1); C085_PgC_gbBST = nansum(C085_PgC_gbBST,2); 
C085_PgC_gbBST = squeeze(C085_PgC_gbBST)
C85_PgC_M11_bst = C85_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
C85_PgC_gbBST = nansum(C85_PgC_M11_bst,1); C85_PgC_gbBST = nansum(C85_PgC_gbBST,2); 
C85_PgC_gbBST = squeeze(C85_PgC_gbBST)


Xc026_PgC_M11_bst = Xc026_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc026_PgC_gbBST = nansum(Xc026_PgC_M11_bst,1); Xc026_PgC_gbBST = nansum(Xc026_PgC_gbBST,2);
Xc026_PgC_gbBST = squeeze(Xc026_PgC_gbBST)
Xc26_PgC_M11_bst = Xc26_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc26_PgC_gbBST = nansum(Xc26_PgC_M11_bst,1); Xc26_PgC_gbBST = nansum(Xc26_PgC_gbBST,2);
Xc26_PgC_gbBST = squeeze(Xc26_PgC_gbBST)

Xc045_PgC_M11_bst = Xc045_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc045_PgC_gbBST = nansum(Xc045_PgC_M11_bst,1); Xc045_PgC_gbBST = nansum(Xc045_PgC_gbBST,2);
Xc045_PgC_gbBST = squeeze(Xc045_PgC_gbBST)
Xc45_PgC_M11_bst = Xc45_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc45_PgC_gbBST = nansum(Xc45_PgC_M11_bst,1); Xc45_PgC_gbBST = nansum(Xc45_PgC_gbBST,2);
Xc45_PgC_gbBST = squeeze(Xc45_PgC_gbBST)

Xc085_PgC_M11_bst = Xc085_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc085_PgC_gbBST = nansum(Xc085_PgC_M11_bst,1); Xc085_PgC_gbBST = nansum(Xc085_PgC_gbBST,2);
Xc085_PgC_gbBST = squeeze(Xc085_PgC_gbBST)
Xc85_PgC_M11_bst = Xc85_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
Xc85_PgC_gbBST = nansum(Xc85_PgC_M11_bst,1); Xc85_PgC_gbBST = nansum(Xc85_PgC_gbBST,2);
Xc85_PgC_gbBST = squeeze(Xc85_PgC_gbBST)


NPP026_PgC_M11_bst = NPP026_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 yr-1 into PgC
NPP026_PgC_gbBST = nansum(NPP026_PgC_M11_bst,1); NPP026_PgC_gbBST = nansum(NPP026_PgC_gbBST,2);
NPP026_PgC_gbBST = squeeze(NPP026_PgC_gbBST)
NPP26_PgC_M11_bst = NPP26_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP26_PgC_gbBST = nansum(NPP26_PgC_M11_bst,1); NPP26_PgC_gbBST = nansum(NPP26_PgC_gbBST,2);
NPP26_PgC_gbBST = squeeze(NPP26_PgC_gbBST)

NPP045_PgC_M11_bst = NPP045_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP045_PgC_gbBST = nansum(NPP045_PgC_M11_bst,1); NPP045_PgC_gbBST = nansum(NPP045_PgC_gbBST,2);
NPP045_PgC_gbBST = squeeze(NPP045_PgC_gbBST)
NPP45_PgC_M11_bst = NPP45_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP45_PgC_gbBST = nansum(NPP45_PgC_M11_bst,1); NPP45_PgC_gbBST = nansum(NPP45_PgC_gbBST,2);
NPP45_PgC_gbBST = squeeze(NPP45_PgC_gbBST)

NPP085_PgC_M11_bst = NPP085_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP085_PgC_gbBST = nansum(NPP085_PgC_M11_bst,1); NPP085_PgC_gbBST = nansum(NPP085_PgC_gbBST,2);
NPP085_PgC_gbBST = squeeze(NPP085_PgC_gbBST)
NPP85_PgC_M11_bst = NPP85_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
NPP85_PgC_gbBST = nansum(NPP85_PgC_M11_bst,1); NPP85_PgC_gbBST = nansum(NPP85_PgC_gbBST,2);
NPP85_PgC_gbBST = squeeze(NPP85_PgC_gbBST)


% calculate tauE0, TauEed, reTuaE
tuaE026_gbBST = Xc026_PgC_gbBST./NPP026_PgC_gbBST
tuaE045_gbBST = Xc045_PgC_gbBST./NPP045_PgC_gbBST
tuaE085_gbBST = Xc085_PgC_gbBST./NPP085_PgC_gbBST

tuaE26_gbBST = Xc26_PgC_gbBST./NPP26_PgC_gbBST
tuaE45_gbBST = Xc45_PgC_gbBST./NPP45_PgC_gbBST
tuaE85_gbBST = Xc85_PgC_gbBST./NPP85_PgC_gbBST

for M=1:11
    reTauE26_gbBST(:,M) = tuaE26_gbBST(:,M) - tuaE026_gbBST(M);
    reTauE45_gbBST(:,M) = tuaE45_gbBST(:,M) - tuaE045_gbBST(M);
    reTauE85_gbBST(:,M) = tuaE85_gbBST(:,M) - tuaE085_gbBST(M);
    
end
reTauE26_gbBST
reTauE45_gbBST
reTauE85_gbBST

% reNPP
for M =1:11
    reNPP26_gbBST(:,M) = NPP26_PgC_gbBST(:,M) - NPP026_PgC_gbBST(M);
    reNPP45_gbBST(:,M) = NPP45_PgC_gbBST(:,M) - NPP045_PgC_gbBST(M);
    reNPP85_gbBST(:,M) = NPP85_PgC_gbBST(:,M) - NPP085_PgC_gbBST(M);

end
reNPP26_gbBST
reNPP45_gbBST
reNPP85_gbBST

% reNPP*tauE0
for M =1:11
    reNPP_tauE026_gbBST(:,M)=  reNPP26_gbBST(:,M).* tuaE026_gbBST(M);
    reNPP_tauE045_gbBST(:,M) =  reNPP45_gbBST(:,M).* tuaE045_gbBST(M);
    reNPP_tauE085_gbBST(:,M) =  reNPP85_gbBST(:,M).* tuaE085_gbBST(M);
end
reNPP_tauE026_gbBST

% NPP0 * retauE
for M =1:11
    NPP0_reTauE26_gbBST(:,M) = NPP026_PgC_gbBST(M).*reTauE26_gbBST(:,M);
    NPP0_reTauE45_gbBST(:,M) = NPP045_PgC_gbBST(M).*reTauE45_gbBST(:,M);
    NPP0_reTauE85_gbBST(:,M) = NPP085_PgC_gbBST(M).*reTauE85_gbBST(:,M);
end

% reNPP * reTauE
reNPP_reTauE26_gbBST = reNPP26_gbBST.*reTauE26_gbBST
reNPP_reTauE45_gbBST = reNPP45_gbBST.*reTauE45_gbBST
reNPP_reTauE85_gbBST = reNPP85_gbBST.*reTauE85_gbBST

% reXc
reXc26_gbBST = reNPP_tauE026_gbBST + NPP0_reTauE26_gbBST + reNPP_reTauE26_gbBST
reXc45_gbBST = reNPP_tauE045_gbBST + NPP0_reTauE45_gbBST + reNPP_reTauE45_gbBST
reXc85_gbBST = reNPP_tauE085_gbBST + NPP0_reTauE85_gbBST + reNPP_reTauE85_gbBST

% reX
for M =1:11
    reC26_gbBST(:,M) =  C26_PgC_gbBST(:,M) - C026_PgC_gbBST(M);
    reC45_gbBST(:,M) =  C45_PgC_gbBST(:,M) - C045_PgC_gbBST(M);
    reC85_gbBST(:,M) =  C85_PgC_gbBST(:,M)- C085_PgC_gbBST(M);
end

for M =1:11
    reC26_gbF(:,M) =  (C26_PgC_gbBST(end,M) - C026_PgC_gbBST(M))./C026_PgC_gbBST(M);
    reC45_gbF(:,M) =  (C45_PgC_gbBST(end,M) - C045_PgC_gbBST(M))./C045_PgC_gbBST(M);
    reC85_gbF(:,M) =  (C85_PgC_gbBST(end,M)- C085_PgC_gbBST(M))./C085_PgC_gbBST(M);
end

nanmean(reC26_gbF)
nanstd(reC26_gbF)

nanmean(reC45_gbF)
nanstd(reC45_gbF)

nanmean(reC85_gbF)
nanstd(reC85_gbF)

% reXp
reXp26_gbBST =  reXc26_gbBST - reC26_gbBST
reXp45_gbBST =  reXc45_gbBST - reC45_gbBST
reXp85_gbBST =  reXc85_gbBST - reC85_gbBST

reXp26_Pg_bstMap11 = reXp26_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
reXp26_Pg_gbBST = nansum(reXp26_Pg_bstMap11,1); reXp26_Pg_gbBST = nansum(reXp26_Pg_gbBST,2);
reXp26_Pg_gbBST = squeeze(reXp26_Pg_gbBST)
reXp45_Pg_bstMap11 = reXp45_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
reXp45_Pg_gbBST = nansum(reXp45_Pg_bstMap11,1); reXp45_Pg_gbBST = nansum(reXp45_Pg_gbBST,2);
reXp45_Pg_gbBST = squeeze(reXp45_Pg_gbBST)
reXp85_Pg_bstMap11 = reXp85_bstMap11.*cellarea1.*10^6*10^(-12); % convert unit from KgC m-2 into PgC
reXp85_Pg_gbBST = nansum(reXp85_Pg_bstMap11,1); reXp85_Pg_gbBST = nansum(reXp85_Pg_gbBST,2);
reXp85_Pg_gbBST = squeeze(reXp85_Pg_gbBST)              
              
%% preparing for plotting             
% Robust regions
Years = 2006:2100;
% ssp126
% reNPP*tauE0
reNPP_tauE26_agBST = nanmean(reNPP_tauE026_gbBST,2)
reNPP_tauE26_sdBST = nanstd(reNPP_tauE026_gbBST,0,2)
% retauE*NPP0
reTauE_npp26_agBST = nanmean(NPP0_reTauE26_gbBST,2);
reTauE_npp26_sdBST = nanstd(NPP0_reTauE26_gbBST,0,2)
% reNPP * reTauE
reTauE_reNPP26_agBST = nanmean(reNPP_reTauE26_gbBST,2);
reTauE_reNPP25_sdBST = nanstd(reNPP_reTauE26_gbBST,0,2)
% reXp
reXp26_agBST = nanmean(reXp26_gbBST,2);
reXp26_sdBST = nanstd(reXp26_gbBST,0,2)
% reX 
reX26_agBST = nanmean(reC26_gbBST,2);
reX26_sdBST = nanstd(reC26_gbBST,0,2)

% ssp245
% reNPP*tauE0
reNPP_tauE45_agBST = nanmean(reNPP_tauE045_gbBST,2);
reNPP_tauE45_sdBST = nanstd(reNPP_tauE045_gbBST,0,2)
% retauE*NPP0
reTauE_npp45_agBST = nanmean(NPP0_reTauE45_gbBST,2);
reTauE_npp45_sdBST = nanstd(NPP0_reTauE45_gbBST,0,2)
% reNPP * reTauE
reTauE_reNPP45_agBST = nanmean(reNPP_reTauE45_gbBST,2);
reTauE_reNPP45_sdBST = nanstd(reNPP_reTauE45_gbBST,0,2)
% reNPP
reXp45_agBST = nanmean(reXp45_gbBST,2);
reXp45_sdBST = nanstd(reXp45_gbBST,0,2)
% reX 
reX45_agBST = nanmean(reC45_gbBST,2);
reX45_sdBST = nanstd(reC45_gbBST,0,2)

% ssp585
% reNPP*tauE0
reNPP_tauE85_agBST = nanmean(reNPP_tauE085_gbBST,2);
reNPP_tauE85_sdBST = nanstd(reNPP_tauE085_gbBST,0,2)
% retauE*NPP0
reTauE_npp85_agBST = nanmean(NPP0_reTauE85_gbBST,2);
reTauE_npp85_sdBST = nanstd(NPP0_reTauE85_gbBST,0,2)
% reNPP * reTauE
reTauE_reNPP85_agBST = nanmean(reNPP_reTauE85_gbBST,2);
reTauE_reNPP85_sdBST = nanstd(reNPP_reTauE85_gbBST,0,2)
% reNPP
reXp85_agBST = nanmean(reXp85_gbBST,2);
reXp85_sdBST = nanstd(reXp85_gbBST,0,2)
% reX 
reX85_agBST = nanmean(reC85_gbBST,2);
reX85_sdBST = nanstd(reC85_gbBST,0,2)              
              
%%
figure
set(gcf,'position',[100 100 758 520])
R_ssp3 = tight_subplot(2,2,[0.06 0.12],[0.08 0.02],[0.1 0.1])

axes(R_ssp3(1))
hold on
reX26_neg = area(Years,[reTauE_npp26_agBST reTauE_reNPP26_agBST],0,'EdgeColor','none')
reX26_pos = area(Years,[reNPP_tauE26_agBST ],0,'EdgeColor','none')
reXp26 = area(Years,[-reXp26_agBST],0,'EdgeColor','none')

reX26_neg(1).FaceColor = [ 0.93 0.69 0.13];
reX26_neg(2).FaceColor = [ 0.72 0.72 0.87];
reX26_pos(1).FaceColor = [0.47 0.67 0.19];
reXp26.FaceColor = [0  0 1];
plot(Years,reX26_agBST,'k-','LineWidth',2)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','on')
set(gca,'XLim',[2006 2100],'YLim',[-60 100]);
set(gca,'Fontname','Arial','FontSize',10)
ylabel('Change in land carbon (Pg C)','Fontname','Arial','FontSize',12)
text(2008, 88,'(a) SSP1-2.6','Fontname','Arial','FontSize',12)

axes(R_ssp3(2))
hold on
reX45_neg = area(Years,[reTauE_npp45_agBST reTauE_reNPP45_agBST],0,'EdgeColor','none')
reX45_pos = area(Years,[reNPP_tauE45_agBST ],0,'EdgeColor','none')
reXp45 = area(Years,[-reXp45_agBST ],0,'EdgeColor','none')
reX45_neg(1).FaceColor = [ 0.93 0.69 0.13];
reX45_neg(2).FaceColor = [ 0.72 0.72 0.87];
reX45_pos(1).FaceColor = [0.47 0.67 0.19];
reXp45.FaceColor = [0  0 1];
plot(Years,reX45_agBST,'k-','LineWidth',2)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','on')
set(gca,'XLim',[2006 2100],'YLim',[-60 100]);
set(gca,'Fontname','Arial','FontSize',10)
xlabel('Years','Fontname','Arial','FontSize',12)
text(2008, 88,'(b) SSP2-4.5','Fontname','Arial','FontSize',12)


axes(R_ssp3(3))
hold on
reX85_pos = area(Years,[reNPP_tauE85_agBST ],0,'EdgeColor','none')
reX85_neg = area(Years,[reTauE_npp85_agBST reTauE_reNPP85_agBST],0,'EdgeColor','none')
reXp85 = area(Years,[-reXp85_agBST],0,'EdgeColor','none')
reX85_neg(1).FaceColor = [ 0.93 0.69 0.13];
reX85_neg(2).FaceColor = [0.72 0.72 0.87];
reX85_pos(1).FaceColor = [0.47 0.67 0.19];
reXp85.FaceColor = [0 0 1];
plot(Years,reX85_agBST,'k-','LineWidth',2)
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','on')
set(gca,'XLim',[2006 2100],'YLim',[-60 100]);
set(gca,'Fontname','Arial','FontSize',10)
ylabel('Change in land carbon (Pg C)','Fontname','Arial','FontSize',12)
text(2008, 88,'(c) SSP5-8.5','Fontname','Arial','FontSize',12)
xlabel('Years','Fontname','Arial','FontSize',12)
leg_5fct = legend({'\DeltaNPP X \tau_E_0','NPP_0 X \Delta\tau_E','\DeltaNPP X \Delta\tau_E','-\DeltaXp','\DeltacLand'})
set(leg_5fct,'NumColumns',2,'Position',[0.575,0.31,0.29,0.12],'EdgeColor','none','color','none')
delete(R_ssp3(4))
% the value of each component at the end of the 21th century
% ssp126: 
% reNPP*tauE0 
reNPP_tauE26_Red = reNPP_tauE026_gbBST(end,:);
% retauE*NPP0
reTauE_npp26_Red = NPP0_reTauE26_gbBST(end,:);
% reNPP * reTauE
reTauE_reNPP26_Red = reNPP_reTauE26_gbBST(end,:);
% reXp
reXp26_Red = reXp26_gbBST(end,:);
% reX 
reX26_Red = reC26_gbBST(end,:)

% ssp245
% reNPP*tauE0
reNPP_tauE45_Red = reNPP_tauE045_gbBST(end,:);
% retauE*NPP0
reTauE_npp45_Red = NPP0_reTauE45_gbBST(end,:);
% reNPP * reTauE
reTauE_reNPP45_Red = reNPP_reTauE45_gbBST(end,:);
% reNPP
reXp45_Red = reXp45_gbBST(end,:);
% reX 
reX45_Red = reC45_gbBST(end,:);

% ssp585
% reNPP*tauE0
reNPP_tauE85_Red = reNPP_tauE085_gbBST(end,:);
% retauE*NPP0
reTauE_npp85_Red = NPP0_reTauE85_gbBST(end,:);
% reNPP * reTauE
reTauE_reNPP85_Red = reNPP_reTauE85_gbBST(end,:);
% reNPP
reXp85_Red = reXp85_gbBST(end,:);
% reX 
reX85_Red = reC85_gbBST(end,:);


leg6_str = {'BCC-CSM2-MR', 'CanESM5', 'CESM2', ...
        'UKESM1-0-LL', 'IPSL-CM6A-LR', 'MIROC-ES2L',...
        'MPI-ESM1-2-LR', 'NorESM2-LM',...
        'ACCESS-ESM1-5', 'CNRM-ESM2-1','EC-Earth3-Veg'}
mycolor6 = [255 0 0; 153 51 255; 237 176 33;...    %BCC-CSM2-MR, CanESM5, CESM2
           0 197 205; 0 205 0; 207 194 124;...     %UKESM1-0-LL, IPSL-CM6A-LR,MIROC-ES2L
           255 99 71; 65 105 255;...               %MPI-ESM1-2-LR,NorESM-LM
            0 0 0; 158 131 149; 119 136 153]./255; %ACCESS-ESM1-5, CNRM-ESM2-1  EC-Earth3-Veg  
    
% SSP126 
R_ssp26 = table('Size',[11 6],'VariableType',{'string','double','double','double','double','double'},...
    'VariableName',{'Moldes','reX','reNPP','reTauE','reNPPtauE','reXp'});              
R_ssp26.Moldes = leg6_str';
R_ssp26.reX = reX26_Red';
R_ssp26.reNPP = reNPP_tauE26_Red';
R_ssp26.reTauE = reTauE_npp26_Red';
R_ssp26.reNPPtauE = reTauE_reNPP26_Red';
R_ssp26.reXp = reXp26_Red';
NL6 = [0 0 1 1 1 1 1 1  1 0 1]';
R_ssp26.Nlimitation = NL6;
% SSP245
R_ssp45 = table('Size',[11 6],'VariableType',{'string','double','double','double','double','double'},...
    'VariableName',{'Moldes','reX','reNPP','reTauE','reNPPtauE','reXp'});              
R_ssp45.Moldes = leg6_str';
R_ssp45.reX = reX45_Red';
R_ssp45.reNPP = reNPP_tauE45_Red';
R_ssp45.reTauE = reTauE_npp45_Red';
R_ssp45.reNPPtauE = reTauE_reNPP45_Red';
R_ssp45.reXp = reXp45_Red';
NL6 = [0 0 1 1 1 1 1 1  1 0 1]';
R_ssp45.Nlimitation = NL6;
% SSP585
R_ssp85 = table('Size',[11 6],'VariableType',{'string','double','double','double','double','double'},...
    'VariableName',{'Moldes','reX','reNPP','reTauE','reNPPtauE','reXp'});              
R_ssp85.Moldes = leg6_str';
R_ssp85.reX = reX85_Red';
R_ssp85.reNPP = reNPP_tauE85_Red';
R_ssp85.reTauE = reTauE_npp85_Red';
R_ssp85.reNPPtauE = reTauE_reNPP85_Red';
R_ssp85.reXp = reXp85_Red';
NL6 = [0 0 1 1 1 1 1 1  1 0 1]';
R_ssp85.Nlimitation = NL6;


panel_Rssp3 = tight_subplot(2,2,[0.06 0.38],[0.08 0.02],[0.44 0.02]);
axes(panel_Rssp3(1))
hold on
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','on')
set(gca,'XLim',[0 2],'YLim',[-60 100]);
for i = 1:11
    if R_ssp26.Nlimitation(i) == 0 
        leg6(i) = plot(1,R_ssp26.reX(i),'Marker','o', 'MarkerEdgeColor', mycolor6(i,:),...
        'MarkerSize',8,'LineStyle','none','LineWidth',1.5)
    else
        leg6(i) = plot(1,R_ssp26.reX(i),'Marker','^', 'MarkerEdgeColor', mycolor6(i,:),...
        'MarkerSize',8,'LineStyle','none','LineWidth',1.5)
    end 
end
H_reX = patch([0.45,0.45,1.55,1.55],[min(reX26_Red),max(reX26_Red),max(reX26_Red),min(reX26_Red)],[0.15,0.15,0.15]);
line([0.45 1.55],[nanmean(reX26_Red) nanmean(reX26_Red)],'color','k','linewidth',1.8);
set(H_reX,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.3)
axis off


axes(panel_Rssp3(2))
hold on
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','on')
set(gca,'XLim',[0 2],'YLim',[-60 100]);
for i = 1:11
    if R_ssp45.Nlimitation(i) == 0 
        leg6(i) = plot(1,R_ssp45.reX(i),'Marker','o', 'MarkerEdgeColor', mycolor6(i,:),...
        'MarkerSize',8,'LineStyle','none','LineWidth',1.5)
    else
        leg6(i) = plot(1,R_ssp45.reX(i),'Marker','^', 'MarkerEdgeColor', mycolor6(i,:),...
        'MarkerSize',8,'LineStyle','none','LineWidth',1.5)
    end 
end
H_reX = patch([0.45,0.45,1.55,1.55],[min(reX45_Red),max(reX45_Red),max(reX45_Red),min(reX45_Red)],[0.15,0.15,0.15]);
line([0.45 1.55],[nanmean(reX45_Red) nanmean(reX45_Red)],'color','k','linewidth',1.8);
set(H_reX,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.3)
axis off

axes(panel_Rssp3(3))
hold on
set(gca,'YTickLabelMode','auto');
set(gca,'XTickLabelMode','auto');
set(gca,'linewidth',1,'box','on')
set(gca,'XLim',[0 2],'YLim',[-60 100]);
for i = 1:11
    if R_ssp85.Nlimitation(i) == 0 
        leg6(i) = plot(1,R_ssp85.reX(i),'Marker','o', 'MarkerEdgeColor', mycolor6(i,:),...
        'MarkerSize',8,'LineStyle','none','LineWidth',1.5)
    else
        leg6(i) = plot(1,R_ssp85.reX(i),'Marker','^', 'MarkerEdgeColor', mycolor6(i,:),...
        'MarkerSize',8,'LineStyle','none','LineWidth',1.5)
    end 
end
H_reX = patch([0.45,0.45,1.55,1.55],[min(reX85_Red),max(reX85_Red),max(reX85_Red),min(reX85_Red)],[0.15,0.15,0.15]);
line([0.45 1.55],[nanmean(reX85_Red) nanmean(reX85_Red)],'color','k','linewidth',1.8);
set(H_reX,'EdgeColor','none','EdgeAlpha',0.5,'FaceAlpha',0.3)
axis off              
delete(panel_Rssp3(4))             
              
              

leg6_Models = legend(leg6,leg6_str)
set(leg6_Models,'NumColumns',2,'FontName','Arial','FontSize',9,'Position',[0.57,0.067,0.345,0.23],'EdgeColor','k','color','none')

              
              