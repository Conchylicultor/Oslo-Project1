%% Main: Linear regression

% Clear workspace
clc;
clear all;
close all;

% Loading data
disp('Project1 - Oslo Team');
load('Oslo_regression.mat');

%% Visualize Data
% % Visualize Y=f(X), allow us to see some correlation
% NbColor = 5;
% colorMap = hsv(NbColor);
% hold all;
% for i= 1:length(X_train(1,:))
%     figure(floor((i-1)/NbColor) + 1);
%     plot(X_train(:,i), y_train, '.', 'Color',colorMap(mod(i-1, NbColor) + 1,:));
% end
% 
% % We see here three clusters of points
% hist(y_train, 200);

%% Bias vs Variance diagnostic: Testing and training error = f(size of dataset)

datasetSize = 2:30;
averCostTraining = zeros(length(datasetSize),1);
averCostTesting = zeros(length(datasetSize),1);
for k=datasetSize
    [costTraining, costTesting] = mlRegression(X_train, y_train, X_test, k);
    
    idx = 3; % We take the results of leastSquare, gradientDescent or ridgeRegression
    averCostTraining(k-1) = mean(costTraining(:,idx));
    averCostTesting(k-1) = mean(costTesting(:,idx));
end

figure (100);
hold on;
datasetSize = length(y_train) - length(y_train)./datasetSize; % Size of the training set
plot(datasetSize, averCostTraining);
plot(datasetSize, averCostTesting);
title('Learning curve');
xlabel('Training set size');
ylabel('RMSE');

%%

% Extract collums which allow us to discriminate between model
% Determine which model to apply for each X value

model=1;
if model==1
    % Extract good columns for the model
    % Make eventual transformation
    % Compute beta value with cross validation
    
    % Use the model on our training value
elseif model==2
    
elseif model==3
end

% Ending program
disp('Thanks for using our script');
