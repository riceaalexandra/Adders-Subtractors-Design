VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL NB(2)
        SIGNAL NB(1)
        SIGNAL NB(0)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(3:0)
        SIGNAL NB(3)
        SIGNAL B(0)
        BEGIN SIGNAL NB(3:0)
        END SIGNAL
        SIGNAL S1A0
        SIGNAL XLXN_31(3:0)
        SIGNAL XLXN_42(3:0)
        SIGNAL BNB(3:0)
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL BNB(3)
        SIGNAL BNB(2)
        SIGNAL BNB(1)
        SIGNAL BNB(0)
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        SIGNAL XLXN_60
        SIGNAL A(3:0)
        SIGNAL Co
        SIGNAL R(3:0)
        SIGNAL XLXN_66
        PORT Input B(3:0)
        PORT Input S1A0
        PORT Input A(3:0)
        PORT Output Co
        PORT Output R(3:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
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
        BEGIN BLOCKDEF sum4
            TIMESTAMP 2023 3 6 19 51 13
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_15 inv
            PIN I B(3)
            PIN O NB(3)
        END BLOCK
        BEGIN BLOCK XLXI_16 inv
            PIN I B(2)
            PIN O NB(2)
        END BLOCK
        BEGIN BLOCK XLXI_17 inv
            PIN I B(1)
            PIN O NB(1)
        END BLOCK
        BEGIN BLOCK XLXI_18 inv
            PIN I B(0)
            PIN O NB(0)
        END BLOCK
        BEGIN BLOCK XLXI_13 m2_1
            PIN D0 B(1)
            PIN D1 NB(1)
            PIN S0 S1A0
            PIN O BNB(1)
        END BLOCK
        BEGIN BLOCK XLXI_14 m2_1
            PIN D0 B(0)
            PIN D1 NB(0)
            PIN S0 S1A0
            PIN O BNB(0)
        END BLOCK
        BEGIN BLOCK XLXI_12 m2_1
            PIN D0 B(2)
            PIN D1 NB(2)
            PIN S0 S1A0
            PIN O BNB(2)
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 B(3)
            PIN D1 NB(3)
            PIN S0 S1A0
            PIN O BNB(3)
        END BLOCK
        BEGIN BLOCK XLXI_32 sum4
            PIN a(3:0) A(3:0)
            PIN b(3:0) BNB(3:0)
            PIN Ci S1A0
            PIN r(3:0) R(3:0)
            PIN Co Co
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_15 992 464 R90
        INSTANCE XLXI_16 1408 464 R90
        INSTANCE XLXI_17 1872 464 R90
        BEGIN BRANCH NB(2)
            WIRE 1440 688 1440 784
            WIRE 1440 784 1440 1024
            BEGIN DISPLAY 1440 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(1)
            WIRE 1904 688 1904 784
            WIRE 1904 784 1904 1024
            BEGIN DISPLAY 1904 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(0)
            WIRE 2352 720 2352 800
            WIRE 2352 800 2352 1040
            BEGIN DISPLAY 2352 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1024 272 1024 368
        BEGIN BRANCH B(3)
            WIRE 1024 368 1024 400
            WIRE 1024 400 1088 400
            WIRE 1088 400 1088 1024
            WIRE 1024 400 1024 448
            WIRE 1024 448 1024 464
            BEGIN DISPLAY 1024 448 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 272 1440 368
        BEGIN BRANCH B(2)
            WIRE 1440 368 1440 384
            WIRE 1440 384 1440 416
            WIRE 1440 416 1504 416
            WIRE 1504 416 1504 1024
            WIRE 1440 416 1440 464
            BEGIN DISPLAY 1440 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 272 1904 368
        BEGIN BRANCH B(1)
            WIRE 1904 368 1904 384
            WIRE 1904 384 1904 416
            WIRE 1904 416 1968 416
            WIRE 1968 416 1968 1024
            WIRE 1904 416 1904 464
            BEGIN DISPLAY 1904 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 912 272 1024 272
            WIRE 1024 272 1104 272
            WIRE 1104 272 1440 272
            WIRE 1440 272 1904 272
            WIRE 1904 272 2352 272
            WIRE 2352 272 2544 272
            BEGIN DISPLAY 1104 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2352 272 2352 368
        BEGIN BRANCH NB(3)
            WIRE 1024 688 1024 784
            WIRE 1024 784 1024 1024
            BEGIN DISPLAY 1024 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 2352 368 2352 384
            WIRE 2352 384 2352 416
            WIRE 2352 416 2416 416
            WIRE 2416 416 2416 1040
            WIRE 2352 416 2352 496
            BEGIN DISPLAY 2352 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 2320 496 R90
        BEGIN BRANCH NB(3:0)
            WIRE 656 752 736 752
            WIRE 736 752 848 752
            BEGIN DISPLAY 736 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 1808 1024 R90
        INSTANCE XLXI_12 1344 1024 R90
        INSTANCE XLXI_11 928 1024 R90
        BEGIN BRANCH S1A0
            WIRE 720 976 800 976
            WIRE 800 976 960 976
            WIRE 960 976 960 1024
            WIRE 960 976 1376 976
            WIRE 1376 976 1840 976
            WIRE 1840 976 1840 1024
            WIRE 1840 976 2288 976
            WIRE 2288 976 2288 1040
            WIRE 1376 976 1376 1024
            WIRE 800 976 800 1696
            WIRE 800 1696 1488 1696
            WIRE 1488 1696 1488 1712
        END BRANCH
        IOMARKER 2544 272 B(3:0) R0 28
        IOMARKER 720 976 S1A0 R180 28
        BEGIN INSTANCE XLXI_32 1456 1712 R90
        END INSTANCE
        BEGIN BRANCH BNB(3:0)
            WIRE 992 1536 1056 1536
            WIRE 1056 1536 1472 1536
            WIRE 1472 1536 1552 1536
            WIRE 1552 1536 1552 1712
            WIRE 1552 1536 1632 1536
            WIRE 1632 1536 1936 1536
            WIRE 1936 1536 2384 1536
            WIRE 2384 1536 2544 1536
            BEGIN DISPLAY 1632 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1056 1536 1056 1440
        BEGIN BRANCH BNB(3)
            WIRE 1056 1344 1056 1392
            WIRE 1056 1392 1056 1440
            BEGIN DISPLAY 1056 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1472 1536 1472 1440
        BEGIN BRANCH BNB(2)
            WIRE 1472 1344 1472 1392
            WIRE 1472 1392 1472 1440
            BEGIN DISPLAY 1472 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 1536 1936 1440
        BEGIN BRANCH BNB(1)
            WIRE 1936 1344 1936 1392
            WIRE 1936 1392 1936 1440
            BEGIN DISPLAY 1936 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2384 1536 2384 1440
        BEGIN BRANCH BNB(0)
            WIRE 2384 1360 2384 1408
            WIRE 2384 1408 2384 1440
            BEGIN DISPLAY 2384 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 2256 1040 R90
        BEGIN BRANCH A(3:0)
            WIRE 1616 1648 1616 1712
            WIRE 1616 1648 2080 1648
        END BRANCH
        IOMARKER 2080 1648 A(3:0) R0 28
        BEGIN BRANCH Co
            WIRE 1488 2096 1488 2128
        END BRANCH
        IOMARKER 1488 2128 Co R90 28
        BEGIN BRANCH R(3:0)
            WIRE 1616 2096 1616 2128
        END BRANCH
        IOMARKER 1616 2128 R(3:0) R90 28
    END SHEET
END SCHEMATIC
