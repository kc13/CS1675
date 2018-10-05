% rec5_KNN.m
%
%% clean up
clear all; clc; close all;

%% data and setup: file includes training and test data and labels
load('rec5_knn_data.mat')

%% plot of training data with labels
whitebg('k')
gscatter(xTrain(:,1),xTrain(:,2),yTrain,[],'x',12);
axBounds = [0 7];
set(gca,'XLim',axBounds,'YLim',axBounds);
title('Labeled Training Data')

%% plot of test data w/o labels
figure
scatter(xTest(:,1),xTest(:,2),'ws','filled')
set(gca,'XLim',axBounds,'YLim',axBounds);
title('Unlabeled Test Data')

%% By hand (or eye), find the labels that KNN would predict for the xTest data, 
% using K = 2 and a Euclidean distance metric
% uncomment the line below and create a vector with the appropriate
% predicted 0/1 labels

%yPred = [];

%% plot of labeled training data, and test data with predicted labels
figure
gscatter(xTrain(:,1),xTrain(:,2),yTrain,[],'x',12);
hold on
gscatter(xTest(:,1),xTest(:,2),yPred,[],'o',12);
axBounds = [0 7];
set(gca,'XLim',axBounds,'YLim',axBounds);
title('Labeled training data and test data (circles) predictions')

%% compare yPred to yTest.  How well did the classification perform?




