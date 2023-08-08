% Load COVID-19 data from CSV file
data = readtable('C:\Users\maste\Documents\Downloads\national-history.csv');


% Convert 'date' column to datetime format
data.date = datetime(data.date, 'InputFormat', 'yyyy-MM-dd');

% Extract data for plotting
dates = data.date;
deaths = data.death;
positiveIncrease = data.positiveIncrease;
hospitalizedCurrently = data.hospitalizedCurrently;
totalTestResultsIncrease = data.totalTestResultsIncrease;

% Create a figure with multiple subplots
figure;

% Plot 1: Daily Deaths
subplot(2, 2, 1);
plot(dates, deaths, 'b.-');
xlabel('Date');
ylabel('Deaths');
title('Daily Deaths');

% Plot 2: Daily Positive Increase
subplot(2, 2, 2);
plot(dates, positiveIncrease, 'g.-');
xlabel('Date');
ylabel('Positive Increase');
title('Daily Positive Increase');

% Plot 3: Currently Hospitalized
subplot(2, 2, 3);
plot(dates, hospitalizedCurrently, 'r.-');
xlabel('Date');
ylabel('Currently Hospitalized');
title('Currently Hospitalized');

% Plot 4: Total Test Results Increase
subplot(2, 2, 4);
plot(dates, totalTestResultsIncrease, 'm.-');
xlabel('Date');
ylabel('Total Test Results Increase');
title('Total Test Results Increase');

sgtitle('COVID-19 Data Visualization');

%Saving
saveas(gcf, 'covid_data.png');