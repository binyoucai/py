[x,y,z]=meshgrid(linspace(-3,3));
val=(x.^2 + (9/4)*y.^2 + z.^2 - 1).^3 - x.^2.*z.^3 - (9/80)*y.^2.*z.^3;
isosurface(x,y,z,val,0);

axis equal;
axis off
view(-10,24);
colormap([1 0.2 0.2])
