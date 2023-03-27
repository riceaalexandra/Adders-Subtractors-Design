VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL R(3:0)
        SIGNAL S1A0
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        PORT Output R(3:0)
        PORT Input S1A0
        PORT Input A(3:0)
        PORT Input B(3:0)
        BEGIN BLOCKDEF as4v
            TIMESTAMP 2023 3 16 19 56 6
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 as4v
            PIN S1A0 S1A0
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN R(3:0) R(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 864 1152 R0
        END INSTANCE
        BEGIN BRANCH R(3:0)
            WIRE 1248 992 1360 992
        END BRANCH
        BEGIN BRANCH S1A0
            WIRE 784 992 864 992
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 784 1056 864 1056
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 784 1120 864 1120
        END BRANCH
        IOMARKER 784 992 S1A0 R180 28
        IOMARKER 784 1056 A(3:0) R180 28
        IOMARKER 784 1120 B(3:0) R180 28
        IOMARKER 1360 992 R(3:0) R0 28
    END SHEET
END SCHEMATIC
