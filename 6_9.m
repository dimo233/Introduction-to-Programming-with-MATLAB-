function [v] = square_wave(n)
for i = 0:1000
	t  = i/1000;
	tot = 0;
	for k = 1:n
		tmp = 2*k-1;
		tot += sin(tmp*t*4*pi)/tmp;
	end
	v(1,i+1) = tot;
end
