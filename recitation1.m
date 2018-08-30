% recitation1.m

%% Variables / Data Types
%% Create three variables: a, b, and c.  Assign a floating point value to a, 
% a char value to b, and a logical value (true or false) to c.  The choice
% of values is up to you.




% Create a fourth variable, d, which is a 4x4 matrix
% of integers randomly drawn from a uniform distribution over
% the interval [1,10]



%Use "whos" to see info about these variables.


%% Create a 4 x 1 cell array. 
% Assign the values of a, b, and c, and d to the four cells.



%% Create a struct with fields named "a","b", "c", and "d"
% Assign the values of a, b, c, and d to those fields





%% Create three matrices: e, f, and g.  e should be a 5 x 5 matrix of 0s.
% f should be a 5 x 5 matrix of all 5s.  g should be a 2 x 50 matrix
% with each row consisting of all even numbers between 1 and 100 (inclusive).
% Try to create all of these matrices without using loops, and without 
% typing in all the values by hand.





%% Data manipulation and indexing
%% create a matrix n of all "NaN" (not a number) entries, with a height
% and a width drawn from a uniform distribution over the interval 1,20



% Use "size" and "numel" on the n matrix, and store the results in 
% two separate variables.  What information do these methods return? 




%% create a 5x5 matrix q of numbers randomly drawn from a uniform
% interval over (0,1)



% create a 2x2 matrix t consisting of the 4 numbers in bottom-right
% corner of q



% use reshape to convert t to a 4x1 vector.  Make note of the order
% in which the orignal values of t appear in the new vector.



% use the repmat function to expand q to a 3D 5x5x5 matrix, with each 
% layer of the new dimension consisting of a copy of the original
% 5x5 matrix



% create a vector consisting of all values of q that are > 0.5
% try to avoid using loops



%% saving/clearing

% save all variables in the workspace to a .mat file with a 
% name of your choosing



% clear all variables in the workspace with clc



%% Matrix arithmetic and element-wise operations

% create a 10 x 5 matrix of random integers (your choice of distribution)



% create a matrix in which all the values of r have been raised to the
% third power



% transpose this matrix, to get a 5 x 10 matrix



% multiply this 5 x 10 matrix by a second matrix of random values
% so that the product is of dimensions 5 x 7



%% Functions 
% in a new file create a function that: 
% - takes a vector of numbers, "x", as input
% - outputs as "y" the result of the 
% function 3*cos(x + pi/2)

% Once the function is ready, apply it to a vector input
% consisting of all values from -2*pi to 2*pi, in increments
% of pi/16.  Make sure that the function file is in either
% your current working directory, or on your Matlab 
% search path.




%% Plotting

% use the plot function to plot the x and y obtained in the 
% previous section



% use "hold on", followed by another plot function, to 
% plot x and -0.5*y in the same figure



% add a title and x and y axis labels



% save the figure with an image extension of your choice





