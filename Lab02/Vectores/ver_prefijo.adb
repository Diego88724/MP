with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ver_prefijo is

   type T_Vector is array (Positive range <>) of Integer;
   Vector: T_Vector (1..10);
   Vector2: T_Vector (1..5);
   Vector3: T_Vector (1..3);
  Vector4: T_Vector (1..5);

   function prefijo(Vector: T_Vector; Vector2: T_vector) return boolean is
   BEGIN


-- {  Vector'length>=0 and vector2'length>=0 and Vector2'length<=Vector'length}

      IF Vector2'Length=0 THEN

      return true;

      ELSE
         IF(Vector(Vector'First)=Vector2(Vector'First)) THEN

                 RETURN Prefijo(Vector(Vector'first+1..Vector'last), Vector2(vector2'first+1..vector2'last));

            ELSE
           return false;

            END IF;
         END IF;
      END Prefijo;


   -- { Pre(Vector, Vector2) =   FORALL j (1 <= j <= Vector2'length --> Vector(j)=Vector2(j) )



               BEGIN

                  Put("Introduce el primer vector (longitud 10):");
   for J in 1 .. 10 loop
      Get(Vector(J));
   END LOOP;


                  Put("Introduce el segundo vector (longitud 5):");
   for J in 1 .. 5 loop
      Get(Vector2(J));
   END LOOP;




                  Put("Introduce el tercer vector (longitud 3):");
   for J in 1 .. 3 loop
      Get(Vector3(J));
                  END LOOP;


    Vector4:=Vector2;



Put("El segundo vector es prefijo del primero:");
New_line;
Put(Prefijo(Vector, Vector2)'img);
                  New_Line;
                  New_Line;
                  New_Line;
                  New_line;

Put("El tercer vector es prefijo del segundo:");
new_line;
Put(Prefijo(Vector4, Vector3)'img);

end ver_prefijo;
