x0=0;
y0=4;
z0=6;
h=0.25;
k1_f=f(y0);
k1_g=g(y0,z0);
k2_f=f(y0+h*k1_f);
k2_g=g(y0+h*k1_f,z0+h*k1_g);
