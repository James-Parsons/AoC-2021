with Ada.Text_IO; use Ada.Text_IO;
with Ada.Directories; use Ada.Directories;
with Day_One_Part_One; use Day_One_Part_One;
with Day_One_Part_Two; use Day_One_Part_Two;
with Day_Two_Part_One; use Day_Two_Part_One;
with Day_Two_Part_Two; use Day_Two_Part_Two;

procedure Main is
begin
   Put_Line(Current_Directory);
   Day_One_Part_One.Run("./input/input_1");
   Day_One_Part_Two.Run("./input/input_1");

   Day_Two_Part_One.Run("./input/input_2");
   Day_Two_Part_Two.Run("./input/input_2");
end Main;
