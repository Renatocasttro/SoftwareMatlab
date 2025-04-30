function[] = esbeltez_T()
global bf;
global tf;
global flm;
global flmp;
global E;
global fy;
global flmr;
global d;
global tw;
global fla;

flm=bf/(2*tf);
flmp=0.38*sqrt(E/fy);
flmr=1*sqrt(E/fy);
fla=d/tw; % NBR 8800/08, item 5.4.3.3 para verificação do cisalhameto

end