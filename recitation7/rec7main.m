%rec7main.m
%%
clear all;
clc;

%% get data

fName = 'candy-data';
[num,txt,raw] = xlsread(fName);
w = cell(2,1);
for i = 1:2
   w{i} = dlmread([fName,'-w',num2str(i),'.txt']);
end

%% rearrange

nRows = size(num,1);
Y = num(:,1);  % chocolate/not chocolate is predicted label
X = [ones(nRows,1) num(:,2:end)];  % add bias term to feature matrix

%% L(w) estimates
L = nan(2,1);
for i = 1:2
    L(i) = getLikelihood(X,Y,w{i});
end
%%