% Import data file
data = readtable('project_excel.xlsx');

data = rmmissing(data); % Removes rows with any NaN

disp('Cleaned dataset after handling missing values:');
disp(data);
%% 
% Calculate average temperature and humidity
avgTemperature = mean(data.Temperature);
avgHumidity = mean(data.Humidity);

% Find maximum and minimum values
maxTemperature = max(data.Temperature);
minTemperature = min(data.Temperature);

maxHumidity = max(data.Humidity);
minHumidity = min(data.Humidity);

% Display results
fprintf('Average Temperature: %.2f\n', avgTemperature);
fprintf('Average Humidity: %.2f\n', avgHumidity);
fprintf('Max Temperature: %.2f, Min Temperature: %.2f\n', maxTemperature, minTemperature);
fprintf('Max Humidity: %.2f, Min Humidity: %.2f\n', maxHumidity, minHumidity);
%%
% Time Series Plot
figure;
plot(data.Time, data.Temperature, 'r', 'LineWidth', 1);
hold on;
plot(data.Time, data.Humidity, 'b', 'LineWidth', 1);
title('Time Series of Temperature and Humidity');
xlabel('Time');
ylabel('Values');
legend('Temperature', 'Humidity');
grid on;
hold off;
%% 


% Bar Chart for Average Temperature and Humidity by Month

figure;
bar([Monthly_Avg_Temp, Monthly_Avg_Humdity]);
legend('Average Temperature', 'Average Humidity');
xlabel('Months');
ylabel('Values');
title('Monthly Average Temperature and Humidity');
grid on;









