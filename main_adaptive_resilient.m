% MCTS for adaptive and resilient target tracking
% Compare it with minmax tree seach, min tree search without attacks (small case), 
% MCTS without attacks and random algorithm (a larger case)

clc;
close all; 

% number of robots
N = 4; 
% number of targets
M = 3; 
% generate robots' initial positions, Nx3 matrix
% we use unicycle motion model for each robot, [x_i, y_i, theta_i]

% available control inputs
v = ;
w = ;

% generate targets' initial positions, Nx2 matrix, each target has [x_j,y_j];


%### the start of target tracking process ###; 

% the timesteps of tracking process, 
% recall we execute MCTS in a online fashion(at each step k)
K = 10;

% Time horizon
T = 3; % can be varying for comparision 

for k = 1 : K % at each time step
    % precompute of robots, targets, and the 
    
    % monte carlo tree search with sensing and communication attacks considered
    [mcts_resi_u(k), mcts_resi_vari(k), mcts_resi_runtime(k)] = mcts_resi_fun();
    
    % then the robots move with the computed control input
    % motion model for all robots
    
    % perform worst-case sensing and communication attacks
    % do we need a mcts for this? 
    [atk_mcts_u(k), atk_mcts_vari(k), atk_mcts_runtime(k)] = atk_resi_fun();
    
    % execute the attacks, then the robots have differnet estimate of the targets

    % send the estimate to a communication server, select the best one
    
    % go the next step k+1
    
    
%###############comparisions##########    
%     % minmax tree search
%     [minmax_u, minimax_vari, minimax_runtime] = minimax_fun();
%     
%     % prue tree search without "max" from attacker
%     [min_u, min_vari, min_runtime] = min_fun();
%     
%     % prue MCTS without "max" from the attacker
%     [mcts_min_u, mcts_min_vari, mcts_min_runtime] = mcts_min_fun();
%     
%     % random selection
%     [rand_u, rand_vari, rand_runtime] = mcts_min_fun();
    
    % worst-case attacks
end
