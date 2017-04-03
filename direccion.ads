package direccion is

   type t_direccion is (Izquierda,Derecha);
   subtype t_posicion is t_direccion range Izquierda .. Derecha ;

   function direccion_opuesta(d : in t_direccion) return t_direccion;

end direccion;
