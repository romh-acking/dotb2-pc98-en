(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB143.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 2 22 5)
  (exec-mem 3744 1 6 4 10 19 12)
  (exec-mem 3744 1 7 28 11 33 13)
  (exec-mem 3744 1 8 48 4 56 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB143.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 158 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 159 #f))
        (text "Cole: I've entered the building. It looks like this is the" 'br)
(text "reception area.")
        (set-reg 159 #t))
       (// (text "Cole: This is the first-floor area of Razovan" 'br)
(text "Pharmaceuticals."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 160 #f))
   (text "Cole: That's the reception area, but there's no human" 'br)
(text "presence.")
   (set-reg 160 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 161 #f))
   (text
    "Cole: The reception area's covered by a curtain, so I can't" 'br)
"see inside. If anyone were there, they would have noticed me" 'br)
"when I opened the door.")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 162 #f))
   (text
    "Cole: The reception desk is covered in dust. Nobody's been" 'br)
"here for a while.")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: There's nobody in the reception area. Well, I didn't" 'br)
(text "expect to find anyone this soon, anyway...")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 163 #f))
   (text "Cole: There's a large sofa here. The leather's all cracked." 'br)
(text "Nobody's been keeping an eye on the furniture.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: This sofa's filthy... If you sat down on it, your butt" 'br)
(text "would turn white from the dust.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 164 #f))
   (text "Cole: There's a cheap ashtray on the table.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 165 #f))
   (text "Cole: At least it's covered in dust, and not cigarette" 'br)
(text "butts.")
   (wait)
   (text-reset 1)
   (text "Cole: My fingertips turn white when I touch it.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: There's a ton of dust on this table and ashtray.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 166 #f))
   (text
    "Cole: This must be the staircase that leads to the second" 'br)
"floor. This building appears to be old and doesn't have an" 'br)
"elevator, so it's the stairs or nothing.")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 167 #f))
   (text "Cole: Huh? There are several footprints left on the stairs.")
   (wait)
   (text-reset 1)
   (text "Cole: There are two sets of footprints, a larger and smaller" 'br)
(text "pair. The larger ones are probably Steve's.")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text
    "Cole: It looks like Steve climbed these stairs... And the" 'br)
"smaller pair is probably Daniel's.")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 161 #t) (= 168 #t))
   (exec-mem 6064 2 1)
   (text "Cole: I've gotta find Steve, stat.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥091.MES"))
 (seg (? (= P 2))
   (text-reset 1)
   (exec-mem 6064 2 2)
   (menu1
    25
    317
    39
    317
    53
    317
    (</> (/ (str "  SAVE  ")) (/ (str "  LOAD  ")) (/ (str " CANCEL "))))
   (text-reset 1)
   (if (</> (// (? (= S 255)) (nop@) (set-var S 2))))
   (branch-var
    S
    (</>
     (/
      (str "Select Save Number.")
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
        (/ (str " SAVE No.1 "))
        (/ (str " SAVE No.2 "))
        (/ (str " SAVE No.3 "))
        (/ (str " SAVE No.4 "))
        (/ (str " SAVE No.5 "))
        (/ (str " SAVE No.6 "))
        (/ (str " SAVE No.7 "))
        (/ (str " SAVE No.8 "))
        (/ (str "[CANCEL]"))))
      (text-reset 1)
      (if (</> (// (? (= S 255)) (nop@) (set-var S 8))))
      (text #:col 15 'br)
      (text "　　　　　　　　　　　　　")
      (str "WAIT....")
      (branch-var
       S
       (</>
        (/ (nop@) (set-reg 158 #f) (flag-save 1))
        (/ (nop@) (set-reg 158 #f) (flag-save 2))
        (/ (nop@) (set-reg 158 #f) (flag-save 3))
        (/ (nop@) (set-reg 158 #f) (flag-save 4))
        (/ (nop@) (set-reg 158 #f) (flag-save 5))
        (/ (nop@) (set-reg 158 #f) (flag-save 6))
        (/ (nop@) (set-reg 158 #f) (flag-save 7))
        (/ (nop@) (set-reg 158 #f) (flag-save 8))
        (/ (nop@)))))
     (/
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
      (text-reset 1)
      (if (</> (// (? (= S 255)) (nop@) (set-var S 8))))
      (exec-mem 6064 3)
      (branch-var
       S
       (</>
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))