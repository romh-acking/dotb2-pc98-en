(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))								; INIT.MES: Initialization and main menu
 (seg*
  ((cmd 206) 0 0)																; Game startup stuff
  ((cmd 206) 1 1)
  ((cmd 203) 5 1)
  ((cmd 203) 5 4)
  (flag-load 0 1)
  ((cmd 203) 0 0)
  ((cmd 203) 1 1)
  ((cmd 203) 2 "A:¥CLM¥ADV98V.G16")
  ((cmd 203) 5 16)
  (mouse 3 0 0)
  (text-frame 0 0 79 399)
  (text-reset 0)
  (load-mem "A:¥TCM¥PALCH.TCM" 256)
  (load-mem "A:¥TCM¥ACTE.TCM" 912)
  (load-mem "A:¥TCM¥MOUSECSR.TCM" 3472)
  (exec-mem 3472 1 0)
  (load-mem "A:¥TCM¥pclickh.tcm" 3744)
  (load-mem "A:¥TCM¥ICON3H.TCM" 6064)
  (load-mem "A:¥CLM¥BRAIN2.DAT" 9408)
  (exec-mem 6064 0 9408)
  (load-mem "A:¥TCM¥TMASKH.TCM" 9920)
  (load-mem "A:¥TCM¥WHITEH.TCM" 14544)
  (load-mem "A:¥TCM¥PUSHPALH.TCM" 15456)
  (load-mem "A:¥TCM¥DB2COUNT.TCM" 15728)
  (exec-mem 15728 0 0 0 0 0 1 "A:¥CLM¥db2num.dat")
  (load-mem "A:¥TCM¥VPALH.TCM" 17408)
  (exec-mem
   17408
   0
   0
   12448
   16496
   12432
   16496
   12416
   16480
   12400
   16464
   12384
   16448
   12368
   16432
   12352
   16416
   12336
   16400
   12320
   16384
   12320
   16384
   12336
   16400
   12352
   16416
   12368
   16432
   12384
   16448
   12400
   16464
   12416
   16480
   12432
   16496
   12448
   16496)
  (exec-mem
   17408
   1
   0
   "P0 P1 T1 P2 P3 T1 P4 P5 T1 P6 P7 T1 P8 P9 T1 P10 P11 T1 P12 P13 T1 P14 P15 T1 P16 P17 T1 P18 P19 T1 P20 P21 T1 P22 P23 T1 P24 P25 T1 P26 P27 T1 P28 P29 T1 P30 P31 T1 P32 P33 T1 P34 P35 T1")
  (load-mem "A:¥TCM¥SCRH.TCM" 19216)
  (load-mem "A:¥TCM¥INPUTNAM.TCM" 21920)
  (load-mem "A:¥TCM¥APPEARH.TCM" 23216)
  (load-mem "A:¥TCM¥DELTA.TCM" 24896)
  (load-mem "A:¥TCM¥ROLL.TCM" 27088)
  (load-mem "A:¥CLM¥STAFF.DAT" 28032)
  (load-mem "A:¥TCM¥DB2CLS.TCM" 29792)
  (mes-load? "A:¥MES¥MUSIC.MES" 0)
  (define-proc 0 (<>))
  (define-proc 1 (<>))
  (define-proc 2 (<>))
  (define-proc 3 (<>))
  (define-proc 4 (<>))
  (define-proc 5 (<>))
  (define-proc 6 (<>))
  (define-proc 7 (<>))
  (define-proc 8 (<>))
  (define-proc 9 (<>))
  (define-proc 10 (<>))
  (define-proc 11 (<>))
  (define-proc 12 (<>))
  (define-proc 13 (<>))
  (define-proc 14 (<>))
  (define-proc 15 (<>))
  (define-proc 16 (<>))
  (define-proc 17 (<>))
  (define-proc 18 (<>))
  (define-proc 19 (<>))
  (text 'br)																	; Music board selection screen starts here
  (text 'br)
  (text 'br)
  (text 'br)
  (text "　　　　　　")
  (str "Please select the type of music board.")
  (text 'br)
  (text 'br)
  (text 'br)
  (text "　　　□")
  (str "External music board")
  (text 'br)
  (str
   "                                                     VM･VX･RX･RA etc..")
  (text 'br)
  (text 'br)
  (text "　　　□")
  (str "Internal music board")
  (text 'br)
  (str
   "                                                     DX･DS･DA･UX etc..")
  (menu1 6 140 6 200 (</> (/ (str "□")) (/ (str "□"))))
  (text-reset 0)
  (branch-var
   S
   (</>
    (/ (sound '|se | "A:¥USO_V¥BRAIN2_V.SE") (nop@) (set-reg 900 #f))
    (/ (sound '|se | "A:¥USO_D¥BRAIN2_D.SE") (set-reg 900 #t))))
  (text-frame 0 0 79 399)														; Disclaimers start here
  (text-reset 0)
  (text-color 2)
  ((cmd 209) 0)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (str "      The individuals, groups and events that are depicted are fictitious." 'br)
  (str "      Any similarity to actual persons, living or dead, is unintentional." 'br)
  (exec-mem 256 2 0 0 0)
  (delay 3)
  (exec-mem 256 2 2 0 0)
  (delay 3)
  (exec-mem 256 2 4 0 0)
  (delay 3)
  (exec-mem 256 2 6 0 0)
  (delay 3)
  (exec-mem 256 2 8 0 0)
  (delay 3)
  (exec-mem 256 2 10 0 0)
  (delay 3)
  (exec-mem 256 2 12 0 0)
  (delay 200)
  (exec-mem 256 2 12 0 0)
  (delay 3)
  (exec-mem 256 2 10 0 0)
  (delay 3)
  (exec-mem 256 2 8 0 0)
  (delay 3)
  (exec-mem 256 2 6 0 0)
  (delay 3)
  (exec-mem 256 2 4 0 0)
  (delay 3)
  (exec-mem 256 2 2 0 0)
  (delay 3)
  (exec-mem 256 2 0 0 0)
  (text-reset 0)
  ((cmd 209) 0)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (text 'br)
  (str "           This work is based on the story of the seventh (and final)" 'br)
  (str "                          chapter of Dead of the Brain.")
  (exec-mem 256 2 0 0 0)
  (delay 3)
  (exec-mem 256 2 0 2 2)
  (delay 3)
  (exec-mem 256 2 0 4 4)
  (delay 3)
  (exec-mem 256 2 0 6 6)
  (delay 3)
  (exec-mem 256 2 2 8 8)
  (delay 3)
  (exec-mem 256 2 4 10 10)
  (delay 3)
  (exec-mem 256 2 6 12 12)
  (delay 3)
  (exec-mem 256 2 8 12 12)
  (delay 3)
  (exec-mem 256 2 10 12 12)
  (delay 3)
  (exec-mem 256 2 12 12 12)
  (delay 300)
  (exec-mem 256 2 12 12 12)
  (delay 3)
  (exec-mem 256 2 10 10 10)
  (delay 3)
  (exec-mem 256 2 8 8 8)
  (delay 3)
  (exec-mem 256 2 6 6 6)
  (delay 3)
  (exec-mem 256 2 4 4 4)
  (delay 3)
  (exec-mem 256 2 2 2 2)
  (delay 3)
  (exec-mem 256 2 0 0 0)
  (text-reset 0)
  (text-frame 0 0 79 399)
  (text-reset 0)
  ((cmd 209) 1)
  (if (</>
       (//
        (? (= 0 #f))															; Name entry screen... this should be dummied out if not already
        (text #:col 15 'br)
        (text 'br)
        (text 'br)
        (text 'br)
        (text 'br)
        (text 'br)
        (text 'br)
        (text "　　")
        (str "Please enter your name.")
        (exec-mem 21920 0 0 6 20 360 "　ＹＯＵ　" 15 0)
        (nop@)
        (set-reg 0 #t)
        (flag-save 0)
        (text-reset 0))))
  ((cmd 210))
  (loop
   (text-frame 16 20 60 200)													; Main menu starts here
   (text-reset 0)
   (text #:col 15 'br)
   (text 'br)
   (text 'br)
   (str " NIGHTMARE COLLECTION“DEAD OF THE BRAINⅡ”")
   (str "        RETURN OF THE LIVING DEAD...")
   (text-frame 17 284 76 340)
   (text-reset 0)
   (menu1
    19
    300
    33
    300
    47
    300
    (</>
     (/ (str "  NEW GAME  "))
     (/ (str " LOAD GAME "))
     (/ (str " MUSIC MODE "))))
   (text-reset 0)
   (branch-var
    S
    (</>
     (/ (nop@) (set-var Q 0) (seg-call))
     (/ (nop@) (set-var Q 1) (seg-call))
     (/ (nop@) (set-var Q 2) (seg-call))))))
 (seg (? (= Q 0))																; NEW GAME option
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥B0NOPN.USO"))
        (// (sound '|| "A:¥USO_D¥B0NOPN.USO"))))
   (sound '|| 1)
   (delay 250)
   ((cmd 209) 0 5)
   (text-frame 0 0 79 399)
   (text-reset 0)
   (mes-jump "A:¥MES¥OPENNING.MES"))
 (seg (? (= Q 1))																; LOAD GAME option
   (str "Select Load Number.")
   (menu1
    18
    317
    32
    317
    46
    317
    60
    317
    18
    337
    32
    337
    46
    337
    60
    337
    66
    298
    (</>
     (/ (str " LOAD No.1 "))
     (/ (str " LOAD No.2 "))
     (/ (str " LOAD No.3 "))
     (/ (str " LOAD No.4 "))
     (/ (str " LOAD No.5 "))
     (/ (str " LOAD No.6 "))
     (/ (str " LOAD No.7 "))
     (/ (str " LOAD No.8 "))
     (/ (str "[CANCEL]"))))
   (branch-var
    S
    (</>
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 1))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 2))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 3))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 4))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 5))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 6))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 7))
     (/
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10)
      (flag-load 8)
      ((cmd 209) 0 5)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (text-frame 15 298 74 356)
      (text-color 15)
      (image-file "A:¥GPC¥DB_FRM.GPC")
      (image-mem 0)
      (exec-mem 9920 0 6 6 113 64 0)
      ((cmd 209) 1 10))
     (/ (nop@))))
   (text-frame 15 298 74 356)
   (text-reset 0))
 (seg (? (= Q 2))																; MUSIC MODE option (goes to MUSIC.MES)
   (text-reset 0)
   (mes-load? 0)
   (text-frame 0 0 1 20)
   (text-reset 0))
 (seg*))