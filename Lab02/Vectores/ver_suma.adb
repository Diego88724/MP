with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ver_suma is

   type T_Vector is array (Positive range <>) of Integer;
      Vector: T_Vector (1..10);
total: Integer:=0;

   function suma (Vector: T_Vector) return Integer is
     begin


-- {Vector'length>=0}

        IF Vector'Length =0 then
              RETURN total;

        ELSE

        total:= total+ Vector(Vector'First);
        RETURN suma(Vector(Vector'First+1..Vector'Last));


        END IF;

--{                         Vector'last                      }
--{suma(vector) =           sumatorio         (Vector(i))   }
--{                         i=vector'first                   }


     END suma;

begin

 Put_Line ("Dame un vector de 10 enteros, un entero por linea:");
   for J in 1 .. 10 loop
      Get(Vector(J));
   end loop;

   Put_line ("La suma de los enteros es:");
   Put (suma(Vector));

end ver_suma;
