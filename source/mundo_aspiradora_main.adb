with mundo, Ada.Text_IO;
use mundo, Ada.Text_IO;

procedure mundo_aspiradora_main is
   m : t_mundo;
   c : Character;
begin
   m.inicializar_mundo;

   for i in 1 .. 20 loop
      Put ("ITERACION ");
      Put_Line (Integer'Image (i));
      m.ejecutar_iteracion;
      New_Line;
   end loop;

   Put_Line ("El programa ha finalizado.");
   Get_Immediate (c);

end mundo_aspiradora_main;
