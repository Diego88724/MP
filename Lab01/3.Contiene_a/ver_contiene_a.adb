WITH Ada.Text_Io;
USE Ada.Text_Io;

procedure Ver_Contiene_a is
   -- salida: 7 booleanos
   -- post: corresponden a cada uno de los casos de pruebas dise?ados.

   function Contiene_a (
         S : String)
     return Boolean is
   -- EJERCICIO 3- ESPECIFICA E IMPLEMENTA recursivamente el subprograma
   --   Contiene_a que decide si el string S contiene el car?cter 'a'.
   BEGIN
      --pre = {s = (a1, a2,..,aN) }
      
      if S'Length = 0 then
         
         RETURN False;
         
         
      ELSE
         
        
         IF S(S'First..S'last) = "a" THEN
            return true;
         ELSE
            return false;
            
         END IF;
      END IF;
      
        
      
      --post = {contiene_a(s) = Ej(1<=j<=n ^ A(j)= a)}
      
      

   end Contiene_a ;


begin
   Put_Line("-------------------------------------");
   Put("La palabra vacia no contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("")));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de un caracter");
   Put("-- La palabra de 1 caracter 'a' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("a")));
   New_Line;
   Put("-- La palabra de 1 caracter 'b' no contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("b")));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de varios caracteres");
   Put("-- 'abcd' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("abcd")));
   New_Line;
   Put("-- 'dcba' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("dcba")));
   New_Line;
   Put("-- 'dcbabcd' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("dcbabcd")));
   New_Line;
   Put("-- Pero 'dcbbcd' no contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("dcbbcd")));
   New_Line;
   Put_Line("-------------------------------------");
end Ver_Contiene_a;