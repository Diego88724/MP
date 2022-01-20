with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ver_por_pantallaf is

   type T_Vector is array (Positive range <>) of Integer;
   Vector: T_Vector (1..10);


   function por_pantalla(Vector: T_Vector) return Integer is
     begin


--{Vector'length>0 and Vector(Vector'first..vector'last)= vector'first, vector'first + 1, .. Vector'last-1, vector'last}
if Vector'length=1 then
           RETURN Vector(Vector'first);

        ELSE
           Put(Vector(Vector'First));
           return por_pantalla(Vector(Vector'first+1..Vector'last));


           End IF;
--{por_pantallaf(vector) = vector'first, vector'first + 1, .. Vector'last-1, vector'last}

     END Por_Pantalla;



     begin
     Put_Line ("Dame un vector de 10 enteros, un entero por linea:");
   for J in 1 .. 10 loop
      Get(Vector(J));
   end loop;

put_line("Los elementos escritos por pantalla:");
put(Por_pantalla(vector));

end ver_por_pantallaf;
