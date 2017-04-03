package body aspiradora is

   procedure moverse(a : in out t_aspiradora) is
   begin
      a.direccion := direccion.direccion_opuesta(a.direccion);
   end moverse;

   function limpiar(a : in out t_aspiradora) return t_estado_casillero is
   begin
      return estado_casillero.Limpio;
   end limpiar;

   procedure no_hacer_nada(a : in out t_aspiradora) is
   begin
      null;
   end no_hacer_nada;

   procedure set_direccion(a : in out t_aspiradora; d: in t_direccion) is
   begin
      a.direccion := d ;
   end set_direccion;

   function get_direccion (a : in t_aspiradora) return t_direccion is
   begin
      return a.direccion;
   end get_direccion;


end aspiradora;
