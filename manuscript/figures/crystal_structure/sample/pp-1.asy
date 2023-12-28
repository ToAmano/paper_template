if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="pp-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three; //3d graph
settings.render=8;
settings.prc=false;
size(10cm);

currentprojection = orthographic((3,4,5));

//material spherecolor = material(diffusepen=black, ambientpen=gray(0.1), specularpen=white);
//material cylcolor = material(diffusepen=white, ambientpen=white);

material spherecolor = material(diffusepen=black, specularpen=white);
material cylcolor = material(diffusepen=white);


real cylRadius = 0.1;
real sphereRadius = 0.2;

void drawRod(triple a, triple b) {
surface rod = extrude(scale(cylRadius)*unitcircle, axis=length(b-a)*Z);
triple orthovector = cross(Z, b-a);
if (length(orthovector) > .01) {
real angle = aCos(dot(Z, b-a) / length(b-a));
rod = rotate(angle, orthovector) * rod;
}
draw(shift(a)*rod, surfacepen=cylcolor);
}

void drawSphere(triple center) {
draw(shift(center)*scale3(sphereRadius)*unitsphere, surfacepen=spherecolor);
}

triple a = O;
triple b = X;
triple c = 2Z;

drawSphere(a);
drawSphere(b);
drawSphere(c);
drawRod(a,b);
drawRod(b,c);
