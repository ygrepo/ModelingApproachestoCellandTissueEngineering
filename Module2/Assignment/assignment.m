
N1 = 3;
N2 = 1;
k = 2;
densA = N1 + N2 / (2 * k);
pmin = 0;
pmax = 0.1;
m = 5 ;
a = 3;
prob = pmax - a^m * (pmax-pmin) / (a^m + densA^m);
prob

%%
N1 = 3;
N2 = 4;
k = 2;
densA = N1 + N2 / (2 * k);
p0 = 0.006
prob = 1 - (1 - p0)^densA;
prob
densA * p0