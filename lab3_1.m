%% item_1a obtaining the plot
num_a = [4000 0];
den_a = [1 20 400]; 

sys_a = tf(num_a,den_a);
figure('name','bodeplot_a_tf')
bode(sys_a)
 

%% checking item_1a plot
%obtain the zeroes and poles of the transfer function
%use the zp2tf function in matlab
%graph the bode plot 

zer_a = 0;
pol_a = [-10+10*sqrt(3)*j -10-10*sqrt(3)*j];

[sys_num_a, sys_den_a] = zp2tf(zer_a,pol_a,4000);

figure('name','bodeplot_a_checking')
bode(sys_num_a, sys_den_a)

%% item_1b obtaining the plot
num_b = [5000 5000];
den_b = [1 50 0];

sys_b = tf(num_b,den_b);
figure('name', 'bodeplot_b_tf')   
bode(sys_b)

%% checking item_1b plot
zer_b = -1;
pol_b = [0 -50];

[sys_num_b, sys_den_b] = zp2tf(zer_b,pol_b,5000);

figure('name','bodeplot_b_checking')
bode(sys_num_b, sys_den_b)

