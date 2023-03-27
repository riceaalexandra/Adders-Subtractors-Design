VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL A0_S1
        SIGNAL R
        SIGNAL Ov
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL B(3)
        SIGNAL A(3)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Input A0_S1
        PORT Input R
        PORT Output Ov
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or4
            PIN I0 XLXN_14
            PIN I1 XLXN_13
            PIN I2 XLXN_12
            PIN I3 XLXN_11
            PIN O Ov
        END BLOCK
        BEGIN BLOCK XLXI_2 and4
            PIN I0 XLXN_25
            PIN I1 B(3)
            PIN I2 XLXN_24
            PIN I3 A(3)
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 and4
            PIN I0 XLXN_23
            PIN I1 XLXN_22
            PIN I2 A0_S1
            PIN I3 A(3)
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 and4
            PIN I0 R
            PIN I1 B(3)
            PIN I2 A0_S1
            PIN I3 XLXN_21
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 and4
            PIN I0 XLXN_20
            PIN I1 B(3)
            PIN I2 XLXN_19
            PIN I3 A(3)
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I A0_S1
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I R
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I B(3)
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_10 inv
            PIN I R
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_11 inv
            PIN I A(3)
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I A0_S1
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I R
            PIN O XLXN_20
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(3:0)
            WIRE 1120 512 2240 512
        END BRANCH
        IOMARKER 2240 512 A(3:0) R0 28
        BEGIN BRANCH B(3:0)
            WIRE 1120 720 2224 720
        END BRANCH
        IOMARKER 2224 720 B(3:0) R0 28
        BEGIN BRANCH A0_S1
            WIRE 1120 384 2256 384
        END BRANCH
        BEGIN BRANCH R
            WIRE 1120 304 2256 304
        END BRANCH
        IOMARKER 2256 384 A0_S1 R0 28
        IOMARKER 2256 304 R R0 28
        INSTANCE XLXI_2 912 1264 R0
        INSTANCE XLXI_3 928 1616 R0
        INSTANCE XLXI_4 944 2032 R0
        INSTANCE XLXI_5 944 2448 R0
        BEGIN BRANCH Ov
            WIRE 1888 1600 1904 1600
            WIRE 1904 1600 1968 1600
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1168 1104 1632 1104
            WIRE 1632 1104 1632 1504
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1200 2288 1632 2288
            WIRE 1632 1696 1632 2288
        END BRANCH
        INSTANCE XLXI_1 1632 1760 R0
        BEGIN BRANCH XLXN_12
            WIRE 1184 1456 1200 1456
            WIRE 1200 1456 1200 1568
            WIRE 1200 1568 1632 1568
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1200 1872 1216 1872
            WIRE 1216 1632 1632 1632
            WIRE 1216 1632 1216 1872
        END BRANCH
        IOMARKER 1968 1600 Ov R0 28
        INSTANCE XLXI_13 576 2416 R0
        INSTANCE XLXI_12 576 2288 R0
        BEGIN BRANCH XLXN_19
            WIRE 800 2256 944 2256
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 800 2384 944 2384
        END BRANCH
        INSTANCE XLXI_11 576 1808 R0
        BEGIN BRANCH XLXN_21
            WIRE 800 1776 944 1776
        END BRANCH
        INSTANCE XLXI_10 576 1584 R0
        INSTANCE XLXI_9 576 1520 R0
        BEGIN BRANCH XLXN_22
            WIRE 800 1488 928 1488
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 800 1552 928 1552
        END BRANCH
        INSTANCE XLXI_7 560 1104 R0
        INSTANCE XLXI_8 560 1232 R0
        BEGIN BRANCH XLXN_24
            WIRE 784 1072 912 1072
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 784 1200 912 1200
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 416 1072 448 1072
            WIRE 448 1072 560 1072
            BEGIN DISPLAY 448 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R
            WIRE 416 1200 432 1200
            WIRE 432 1200 560 1200
            BEGIN DISPLAY 432 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 416 1488 448 1488
            WIRE 448 1488 576 1488
            BEGIN DISPLAY 448 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R
            WIRE 416 1552 432 1552
            WIRE 432 1552 576 1552
            BEGIN DISPLAY 432 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 432 1776 464 1776
            WIRE 464 1776 576 1776
            BEGIN DISPLAY 464 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 416 1424 432 1424
            WIRE 432 1424 928 1424
            BEGIN DISPLAY 432 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 416 1360 448 1360
            WIRE 448 1360 928 1360
            BEGIN DISPLAY 448 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 416 1136 448 1136
            WIRE 448 1136 912 1136
            BEGIN DISPLAY 448 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 416 1008 448 1008
            WIRE 448 1008 912 1008
            BEGIN DISPLAY 448 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 432 1840 464 1840
            WIRE 464 1840 944 1840
            BEGIN DISPLAY 464 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 432 1904 464 1904
            WIRE 464 1904 944 1904
            BEGIN DISPLAY 464 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R
            WIRE 432 1968 464 1968
            WIRE 464 1968 944 1968
            BEGIN DISPLAY 464 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 432 2192 480 2192
            WIRE 480 2192 944 2192
            BEGIN DISPLAY 480 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A0_S1
            WIRE 432 2256 464 2256
            WIRE 464 2256 576 2256
            BEGIN DISPLAY 464 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 432 2320 480 2320
            WIRE 480 2320 944 2320
            BEGIN DISPLAY 480 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R
            WIRE 432 2384 464 2384
            WIRE 464 2384 576 2384
            BEGIN DISPLAY 464 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
