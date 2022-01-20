with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ver_menores is

   type T_Vector is array (Positive range <>) of Integer;
   Vector: T_Vector (1..10);
   cont: Integer:=0;
   I: Integer;



   function menores(Vector: T_Vector;I: Integer) return Integer is
begin


--{ Vector'length>=0}

   IF Vector'Length=0 THEN
      RETURN Cont;


   ELSE
      IF Vector(Vector'First)<I THEN
         Cont:=Cont+1;

      END IF;


      RETURN menores(vector(vector'first+1..vector'last), I);
   END IF;


--{menores(s)= Nj(Vector'first<=j<=Vector'last and Vector(j)<I)}


              END menores;

begin

 Put_Line ("Dame un vector de 10 enteros, un entero por linea:");
   for J in 1 .. 10 loop
      Get(Vector(J));
   end loop;


   Put_Line ("Dame un entero");
   get(I);

   Put_line ("La cantidad de enteros menores que el nunero dado es:");
   Put (menores(Vector, I));

end ver_menores;
