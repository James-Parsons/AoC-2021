package Day_Two_Part_Two is
   type Command_Type is (Forward, Down, Up);
   
   type Sub_Command is record
      Command : Command_Type;
      Value : Integer;
   end record;
   
   function Parse_Command (Cmd_String : String) return Sub_Command;
   
   type Sub_Position is record
      Depth, HorizPos, Aim: Integer := 0;
   end record;
     
   type Submarine is tagged record
      Position : Sub_Position;
   end record;
   
   procedure Process_Command(Self : in out Submarine; Command : Sub_Command);   
   
   procedure Run(Input_File_Name : String);
end Day_Two_Part_Two;
