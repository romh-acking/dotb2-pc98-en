; Dead of the Brain 2 (PC-98) - MUSIC.MES
; Edited by trentsignia
; --Description:--
; Music Mode. The only change made here is to replace square brackets with quotation marks.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t)) ; MUSIC.MES: 
 (seg*
  (loop
   (text-frame 2 284 78 340)
   (text-reset 0)
   (menu1
    2
    300
    11
    300
    20
    300
    29
    300
    38
    300
    47
    300
    56
    300
    65
    300
    2
    320
    11
    320
    20
    320
    29
    320
    38
    320
    47
    320
    56
    320
    65
    320
    0
    0
    (</>
     (/ (str " BR2_01 "))
     (/ (str " BR2_02 "))
     (/ (str " BR2_03 "))
     (/ (str " BR2_04 "))
     (/ (str " BR2_05 "))
     (/ (str " BR2_06 "))
     (/ (str " BR2_07 "))
     (/ (str " BR2_08 "))
     (/ (str " BR2_09 "))
     (/ (str " BR2_10 "))
     (/ (str " BR2_11 "))
     (/ (str " BR2_12 "))
     (/ (str " BR2_13 "))
     (/ (str " BR2_14 "))
     (/ (str " B0NOPN "))
     (/ (str " CANCEL "))
     (/ (str " "))))
   (sound '|| 0)
   (if (</> (// (? (= S 255)) (nop@) (set-var S 15))))
   (branch-var
    S
    (</>
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_01.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_01.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_02.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_03.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_04.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_05.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_05.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_06.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_07.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_08.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_09.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_10.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_10.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_11.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_11.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_12.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_12.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_13.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_14.USO"))
           (// (sound '|| "A:¥USO_D¥BR2_14.USO")))))
     (/
      (if (</>
           (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥B0NOPN.USO"))
           (// (sound '|| "A:¥USO_D¥B0NOPN.USO")))))
     (/ (text-reset 0) ((cmd 212)))
     (/ (nop@) (set-var T 5) (seg-call))))
   (sound '|| 1)
   (wait)
   (sound '|| 2)))
 (seg (? (= T 5))
   (text-frame 0 0 1 20)
   (text-reset 0)
   (text-frame 16 20 60 200)
   (text-reset 0)
   (text #:col 15 'br)
   (text 'br)
   (text 'br)
   (str "  NIGHTMARE COLLECTION “DEAD OF THE BRAIN”")
   (str "         DAY OF THE LIVING DEAD...")
   (loop
    (text-frame 2 284 78 340)
    (text-reset 0)
    (menu1
     2
     320
     11
     320
     20
     320
     29
     320
     38
     320
     47
     320
     56
     320
     65
     320
     (</>
      (/ (str " BR1_01 "))
      (/ (str " BR1_02 "))
      (/ (str " BR1_03 "))
      (/ (str " BR1_04 "))
      (/ (str " BR1_05 "))
      (/ (str " BR1_06 "))
      (/ (str " BR1_07 "))
      (/ (str " CANCEL "))))
    (if (</> (// (? (= S 255)) (nop@) (set-var S 7))))
    (branch-var
     S
     (</>
      (/ (sound '|| "A:¥USO_V¥B0N_02.USO"))
      (/ (sound '|| "A:¥USO_V¥B0N_03.USO"))
      (/ (sound '|| "A:¥USO_V¥B0N_04.USO"))
      (/ (sound '|| "A:¥USO_V¥B0N_05.USO"))
      (/ (sound '|| "A:¥USO_V¥B0N_06.USO"))
      (/ (sound '|| "A:¥USO_V¥B0N_07.USO"))
      (/ (sound '|| "A:¥USO_V¥B0N_08.USO"))
      (/
       (text-frame 2 284 78 340)
       (text-reset 0)
       (text-frame 16 20 60 200)
       (text-reset 0)
       (text #:col 15 'br)
       (text 'br)
       (text 'br)
       (str " NIGHTMARE COLLECTION“DEAD OF THE BRAINⅡ”")
       (str "        RETURN OF THE LIVING DEAD...")
       ((cmd 212)))))
    (sound '|| 1)
    (wait)
    (sound '|| 2)))
 (seg*))