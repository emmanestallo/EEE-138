num = [4000 0];
den = [1 20 400]; 

sys = tf(num,den);
figure('name','bodeplot_tf')
bode(sys)

%==============checking=============%
%obtain the zeroes and poles of the transfer function
%use the zp2tf function in matlab
%graph the bode plot 

zer = 0;
pol = [-10+10*sqrt(3)*j -10-10*sqrt(3)*j];

[sys_num, sys_den] = zp2tf(zer,pol,4000);

figure('name','bodeplot_checking')
bode(sys_num, sys_den)

