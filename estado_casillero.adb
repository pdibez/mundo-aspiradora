with ada.Numerics.Discrete_Random,Ada.Text_IO;
use Ada.Text_IO;

package body estado_casillero is

   package estado_aleatorio is new ada.Numerics.Discrete_Random(t_estado_casillero);
   use estado_aleatorio;

   function random_estado return t_estado_casillero is
      g:Generator;
   begin
      Reset(g);
      return Random(g);
   end random_estado;

   procedure put_estado_casillero (c : in t_estado_casillero) is
   begin
      if c = Limpio then
         put("L");
      else
         put("S");
      end if;
   end put_estado_casillero;


end estado_casillero;
