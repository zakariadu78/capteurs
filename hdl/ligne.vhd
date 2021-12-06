--
-- Generated at Wed Dec 01 15:18:07 2021
--




library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.ELECTRICAL_SYSTEMS.all;

entity ligne is

  generic (
    v_phi: real := 1.5E8;
    longueur: real := 1.0;
    Zc: real := 50.0
  );
  port (
    terminal entree: ELECTRICAL;
    terminal sortie: ELECTRICAL;
    terminal masse: ELECTRICAL
  );
  quantity VI1: real := 0.0;
  quantity VI2: real := 0.0;
  quantity VR1: real := 0.0;
  quantity VR2: real := 0.0;
  
end entity ligne;

architecture default of ligne is

  quantity V1 across I1 through entree to masse;
  quantity V2 across I2 through sortie to masse;
  
begin

  V1== VI1 + VR1;
  V2== VI2 + VR2;
  I1==(VI1 - VR1)/Zc;
  I2==-(VI2 -VR2)/Zc;
  VR1==VR2'DELAYED(longueur/v_phi);
  VI2==VI1'DELAYED(longueur/v_phi);
  
end architecture default;

