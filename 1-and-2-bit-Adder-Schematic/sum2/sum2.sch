VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL r(1:0)
        SIGNAL r(0)
        SIGNAL r(1)
        SIGNAL Co
        SIGNAL XLXN_24
        SIGNAL a(1:0)
        SIGNAL b(1:0)
        SIGNAL b(1)
        SIGNAL b(0)
        SIGNAL a(0)
        SIGNAL a(1)
        PORT Output r(1:0)
        PORT Output Co
        PORT Input a(1:0)
        PORT Input b(1:0)
        BEGIN BLOCKDEF sum1g
            TIMESTAMP 2023 3 4 20 23 29
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 sum1g
            PIN Ci XLXN_1
            PIN Co Co
            PIN S r(1)
            PIN B b(1)
            PIN A a(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 sum1g
            PIN Ci XLXN_24
            PIN Co XLXN_1
            PIN S r(0)
            PIN B b(0)
            PIN A a(0)
        END BLOCK
        BEGIN BLOCK XLXI_5 gnd
            PIN G XLXN_24
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1088 1152 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1520 1152 M90
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1056 1024 1152 1024
            WIRE 1152 1024 1152 1616
            WIRE 1152 1616 1360 1616
            WIRE 1056 1024 1056 1152
            WIRE 1360 1536 1360 1616
        END BRANCH
        BEGIN BRANCH r(1:0)
            WIRE 848 1936 1056 1936
            WIRE 1056 1936 1488 1936
            WIRE 1488 1936 1504 1936
            WIRE 1504 1936 1808 1936
        END BRANCH
        BUSTAP 1056 1936 1056 1840
        BEGIN BRANCH r(1)
            WIRE 1056 1536 1056 1680
            WIRE 1056 1680 1056 1712
            WIRE 1056 1712 1056 1840
            BEGIN DISPLAY 1056 1680 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 1936 1488 1840
        BEGIN BRANCH r(0)
            WIRE 1488 1536 1488 1648
            WIRE 1488 1648 1488 1664
            WIRE 1488 1664 1488 1840
            BEGIN DISPLAY 1488 1648 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Co
            WIRE 928 1536 928 1568
        END BRANCH
        IOMARKER 928 1568 Co R90 28
        BEGIN BRANCH XLXN_24
            WIRE 1488 1120 1600 1120
            WIRE 1600 1120 1600 1136
            WIRE 1488 1120 1488 1152
        END BRANCH
        BEGIN BRANCH a(1:0)
            WIRE 832 880 992 880
            WIRE 992 880 1424 880
            WIRE 1424 880 1440 880
            WIRE 1440 880 1824 880
        END BRANCH
        BEGIN BRANCH b(1:0)
            WIRE 832 768 928 768
            WIRE 928 768 1360 768
            WIRE 1360 768 1824 768
        END BRANCH
        INSTANCE XLXI_5 1536 1264 R0
        IOMARKER 1824 768 b(1:0) R0 28
        BUSTAP 928 768 928 864
        BEGIN BRANCH b(1)
            WIRE 928 864 928 1056
            WIRE 928 1056 928 1104
            WIRE 928 1104 928 1152
            BEGIN DISPLAY 928 1104 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1360 768 1360 864
        BEGIN BRANCH b(0)
            WIRE 1360 864 1360 1072
            WIRE 1360 1072 1360 1088
            WIRE 1360 1088 1360 1152
            BEGIN DISPLAY 1360 1088 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1424 880 1424 976
        BEGIN BRANCH a(0)
            WIRE 1424 976 1424 1104
            WIRE 1424 1104 1424 1152
            BEGIN DISPLAY 1424 1104 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 992 880 992 976
        BEGIN BRANCH a(1)
            WIRE 992 976 992 1072
            WIRE 992 1072 992 1104
            WIRE 992 1104 992 1152
            BEGIN DISPLAY 992 1104 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1808 1936 r(1:0) R0 28
        IOMARKER 1824 880 a(1:0) R0 28
    END SHEET
END SCHEMATIC
