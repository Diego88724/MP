with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ver_por_pantalla_inv is

   type T_Vector is array (Positive range <>) of Integer;
   Vector: T_Vector (1..10);


   function por_pantalla_inv(Vector: T_Vector) return Integer is
     begin


      --{Vector'length>0 and Vector(Vector'first..vector'last)= vector'first, vector'first + 1, .. Vector'last-1, vector'last}
      if Vector'length=1 then
           RETURN Vector(Vector'last);

        ELSE
           Put(Vector(Vector'last));
           return por_pantalla_inv(VEctor(Vector'first..Vector'last-1));


           End IF;
      --{por_pantalla_inv(vector) = vector'last, vector'last-1, .. ,vector'first+1, vector'first}

     END Por_Pantalla_inv;



     begin
     Put_Line ("Dame un vector de 10 enteros, un entero por linea:");
   for J in 1 .. 10 loop
      Get(Vector(J));
   end loop;

  put_line("Los elementos escritos por pantalla en orden inverso:");
  put(Por_pantalla_inv(vector));

end ver_por_pantalla_inv;
