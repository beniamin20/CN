%P5_15
x=[0.0129,0.0247,0.0530,0.1550,0.3010,0.4710,0.8020,1.2700,...
    1.4300,2.4600];
y=[9.5600,8.1845,5.2616,2.7917,2.2611,1.7340,1.2370,1.0674,...
    1.1171,0.7620];
c=polyfit(x,log(y),1);
t=linspace(min(x),max(x),100);
ya=exp(c(1)*t)*exp(c(2));
plot(x,y,'o',t,ya)