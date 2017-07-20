%% Main function to generate tests
function tests = dataTest
tests = functiontests(localfunctions);
end

%% Test Functions
function testreadfixed(testCase)
% Test specific code
file_name ='TMSR/CX_data/flibe/case_1_res.m';
data_process.read_fixed_xs(file_name, 4)
end

function Functionfitplottest(testCase)
% Test specific code
% fuel_temp = [300, 600, 900, 1200];
% log_fuel_temp = log(fuel_temp);
% 
% y_fuel = Res_Scat_Fuel(1:4, 3, 4)'  % scat34
% [c0, c1] = fit_and_plot(log_fuel_temp, y_fuel, 'fuel_{scat}', [ num2str(1) ' to ' num2str(1)]);
% y_fuel_pred = c0 + c1*log(fuel_temp)
end

%% Optional file fixtures  
function setupOnce(testCase)  % do not change function name
% set a new path, for example
end

function teardownOnce(testCase)  % do not change function name
% change back to original path, for example
end

%% Optional fresh fixtures  
function setup(testCase)  % do not change function name
% open a figure, for example
end

function teardown(testCase)  % do not change function name
% close figure, for example
end