with Ada.Containers.Vectors;

package Day_One_Part_One is
   package InputVectors is new Ada.Containers.Vectors(Index_Type   => Natural,
                                                      Element_Type => Integer);

   function Increment_Sum(Input: InputVectors.Vector) return Integer;

   procedure Run(Input_File_Name : String);
end Day_One_Part_One;
