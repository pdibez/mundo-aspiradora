with estado_casillero,direccion;
use estado_casillero,direccion;

package casillero is

   type t_casillero is tagged record
      estado : t_estado_casillero;
   end record;

   procedure set_estado(c : in out t_casillero;
                        e : in t_estado_casillero);

   function get_estado(c: in t_casillero) return t_estado_casillero;

end casillero;
