WITH Ada.Text_Io; USE Ada.Text_Io;
WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;

procedure Ver_Num_Apariciones_a is
   -- salida: 11 enteros
   -- post: corresponden a cada uno de los casos de pruebas dise�ados.

   function Num_Apariciones_a (
         S : String)
     return Integer is
   -- EJERCICIO 4- ESPECIFICA E IMPLEMENTA recursivamente el subprograma
   --   Num_Apariciones_a que devuelve el numero de apariciones del car�cter 'a' en el string S
   BEGIN

      --pre = {s= (a1, a2,...,aN) }


      IF (S'Length = 0) THEN

         RETURN 0;

      ELSE

         IF S(S'First) = 'a' THEN
            RETURN 1 + Num_Apariciones_A (S(S'First+1..S'last));
         ELSE
            RETURN Num_Apariciones_A (S(S'First+1..S'Last));
          END IF;


      END IF;


      --post = {num_apariciones_a (s) = Nj(1<=j<=n ^ A(j) = a) }


   end Num_Apariciones_a ;


begin
   Put_Line("-------------------------------------");
   Put("La palabra vacia contiene 0 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a(""));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de 1 caracter");
   Put("-- La palabra de 1 caracter 'a' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("a"));
   New_Line;
   Put("-- La palabra de 1 caracter 'b' contiene 0 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("b"));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de varios caracteres");
   Put("-- 'aaaa' contiene 4 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("aaaa"));
   New_Line;
   Put("-- 'bbbb' contiene 0 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("bbbb"));
   New_Line;
   Put("-- 'abab' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("abab"));
   New_Line;
   Put("-- 'baba' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("baba"));
   New_Line;
   Put("-- 'abba' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("abba"));
   New_Line;
   Put("-- 'baab' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("baab"));
   New_Line;
   Put("-- 'abbb' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("abbb"));
   New_Line;
   Put("-- 'babb' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("babb"));
   New_Line;
   Put("-- 'bbab' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("bbab"));
   New_Line;
   Put("-- 'bbba' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("bbba"));
   New_Line;
   Put_Line("-------------------------------------");
END Ver_Num_Apariciones_A;


