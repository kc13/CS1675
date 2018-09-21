%rec4_tasks_1_2_solutions.m

%% Task 1
%% get data
clear all;
clc;
[num,txt,raw] = xlsread('houses.xlsx');  % assumes file in working directory

%% split up data, add bias inputs
nRows = size(num,1);
trainX = [ones(nRows-1,1) num(1:end-1,1:end-1)];
trainY = [num(1:end-1, end)];
testX = [1  num(end,1:end-1)];
testY = num(end,end);

%% get the weight vector
w = (inv(trainX' * trainX))*trainX'*trainY;

%% confirmation against Matlab regress
b = regress(trainY,trainX);

%% Task 2: do the signs/magnitudes make sense?
% w =
% 
%   277.0516 - bias
%   292.4569 - # bedrooms
%    15.6294 - # baths
%    -0.2038 - sq ft
%   -25.7914 - days on Trulia
%
% Most of the weights (except sq ft) make intuitive sense.

%% predict the price of the test house
testYhat = w'*testX';
% prediction = 373.5086
% actual = 289

%%





