with Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;
with usb; use usb;

package body transceiver_search is 

    procedure open_and_get_device is

    bus_count : Interfaces.C.int;
    bus_count_i : Integer;

    device_count : Interfaces.C.int;
    device_count_i : Integer;
    begin
        bus_count := Find_Busses;
        bus_count_i := Integer( bus_count );
        device_count := Find_Devices;
        device_count_i := Integer( device_count );

        for I in 1 .. device_count_i loop
            
            declare 
                device_handle : Dev_Handle;
                device_access : access Device;
            begin
                device_handle := usb.Open( device_access );

                device_handle'Address

                usb.Close( device_handle );
            end;
            
            
        end loop;



        --  Put_Line( "bus count " & Integer'Image(bus_count_i) );
        --  Put_Line( "device count " & Integer'Image(device_count_i) );

    end open_and_get_device;


end transceiver_search;

--  function search_for_transceiver is 
--      bus_count : Interfaces.C.int;

--  begin

--  end search_for_transceiver;