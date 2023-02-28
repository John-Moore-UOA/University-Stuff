

% x = 1:1000;
% y = 1:1000;
% 
% z = x.^2 + y.^2;
% figure(1)
% 
% subplot(2,1,1)
% title("Thingy 1")
% xlabel('x label')
% ylabel('y label')
% plot(x, z, 'k*', y, z, 'b-')
% 
% [A, B] = meshgrid(cos(x), sin(z));
% 
% subplot(2,1,2);
% title('Thingy 2')
% xlabel('X label')
% ylabel('Y label')
% plot3(x, A, B, 'k.')



x = 1:pi/64:100*pi;
y = sin(x);

subplot(1,2,1)
plot(x,y)

xlabel('x')
ylabel('sin(x)')
title('Plot of the Sine Function')
hold on
plot(2*x, y, 'b-')

subplot(1,2,2)
plot(x.*y, y, 'k-')
xlabel('x*y')
ylabel('y')
title('Plot of something dumb')






















