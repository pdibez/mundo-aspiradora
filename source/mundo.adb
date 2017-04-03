with estado_casillero,ada.Text_IO;
use estado_casillero,ada.Text_IO;

package body mundo is

   procedure inicializar_mundo (m : in out t_mundo) is
      c : t_casillero ;
   begin
      c.set_estado(estado_casillero.Sucio);
      m.casilleros := (others => c);
      m.aspiradora.set_direccion(direccion.Izquierda);

      -- IMPRESION DE ITERACION

      Put_Line("Mundo de la Aspiradora");
      New_Line;
      Put_Line("ESTADO INICIAL");
      Put_Line("| Casilla 1 | Casilla 2 |");
      Put_Line("|     S     |     S     |");
      Put_Line("|     A     |     -     |");

   end inicializar_mundo;

   procedure ejecutar_iteracion (m : in out t_mundo) is
      direccion_aspiradora : t_direccion := m.aspiradora.get_direccion ;
      nuevo_estado : t_estado_casillero := estado_casillero.random_estado ;
   begin
      --si el casillero en donde se encuentra la aspiradora esta sucio
      if m.casilleros(direccion_aspiradora).get_estado = estado_casillero.Sucio then
         m.casilleros(direccion_aspiradora).set_estado(m.aspiradora.limpiar);
      else
         m.aspiradora.no_hacer_nada;
      end if;

      -- muevo aspiradora a la otra casilla
      m.aspiradora.moverse;

      -- ENVIE EL SETEO DEL ESTADO DE LA CASILLA LUEGO DE IMPRIMIR!!! 2/4/2017 - 21:07

      -- IMPRESION DE ITERACION
      Put_Line("| Casilla 1 | Casilla 2 |");
      Put("|     ");
      put_estado_casillero(m.casilleros(Izquierda).get_estado);
      Put("     |     ");
      put_estado_casillero(m.casilleros(Derecha).get_estado);
      Put_Line("     |");

      if m.aspiradora.get_direccion = Izquierda then
         Put_Line("|     A     |     -     |");
      else
         Put_Line("|     -     |     A     |");
      end if;

     -- seteo aleatoriamente el estado de la casilla que dejo
      m.casilleros(direccion_aspiradora).set_estado(nuevo_estado);

   end ejecutar_iteracion;

end mundo;
