num = [5000 5000];
den = [1 50 0];

sys = tf(num,den);
figure('name', 'bodeplot_tf')   
bode(sys)

%==============checking=============%
%obtain the zeroes and poles of the transfer function
%use the zp2tf function in matlab
%graph the bode plot 

zer = -1;
pol = [0 -50];

[sys_num, sys_den] = zp2tf(zer,pol,5000);

figure('name','bodeplot_checking')
bode(sys_num, sys_den)
