clc;clear;
% close all;
%% 读取按参数扫描的所有文件，并画图
K = 1e3;
M = 1e6;
G = 1e9;
MM = M*M;

spa  = 'E:\Codes\Lumerical\Components Library\waveguide\demon\matlab';
pfolder = '';

path = [ spa , pfolder ];
fileInfo = dir( path );
%% 画图
kD = 2;