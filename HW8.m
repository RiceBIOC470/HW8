%HW8

% Problem 1: Modeling population growth
% The simplest model for a growing population assumes that each current
% individual has equal likelihood to divide, which yields a differential
% equation dx/dt = a*x where a is the division rate. It is easy to see that
% this will grow exponentially without bound. A simple modification is to
% assume that the growth rate slows done as the population reaches some
% maximum value N so that dx/dt = a*x*(1-x/N). Defining X = x/N, we have 
% dX/dt = a*X*(1-X).  
% Part 1. This equation has two fixed points at 0 and 1. Explain the
% meaning of these two points.
% Part 2: Evaluate the stability of these fixed points. Does it depend on
% the value of the parameter a? 
% Part 3: Write a function that takes two inputs - the initial condition x0
% and the a parameter and integrates the equation forward in time. Make
% your code return two variables - the timecourse of X and the time
% required for the population to reach 99% of its maximum value. 
% Part 4: The logistic equation has an exact solution: 
%  x(t) = 1/(1+(1/x0-1)*exp(-a*t)) use this to derive an expression for the
%  time require to reach 99% of population max and plot a comparison of
%  this solution with the numerical value determined by integration 
%  (a) for all values of x0: 0<x0<=1 for a = 3
%  and (b) for all values of a: 0 < a <= 5 for x0 = 0.1.
% Part 5: Another possible model is to consider discrete generations
% instead allowing the population to vary continuously. e.g. X(t+1) = a*
% X(t)*(1-X(t)). Consider this model and vary the a parameter in the range 0
% < a <= 4. For each value of a choose 200 random starting points  0 < x0 < 1 
% and iterate the equation forward to steady state. For each final
% value Xf, plot the point in the plane (a,Xf) so that at the end you will
% have produced a bifucation diagram showing all possible final values of
% Xf at each value of a. Explain your results. 

% Problem 2. Genetic toggle switches. 
% Consider a genetic system of two genes A and B in which each gene
% product represses the expression of the other. Make the following
% assumptions: 
% a. Repression is cooperative:  each promotor region of one gene has 4
% binding sites for the other protein and that all of these need to be
% occupied for the gene to be repressed. 
% b. You can ignore the intermediate mRNA production so that the product of
% the synthesis of one gene can be assumed to directly repress the other
% c. the system is prefectly symmetric so that the degradation
% times, binding strengths etc are the same for both genes. 
% d. You can choose time and concentration scales so that all Michaelis
% binding constants and degradation times are equal to 1. 
%
% Part 1. Write down a two equation model (one for each gene product) for
% this system. Your model should have one free parameter corresponding to the
% maximum rate of expression of the gene, call it V. 
%
% Part 2. Write code to integrate your model in time and plot the results for V = 5 for two cases, 
% one in which A0 > B0 and one in which B0 > A0. 
%
% Part 3. By any means you want, write code to produce a bifurcation diagram showing all
% fixed points of the system as a function of the V parameter. 

% Problem 3. Toggle switches continued. 
% Continue with the model from part 2 but now assume that each gene
% autoactivates itself cooperatively with 4 binding sites, all of which
% need to be bound for the gene to be transcribed. Assume that the
% repressive and activating components of the model are additive, that is the
% net rate of transcription is equal to that for the repression only model
% from Problem 2 with the activation component added on. Continue to make
% all the assumptions noted above for this new model. 
% Repeat all three parts of Problem 2 for this new model. Comment on the
% differences between the two models. 
%