


        path =  'E:\Codes\Lumerical\Components Library\waveguide\demon\matlab';
    fname = 'waveguide_width 200 ~ 1800 nm 5 nm';
load( [path,'\' , fname ] );

figure('color',[1 1 1]);
lw = 4;   Afs = 24;    fs = 30;
xlab = '波导宽度 (nm)';
ylab = '有效折射率';
tit = '220 nm厚度硅波导有效折射率随波导宽度变化(@1550 nm)';
plot( widthL*G, neff(:,1) , '*-', 'linewidth',lw );
hold on;
for k = 2:6
    plot( widthL*G, neff(:,k) , '*-', 'linewidth',lw );
end
set(gca,'fontsize',Afs);    % 坐标字体设置
    ylabel(ylab,'fontsize',fs,'fontweight','bold');        
    xlabel(xlab,'fontsize',fs,'fontweight','bold');
    title(tit,'fontsize',fs,'fontweight','bold');


%% 500*220 nm 波导 TM0   的 TM1 波导宽度
%%  TM0-TM1     500-1240
%                450-1149

%     widthSM = 450e-9;
% neffTM0 = interp1(widthL*G ,neff(:,2) ,widthSM*G );
% 
%         widthJ = [1000e-9,1340e-9];
%     f = @(x) interp1(widthL,neff(:,5),x);
% widthTM1 = bizero(f,widthJ,'ref',neffTM0);

%     widthMM = 1600e-9;
% neffTM0 = interp1(widthL*G ,neff(:,6) ,widthMM*G );
% 
%         widthJ = [670e-9,1000e-9];
%     f = @(x) interp1(widthL,neff(:,3),x);
% widthTM0 = bizero(f,widthJ,'ref',neffTM0);


% %% 500*220 nm 波导 TE0 有效折射率      2.44
% f = @(x) interp1(widthL,neff(:,1),x);
%     widthSM = 500e-9;
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthSM*G );
% 
% %%  双波导多模光栅反向耦合器
%     widthSM = 500e-9;
%     widthMM = 800e-9;
% neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthSM*G );
% 
%     waCve = 1550;
% pitch = waCve/(neffTE0+neffTE1);       % 1550 波段对应的光栅周期
% 
% % 多模波导-单模波导    TE0-TE0   谐振峰
% neffMM_TE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% neffSM_TE0 = interp1(widthL*G ,neff(:,1) ,widthSM*G );
%     waCve = pitch*(neffMM_TE0+neffSM_TE0);
% % 多模波导    TE0-TE0   谐振峰
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
%     waCve = pitch*(2*neffTE0);
% % 多模波导    TE1-TE0   谐振峰
% neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
%     waCve = pitch*(neffTE0+neffTE1);
% % 多模波导    TE1-TE1   谐振峰
% neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
%     waCve = pitch*(2*neffTE1);
% 
% 
% 
% 
% % %% 长周期光栅 ， width = 700 nm
% % widthMM = 800e-9;
% % widthJ = [265e-9,widthMM];          % 单模波导的宽度区间
% % neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% % neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% % 
% %     waCve = 1550;
% % pitch = waCve/(neffTE0+neffTE1);
% % pitchPG700 = waCve/(neffTE0-neffTE1)      % 长周期光栅，width = 800 nm
% % 
% % 
% % 
% % %% 长周期光栅  ， width = 800 nm
% % widthMM = 800e-9;
% % widthJ = [265e-9,widthMM];          % 单模波导的宽度区间
% % neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% % neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% % 
% %     waCve = 1550;
% % pitch = waCve/(neffTE0+neffTE1);
% % pitchPG = waCve/(neffTE0-neffTE1)      % 长周期光栅，width = 800 nm
% % 
% % 
% % 
% % %% 长周期光栅  ， width = 1200 nm
% % widthMM = 1200e-9;
% % widthJ = [265e-9,widthMM];          % 单模波导的宽度区间
% % neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% % neffTE2 = interp1(widthL*G ,neff(:,3) ,widthMM*G );
% % 
% %     waCve = 1550;
% % pitchPGB = waCve/((neffTE0-neffTE2))     % 长周期光栅,width = 1200 nm
% % 
% % 
% % 
% % %%
% % widthMM = 1200e-9;
% % widthJ = [265e-9,widthMM];          % 单模波导的宽度区间
% % neffTE1 = interp1(widthL*G ,neff(:,3) ,widthMM*G );
% %     
% % widthSM = bizero(f,widthJ,'ref',neffTE1);
% 
% 
% 
% 
% 
