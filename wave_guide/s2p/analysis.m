clear all;
close all;

data_sim = dlmread("Er.csv");
freqs = data_sim(2:end,1);
data_sim = data_sim(2:end,2:17);

data_exp = dlmread("Er_experimental.txt");
data_exp = imag(data_exp(2:end,1));

dif = data_sim - data_exp;
dif = dif.*dif;

[value,idx] = min(sum(dif))

plot(data_sim(:,idx));
hold on;
plot(data_exp);
legend('Simulated data','Experimental data')
