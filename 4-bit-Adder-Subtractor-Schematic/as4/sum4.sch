VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL r(3:0)
        SIGNAL r(3)
        SIGNAL r(2)
        SIGNAL r(1)
        SIGNAL r(0)
        SIGNAL a(3:0)
        SIGNAL b(3:0)
        SIGNAL b(3)
        SIGNAL b(2)
        SIGNAL b(1)
        SIGNAL b(0)
        SIGNAL a(0)
        SIGNAL a(3)
        SIGNAL Co
        SIGNAL Ci
        SIGNAL a(2)
        SIGNAL a(1)
        PORT Output r(3:0)
        PORT Input a(3:0)
        PORT Input b(3:0)
        PORT Output Co
        PORT Input Ci
        BEGIN BLOCKDEF sum1g
            TIMESTAMP 2023 3 6 19 33 36
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 sum1g
            PIN Ci XLXN_3
            PIN Co Co
            PIN S r(3)
            PIN B b(3)
            PIN A a(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 sum1g
            PIN Ci XLXN_4
            PIN Co XLXN_3
            PIN S r(2)
            PIN B b(2)
            PIN A a(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 sum1g
            PIN Ci XLXN_5
            PIN Co XLXN_4
            PIN S r(1)
            PIN B b(1)
            PIN A a(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 sum1g
            PIN Ci Ci
            PIN Co XLXN_5
            PIN S r(0)
            PIN B b(0)
            PIN A a(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1232 816 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1568 816 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1920 816 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2288 816 M90
        END INSTANCE
        BEGIN BRANCH XLXN_3
            WIRE 1200 752 1200 816
            WIRE 1200 752 1296 752
            WIRE 1296 752 1296 1280
            WIRE 1296 1280 1408 1280
            WIRE 1408 1200 1408 1280
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1536 736 1536 816
            WIRE 1536 736 1632 736
            WIRE 1632 736 1632 1280
            WIRE 1632 1280 1760 1280
            WIRE 1760 1200 1760 1280
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1888 736 1888 816
            WIRE 1888 736 1984 736
            WIRE 1984 736 1984 1280
            WIRE 1984 1280 2128 1280
            WIRE 2128 1200 2128 1280
        END BRANCH
        BEGIN BRANCH r(3:0)
            WIRE 992 1504 1200 1504
            WIRE 1200 1504 1536 1504
            WIRE 1536 1504 1888 1504
            WIRE 1888 1504 1904 1504
            WIRE 1904 1504 2256 1504
            WIRE 2256 1504 2320 1504
        END BRANCH
        BUSTAP 1200 1504 1200 1408
        BEGIN BRANCH r(3)
            WIRE 1200 1200 1200 1312
            WIRE 1200 1312 1200 1408
            BEGIN DISPLAY 1200 1312 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1536 1504 1536 1408
        BEGIN BRANCH r(2)
            WIRE 1536 1200 1536 1312
            WIRE 1536 1312 1536 1408
            BEGIN DISPLAY 1536 1312 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1888 1504 1888 1408
        BEGIN BRANCH r(1)
            WIRE 1888 1200 1888 1312
            WIRE 1888 1312 1888 1408
            BEGIN DISPLAY 1888 1312 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2320 1504 r(3:0) R0 28
        BUSTAP 2256 1504 2256 1408
        BEGIN BRANCH r(0)
            WIRE 2256 1200 2256 1312
            WIRE 2256 1312 2256 1408
            BEGIN DISPLAY 2256 1312 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3:0)
            WIRE 976 608 1136 608
            WIRE 1136 608 1472 608
            WIRE 1472 608 1824 608
            WIRE 1824 608 2192 608
            WIRE 2192 608 2336 608
        END BRANCH
        BEGIN BRANCH b(3:0)
            WIRE 976 448 1072 448
            WIRE 1072 448 1408 448
            WIRE 1408 448 1760 448
            WIRE 1760 448 2128 448
            WIRE 2128 448 2320 448
        END BRANCH
        IOMARKER 2320 448 b(3:0) R0 28
        IOMARKER 2336 608 a(3:0) R0 28
        BUSTAP 1072 448 1072 544
        BEGIN BRANCH b(3)
            WIRE 1072 544 1072 784
            WIRE 1072 784 1072 816
            BEGIN DISPLAY 1072 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1408 448 1408 544
        BEGIN BRANCH b(2)
            WIRE 1408 544 1408 768
            WIRE 1408 768 1408 816
            BEGIN DISPLAY 1408 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 448 1760 544
        BEGIN BRANCH b(1)
            WIRE 1760 544 1760 784
            WIRE 1760 784 1760 816
            BEGIN DISPLAY 1760 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2128 448 2128 544
        BEGIN BRANCH b(0)
            WIRE 2128 544 2128 784
            WIRE 2128 784 2128 816
            BEGIN DISPLAY 2128 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2192 608 2192 704
        BEGIN BRANCH a(0)
            WIRE 2192 704 2192 768
            WIRE 2192 768 2192 800
            WIRE 2192 800 2192 816
            BEGIN DISPLAY 2192 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 608 1824 704
        BEGIN BRANCH a(1)
            WIRE 1824 704 1824 768
            WIRE 1824 768 1824 800
            WIRE 1824 800 1824 816
            BEGIN DISPLAY 1824 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1472 608 1472 704
        BEGIN BRANCH a(2)
            WIRE 1472 704 1472 784
            WIRE 1472 784 1472 816
            BEGIN DISPLAY 1472 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1136 608 1136 704
        BEGIN BRANCH a(3)
            WIRE 1136 704 1136 784
            WIRE 1136 784 1136 816
            BEGIN DISPLAY 1136 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Co
            WIRE 1072 1200 1072 1280
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 2256 800 2256 816
            WIRE 2256 800 2352 800
            WIRE 2352 800 2352 816
            WIRE 2352 816 2352 848
        END BRANCH
        IOMARKER 1072 1280 Co R90 28
        IOMARKER 2352 848 Ci R90 28
    END SHEET
END SCHEMATIC
