package body casillero is

   procedure set_estado(c : in out t_casillero;e : in t_estado_casillero) is
   begin
      c.estado := e;
   end set_estado;

   function get_estado(c: in t_casillero) return t_estado_casillero is
   begin
      return c.estado;
   end get_estado;

end casillero;
