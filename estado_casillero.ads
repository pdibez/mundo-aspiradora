package estado_casillero is

   type t_estado_casillero is (Limpio,Sucio);

   function random_estado return t_estado_casillero;
   procedure put_estado_casillero (c : in t_estado_casillero);

end estado_casillero;
