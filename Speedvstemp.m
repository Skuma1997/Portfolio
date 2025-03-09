x = Speed;
y=  Temp;
plot(x,y,"red");
xlabel("speed");
ylabel("Temp");
legend("speedvsTemp");
title("Graph");
%% 
m = mean(x);
fprintf("%f\n",m)
