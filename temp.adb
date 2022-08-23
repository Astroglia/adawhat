with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C;
with usb; use usb;

procedure temp is
    bus_count : Interfaces.C.int;
    bus_count_i : Integer;

    device_count : Interfaces.C.int;
    device_count_i : Integer;

begin
--  Find_Busses 
    bus_count   := Find_Busses;
    bus_count_i := Integer( bus_count );

    device_count := Find_Devices;
    device_count_i := Integer( device_count );


    Put_Line( "bus count " & Integer'Image(bus_count_i) );

    Put_Line( "device count " & Integer'Image(device_count_i) );


    for I in 1 .. 5 loop
        Put_Line ("Hello, World!" & Integer'Image (I));
    end loop;
end temp;