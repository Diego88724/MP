with Ada.Text_Io; use Ada.Text_Io;

procedure Ver_Dar_La_Vuelta is
   -- salida: 6 strings
   -- post: corresponden a cada uno de los casos de pruebas dise�ados.

   function Dar_La_Vuelta (
         S : String)
     return String is
   -- EJERCICIO 2- ESPECIFICA E IMPLEMENTA recursivamente el subprograma
   --   Dar_La_Vuelta que devuelve el string inverso de S.
   BEGIN

      --pre = {s = (a1, a2,..,aN) }

      IF (S'Length = 0) THEN

         RETURN S;

      ELSE

         RETURN Dar_La_Vuelta (S(S'First+1..S'Last) & S(S'First));

      END IF;

      --post = {Dar_La_Vuelta(s) = (aN,aN-1,..,a1) }


   end Dar_La_Vuelta ;


begin
   Put_Line("-------------------------------------");
   Put("La palabra vacia dada la vuelta es la vacia: ");
   Put(Dar_La_Vuelta(""));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put("La palabra de 1 caracter 'a' dada la vuelta es la 'a': ");
   Put(Dar_La_Vuelta("a"));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de varios caracteres");
   Put("-- casaca dada la vuelta es acasac: ");
   Put(Dar_La_Vuelta("casaca"));
   New_Line;
   Put("-- baobab dada la vuelta es baboab: ");
   Put(Dar_La_Vuelta("baobab"));
   New_Line;
   Put("-- alejela dada la vuelta es alejela: ");
   Put (Dar_La_Vuelta("alejela"));
   New_Line;
   Put("-- reconocer dada la vuelta es reconocer: ");
   Put(Dar_La_Vuelta("reconocer"));
   New_Line;
   Put_Line("-------------------------------------");
end Ver_Dar_La_Vuelta;