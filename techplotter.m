

for i=5:5
  
  filename = strcat("tek000",mat2str(i),"CH2.csv")
  data = dlmread(filename,",",15,0);
  
  figure();
  
  plot(data);
endfor