module mux4to1(I0,I1,I2,I3,S1,S2,Y);
    input I0,I1,I2,I3,S1,S2;
    output Y;
    wire p,q,a,b,c,d;
    not (p,S1);
    not (q,S2);
    and (a,I0,p,q);
    and (b,I1,p,S2);
    and (c,I2,S1,q);
    and (d,I3,S1,S2);
    or (Y,a,b,c,d);    
endmodule
