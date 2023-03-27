VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL A
        SIGNAL B
        SIGNAL Ci
        SIGNAL Co
        SIGNAL S
        PORT Input A
        PORT Input B
        PORT Input Ci
        PORT Output Co
        PORT Output S
        BEGIN BLOCKDEF xor3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 208 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N -24 -184 88 -72 64 -80 64 -176 
            ARC N 44 -176 220 0 208 -128 128 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 128 -80 64 -80 
            LINE N 128 -176 64 -176 
            ARC N 44 -256 220 -80 128 -80 208 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 or3
            PIN I0 XLXN_6
            PIN I1 XLXN_5
            PIN I2 XLXN_1
            PIN O Co
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 Ci
            PIN I1 A
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 Ci
            PIN I1 B
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_1 xor3
            PIN I0 Ci
            PIN I1 B
            PIN I2 A
            PIN O S
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_4 1184 1152 R0
        INSTANCE XLXI_5 1184 1344 R0
        INSTANCE XLXI_2 1184 960 R0
        BEGIN BRANCH XLXN_1
            WIRE 1440 864 1808 864
            WIRE 1808 864 1808 992
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1440 1056 1808 1056
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1440 1248 1808 1248
            WIRE 1808 1120 1808 1248
        END BRANCH
        INSTANCE XLXI_3 1808 1184 R0
        BEGIN BRANCH Co
            WIRE 2064 1056 2096 1056
        END BRANCH
        IOMARKER 2096 1056 Co R0 28
        BEGIN BRANCH A
            WIRE 1104 832 1136 832
            WIRE 1136 832 1184 832
            BEGIN DISPLAY 1136 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 1104 896 1136 896
            WIRE 1136 896 1184 896
            BEGIN DISPLAY 1136 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 1104 1024 1136 1024
            WIRE 1136 1024 1184 1024
            BEGIN DISPLAY 1136 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 1104 1088 1120 1088
            WIRE 1120 1088 1184 1088
            BEGIN DISPLAY 1120 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 1104 1216 1136 1216
            WIRE 1136 1216 1184 1216
            BEGIN DISPLAY 1136 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 1104 1280 1136 1280
            WIRE 1136 1280 1184 1280
            BEGIN DISPLAY 1136 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 1456 592 1472 592
            WIRE 1472 592 2112 592
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 1168 656 1184 656
            WIRE 1184 656 1200 656
        END BRANCH
        BEGIN BRANCH B
            WIRE 1168 592 1184 592
            WIRE 1184 592 1200 592
        END BRANCH
        BEGIN BRANCH A
            WIRE 1168 528 1184 528
            WIRE 1184 528 1200 528
        END BRANCH
        IOMARKER 1168 656 Ci R180 28
        IOMARKER 1168 592 B R180 28
        IOMARKER 1168 528 A R180 28
        INSTANCE XLXI_1 1200 720 R0
        IOMARKER 2112 592 S R0 28
    END SHEET
END SCHEMATIC
