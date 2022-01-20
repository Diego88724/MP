with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Ver_Dicotomica is

   type T_Vector is array (Positive range <>) of Integer;
Pos: integer:=0;
   Vector: T_Vector (1..10);
   I: Integer;

   function Dicotomica (Vector: T_Vector; N:Integer) return Integer is
     begin

        --{Vector(1..10)}

        IF N>= Vector(Vector'first) and N<=Vector(Vector'last) then


           IF N<Vector((Vector'Last-Vector'First)/2 + Vector'First) THEN
             return Dicotomica((Vector(Vector'first..(((Vector'last-vector'first)/2)+vector'first-1))),N);


           ELSIF N=Vector((Vector'last-Vector'first)/2 + vector'first) THEN
              Pos:= pos + ((vector'last- Vector'first)/2 + 1);
              RETURN Pos;


           ELSE
              Pos:= Pos + ((Vector'Last-Vector'First)/2+1);
              return Dicotomica((Vector((((Vector'last-vector'first)/2)+vector'first+1)..vector'last)),N);

           END IF;


        ELSE

         Pos:=-1;
              RETURN pos;
           END IF;



        -- {Dicotomica(Vector) = (EXISTE i (Vector'first<=i<=vector'last and Vector(i)=N and pos=i))
        --                       or (¬EXISTE i (Vector'first<=i<=vector'last and Vector(i)=N) and pos=-1)) }



   end Dicotomica;


begin
   Put_Line ("Dame un vector ordenado de menor a mayor de 10 enteros, un entero por linea:");
   for J in 1 .. 10 loop
      Get(Vector(J));
   end loop;
   Put_Line ("Dame un entero a buscar:");
   Get (I);
   Put_line ("La posicion del entero a buscar es:");
   Put (Dicotomica(Vector,I));
end Ver_Dicotomica;
