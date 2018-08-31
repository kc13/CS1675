% recitation1_solutions.m
% Solutions for exercises for the first CS1675 recitation
% Note that many alternative approaches may exist

%% Variables / Data Types
%% Create three variables: a, b, and c.  Assign a floating point value to a, 
% a char value to b, and a logical value (true or false) to c.  The choice
% of values is up to you.

a = 3.5;

b = 'z';

c = true;  % will be displayed as logical 1

% Create a fourth variable, d, which is a 4x4 matrix
% of integers randomly drawn from a uniform distribution over
% the interval [1,10]

d = randi(10,4);

%Use "whos" to see info about these variables.
whos

%% Create a 4 x 1 cell array. 
% Assign the values of a, b, and c, and d to the four cells.

C = {a,b,c,d};

%% Create a struct with fields named "a","b", "c", and "d"
% Assign the values of a, b, c, and d to those fields
s.a = a;
s.b = b;
s.c = c;
s.d = d;

%% Create three matrices: e, f, and g.  e should be a 5 x 5 matrix of 0s.
% f should be a 5 x 5 matrix of all 5s.  g should be a 2 x 50 matrix
% with each row consisting of all even numbers between 1 and 100 (inclusive).
% Try to create all of these matrices without using loops, and without 
% typing in all the values by hand.

e = zeros(5,5);

f = ones(5,5)*5;

g = repmat([2:2:100],2,1);

%% Data manipulation and indexing
%% create a matrix n of all "NaN" (not a number) entries, with a height
% and a width drawn from a uniform distribution over the interval 1,20

n = nan(randi(20,1,2));

% Use "size" and "numel" on the n matrix, and store the results in 
% two separate variables.  What information do these methods return? 

sz = size(n); % nRows, nCols

nu = numel(n); % nElements

%% create a 5x5 matrix q of numbers randomly drawn from a uniform
% interval over (0,1)

q = rand(5,5);

% create a 2x2 matrix t consisting of the 4 numbers in bottom-right
% corner of q

t = q(end-1:end, end-1:end);
t = q(4:5, 4:5);

% use reshape to convert t to a 4x1 vector.  Make note of the order
% in which the orignal values of t appear in the new vector.

t = reshape(t,4,1); % Matlab samples values down a row before proceeding to the next column

% use the repmat function to expand q to a 3D 5x5x5 matrix, with each 
% layer of the new dimension consisting of a copy of the original
% 5x5 matrix

q = repmat(q,1,1,5);

% create a vector consisting of all values of q that are > 0.5
% try to avoid using loops

v = q(find(q > 0.5));

%% saving/clearing

% save all variables in the workspace to a .mat file with a 
% name of your choosing

save('recitation1data');

% clear all variables in the workspace with clear all

clear all;

%% Matrix arithmetic and element-wise operations

% create a 10 x 5 matrix r of random integers (your choice of distribution)

r = randn(10,5);  % standard normal distribution, S.D. = 1

% create a matrix in which all the values of r have been raised to the
% third power

r_pow = r.^3;

% transpose this matrix, to get a 5 x 10 matrix

r_pow_t = r_pow';

% multiply this 5 x 10 matrix by a second matrix of random values
% so that the product is of dimensions 5 x 7

product = r_pow_t * randn(10,7);

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

x = -2*pi:pi/16:2*pi;

y = rec1Function(x);


%% Plotting

% use the plot function to plot the x and y obtained in the 
% previous section

plot(x,y)

% use "hold on", followed by another plot function, to 
% plot x and -0.5*y in the same figure

hold on
plot(x, -0.5*y)

% add a title and x and y axis labels

title('recitation1figure')
xlabel('x')
ylabel('y')

% save the figure with an image extension of your choice
print('recitation1figure','-djpeg')




