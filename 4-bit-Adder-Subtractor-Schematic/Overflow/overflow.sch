VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_50
        SIGNAL XLXN_53
        SIGNAL Ov
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL R(3)
        SIGNAL A(3)
        SIGNAL A0_S1
        SIGNAL B(3)
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_8
        SIGNAL XLXN_102
        SIGNAL XLXN_10
        SIGNAL XLXN_13
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL B(3:0)
        SIGNAL A(3:0)
        SIGNAL Co
        SIGNAL R(3:0)
        PORT Output Ov
        PORT Input A0_S1
        PORT Input B(3:0)
        PORT Input A(3:0)
        PORT Output Co
        PORT Output R(3:0)
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF as4
            TIMESTAMP 2023 3 8 16 27 30
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and4
            PIN I0 R(3)
            PIN I1 XLXN_20
            PIN I2 XLXN_19
            PIN I3 XLXN_18
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_15 inv
            PIN I A(3)
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_16 inv
            PIN I A0_S1
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_17 inv
            PIN I B(3)
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I R(3)
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_10 inv
            PIN I B(3)
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_2 and4
            PIN I0 XLXN_15
            PIN I1 XLXN_14
            PIN I2 A0_S1
            PIN I3 A(3)
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_5 or4
            PIN I0 XLXN_7
            PIN I1 XLXN_10
            PIN I2 XLXN_8
            PIN I3 XLXN_6
            PIN O Ov
        END BLOCK
        BEGIN BLOCK XLXI_3 and4
            PIN I0 R(3)
            PIN I1 B(3)
            PIN I2 A0_S1
            PIN I3 XLXN_13
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I A(3)
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_4 and4
            PIN I0 XLXN_12
            PIN I1 B(3)
            PIN I2 XLXN_11
            PIN I3 A(3)
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I R(3)
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I A0_S1
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_14 as4
            PIN B(3:0) B(3:0)
            PIN S1A0 A0_S1
            PIN A(3:0) A(3:0)
            PIN Co Co
            PIN R(3:0) R(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1728 1296 R0
        BEGIN BRANCH Ov
            WIRE 2432 1632 2464 1632
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1984 1136 2176 1136
            WIRE 2176 1136 2176 1536
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 2000 2032 2176 2032
            WIRE 2176 1728 2176 2032
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1552 1040 1728 1040
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1552 1104 1728 1104
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1552 1168 1728 1168
        END BRANCH
        BEGIN BRANCH R(3)
            WIRE 1232 1232 1264 1232
            WIRE 1264 1232 1728 1232
            BEGIN DISPLAY 1264 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_15 1328 1072 R0
        INSTANCE XLXI_16 1328 1136 R0
        INSTANCE XLXI_17 1328 1200 R0
        BEGIN BRANCH A(3)
            WIRE 1232 1040 1264 1040
            WIRE 1264 1040 1328 1040
            BEGIN DISPLAY 1264 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 1232 1104 1248 1104
            WIRE 1248 1104 1328 1104
            BEGIN DISPLAY 1248 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1232 1168 1248 1168
            WIRE 1248 1168 1328 1168
            BEGIN DISPLAY 1248 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1392 1552 R0
        INSTANCE XLXI_10 1392 1488 R0
        BEGIN BRANCH R(3)
            WIRE 1232 1520 1248 1520
            WIRE 1248 1520 1392 1520
            BEGIN DISPLAY 1248 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1232 1456 1280 1456
            WIRE 1280 1456 1392 1456
            BEGIN DISPLAY 1280 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 1232 1392 1248 1392
            WIRE 1248 1392 1760 1392
            BEGIN DISPLAY 1248 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1232 1328 1264 1328
            WIRE 1264 1328 1760 1328
            BEGIN DISPLAY 1264 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1616 1456 1760 1456
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1616 1520 1760 1520
        END BRANCH
        INSTANCE XLXI_2 1760 1584 R0
        INSTANCE XLXI_5 2176 1792 R0
        BEGIN BRANCH XLXN_8
            WIRE 2016 1424 2032 1424
            WIRE 2032 1424 2032 1600
            WIRE 2032 1600 2176 1600
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 2000 1760 2032 1760
            WIRE 2032 1664 2176 1664
            WIRE 2032 1664 2032 1760
        END BRANCH
        INSTANCE XLXI_3 1744 1920 R0
        INSTANCE XLXI_8 1376 1696 R0
        BEGIN BRANCH XLXN_13
            WIRE 1600 1664 1744 1664
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1232 1664 1264 1664
            WIRE 1264 1664 1376 1664
            BEGIN DISPLAY 1264 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 1232 1728 1264 1728
            WIRE 1264 1728 1744 1728
            BEGIN DISPLAY 1264 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1232 1792 1264 1792
            WIRE 1264 1792 1744 1792
            BEGIN DISPLAY 1264 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R(3)
            WIRE 1232 1856 1264 1856
            WIRE 1264 1856 1744 1856
            BEGIN DISPLAY 1264 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1744 2192 R0
        INSTANCE XLXI_13 1376 2160 R0
        INSTANCE XLXI_7 1376 2032 R0
        BEGIN BRANCH XLXN_11
            WIRE 1600 2000 1744 2000
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1600 2128 1744 2128
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1232 1936 1264 1936
            WIRE 1264 1936 1744 1936
            BEGIN DISPLAY 1264 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 1232 2000 1264 2000
            WIRE 1264 2000 1376 2000
            BEGIN DISPLAY 1264 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1232 2064 1264 2064
            WIRE 1264 2064 1744 2064
            BEGIN DISPLAY 1264 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R(3)
            WIRE 1232 2128 1264 2128
            WIRE 1264 2128 1376 2128
            BEGIN DISPLAY 1264 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 608 1264 816 1264
            WIRE 816 1264 912 1264
            WIRE 816 1264 816 1408
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 720 1200 752 1200
            WIRE 752 1200 880 1200
            WIRE 752 1200 752 1408
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 608 1104 688 1104
            WIRE 688 1104 992 1104
            WIRE 688 1104 688 1408
        END BRANCH
        BEGIN BRANCH Co
            WIRE 624 1920 816 1920
            WIRE 816 1920 944 1920
            WIRE 816 1792 816 1920
        END BRANCH
        BEGIN BRANCH R(3:0)
            WIRE 608 2048 688 2048
            WIRE 688 2048 960 2048
            WIRE 688 1792 688 2048
        END BRANCH
        BEGIN INSTANCE XLXI_14 656 1408 R90
        END INSTANCE
        IOMARKER 2464 1632 Ov R0 28
        IOMARKER 912 1264 B(3:0) R0 28
        IOMARKER 880 1200 A0_S1 R0 28
        IOMARKER 944 1920 Co R0 28
        IOMARKER 960 2048 R(3:0) R0 28
        IOMARKER 992 1104 A(3:0) R0 28
    END SHEET
END SCHEMATIC
