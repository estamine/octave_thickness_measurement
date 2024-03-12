t = [0:1e-9:50e-6]; % s time
V = [-2000:1:2000];

tau = 0; % s delay
chsi = 0.07; % damping
wn = 250e3*2*3.1415926536; % natural freq
wd = wn*sqrt(1-chsi^2); %damped frequency
m = 7.4852e-006; %kg
y33 = 0.5e6;
A = 3.1415926536*(9.5e-3)^2;
h = 80e-6;
d33 = 268e-12;
a33 = -2.75e-17;

function motion (t,tau,chsi,wn,wd,m)

x_of_t = [0:1:size(t)];

x_of_t = (exp(-1.*chsi.*wn.*(t-tau)).*sin(wd.*(t-tau)))/(m.*wd);
  
figure();
plot(t,x_of_t)

endfunction

function thickness (V,h,d33,y33,a33,A,wn,m)

x_of_V = [0:1:size(V)];

x_of_V = abs((V.*h.*d33.*y33.*A+((V).^2).*a33.*y33.*A)/(m.*wn^2.*h^2));

figure();
plot(V,x_of_V)

endfunction

motion(t,tau,chsi,wn,wd,m)

thickness (V,h,d33,y33,a33,A,wn,m)

