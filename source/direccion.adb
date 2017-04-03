package body direccion is

   function direccion_opuesta(d : in t_direccion) return t_direccion is
   begin
      if d = Izquierda then
         return Derecha;
      else
         return Izquierda;
      end if;
   end;

end direccion;
