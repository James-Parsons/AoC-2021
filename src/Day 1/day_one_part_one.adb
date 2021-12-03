with Ada.Text_IO; use Ada.Text_IO;

package body Day_One_Part_One is
   function Increment_Sum(Input: InputVectors.Vector) return Integer is
      Sum : Integer := 0;
   begin
      for I in Input.First_Index .. Input.Last_Index - 1 loop
         if Input(I + 1) > Input(I) then
            Sum := Sum + 1;
         end if;
      end loop;
      
      return Sum;
   end Increment_Sum;
   
   procedure Run(Input_File_Name: String) is
      Input_File : File_Type;
      Input : InputVectors.Vector;
      Sum : Integer;   
   begin
      Put_Line("=== Advent of Code Day 1 Part 1 ===");
      
      Open(File => Input_File,
           Mode => In_File,
           Name => Input_File_Name);
   
      while not End_Of_File(Input_File) loop
         Input.Append(Integer'Value(Get_Line(Input_File)));
      end loop;
   
      Sum := Increment_Sum(Input => Input);
      Put_Line("Increment Sum: " & Integer'Image(Sum));
   
      Close(Input_File);
   end Run;
end Day_One_Part_One;
