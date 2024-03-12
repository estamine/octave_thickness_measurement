
d33 = 0;
a33 = 0;
Va = 0;
h = 0;

function dht = thickness_change_transmitter (d33,a33,Va,h)
  
  %Doering et al - 2012 - Piezoelectric and electrostrictive effects in ferroelectret ultrasonic transducers

  % d33 - longitudinal piezoelectric constant
  % a33 - electrostrictive constant
  % Va  - Actuator voltage
  % h   - thickness of cPP film
  
  dht = abs( d33 * Va + (a33/h) * Va^2);
 
endfunction

function dhr = thickness_change_receiver (d33,a33,V0,Vdc)
  
  %Doering et al - 2012 - Piezoelectric and electrostrictive effects in ferroelectret ultrasonic transducers

  % d33 - longitudinal piezoelectric constant
  % a33 - electrostrictive constant
  % V0  - Internal voltage
  % Vdc - bias voltage
  
  dhr = abs( d33 * Va + a33 * Va^2);
 
endfunction

thickness_change_transmitter (2.68e-10,-2.05e-17,-2000,85e-6)
  