with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Text_IO; use Ada.Text_IO;

package body Day_Two_Part_Two is
   function Parse_Command(Cmd_String : String) return Sub_Command is
      Delim_Index : Natural;
      Command : Sub_Command;
   begin
      Delim_Index := Index(Source  => Cmd_String,
                           Pattern => " ");

      Command := (Command => Command_Type'Value(Cmd_String(Cmd_String'First..Delim_Index - 1)),
                  Value => Integer'Value(Cmd_String(Delim_Index + 1..Cmd_String'Last)));

      return Command;
   end Parse_Command;

   procedure Process_Command(Self : in out Submarine; Command : Sub_Command) is
   begin
      case Command.Command is
      when Forward =>
         Self.Position.HorizPos := Self.Position.HorizPos + Command.Value;
         Self.Position.Depth := Self.Position.Depth + (Self.Position.Aim * Command.Value);
      when Down =>
         Self.Position.Aim := Self.Position.Aim + Command.Value;
      when Up =>
         Self.Position.Aim := Self.Position.Aim - Command.Value;
      end case;
   end Process_Command;

   procedure Run(Input_File_Name : String) is
      Input_File : File_Type;
      Current_Cmd : Sub_Command;
      Sub : Submarine;
   begin
      Put_Line("=== Advent of Code Day 2 Part 1 ===");

      Open(File => Input_File,
        Mode => In_File,
        Name => Input_File_Name);

      while not End_Of_File(Input_File) loop
         Current_Cmd := Parse_Command(Get_Line(Input_File));
         Sub.Process_Command(Current_Cmd);
      end loop;

      Put_Line("Depth: " & Integer'Image(Sub.Position.Depth));
      Put_Line("Horizontal Position: " & Integer'Image(Sub.Position.HorizPos));
      Put_Line("Solution: " & Integer'Image( (Sub.Position.Depth * Sub.Position.HorizPos) ));

      Close(Input_File);
   end Run;
end Day_Two_Part_Two;
