function [f,fz]=simfn(z)
r1=z(1);
w1=z(2);

r2=z(3);
w2=z(4);

r3=z(5);
w3=z(6);

w=z(7);%to make it homogeneous

f=[2*r1^2*w1+4*r2^2*w2+4*r3^2*w3-w^3
    2*r1^4*w1+4*r2^4*w2+4*r3^4*w3-3*w^5
    4*r2^4*w2+4*r3^4*w3-w^5
    2*r1^6*w1+4*r2^6*w2+4*r3^6*w3-15*w^7
    4*r2^6*w2+4*r3^6*w3-3*w^7
    4*r2^6*w2-w^7];
fz=[4*r1*w1,2*r1^2,8*r2*w2,4*r2^2,8*r3*w3,4*r3^2,-3*w^2
    8*r1^3*w1,2*r1^4,16*r2^3*w2,4*r2^4,16*r3^3*w3,4*r3^4,-15*w^4
    0,0,16*r2^3*w2,4*r2^4,16*r3^3*w3,4*r3^4,-5*w^4
    12*r1^5*w1,2*r1^6,24*r2^5*w2,4*r2^6,24*r3^5*w3,4*r3^6,-15*7*w^6
    0,0,24*r2^5*w2,4*r2^6,24*r3^5*w3,4*r3^6,-21*w^6
    0,0,24*r2^5*w2,4*r2^6,0,0,-7*w^6];
