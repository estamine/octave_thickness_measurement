

datatime = [0:0.057078:50]';

data0V = dlmread ("OhneHV.asc",";",72,0)
data2kV = dlmread ("2000HV.asc",";",72,0)

maxdata = max(abs(data2kV));

data0V = data0V/maxdata;
data2kV = data2kV/maxdata;


plot(datatime,data0V,"-b","linewidth",2);
hold on
plot(datatime,data2kV,"-r","linewidth",2);

 axis([0 40 -1.1 1.1])

set(gca, "fontsize", 22, "linewidth", 3);
%  
%  title(["Durchschalung einer Holzplatte 35mm Dicke"])
  xlabel("Time (µm)");
  ylabel("Receiver (normalized)");
  legend("0kV","2kV","location","southeast")

