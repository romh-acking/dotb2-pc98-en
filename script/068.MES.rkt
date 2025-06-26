(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (if (</>
       (// (? (= 138 #t)) (load-mem "A:¥CLM¥DB114A.CLM" 32768))
       (// (load-mem "A:¥CLM¥DB114.CLM" 32768))))
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 8 9 11)
  (exec-mem 3744 1 6 25 8 29 12)
  (exec-mem 3744 1 7 44 7 47 12)
  (exec-mem 3744 1 8 38 8 41 10)
  (if (</> (// (? (= 138 #t)) (exec-mem 3744 1 9 11 10 16 11))))
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB114.GPC")
  (image-mem 0 3)
  (if (</>
       (// (? (= 138 #t)) (image-file "B:¥GPC¥DB122.GPC") (image-mem 1 3))))
  ((cmd 193) 0 "B:¥GPA¥DB114.GPA")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 127 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (?
         (= 163 #t)
         (= 135 #t)
         (= 137 #t)
         (= 147 #t)
         (= 152 #t)
         (= 156 #t)
         (= 164 #f))
        ((cmd 196) 0 0)
        ((cmd 196) 0 1)
        (delay 6 0)
        ((cmd 196) 0 2)
        (delay 6 0)
        ((cmd 196) 0 3)
        (delay 6 0)
        ((cmd 196) 0 4)
        (delay 6 0)
        ((cmd 196) 0 5)
        (delay 6 0)
        ((cmd 196) 0 6)
        (delay 6 0)
        ((cmd 196) 0 7)
        (text "Cole: Huh? I just saw something ducking into the restroom...")
        (set-reg 164 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 163 #t) (= 135 #t) (= 137 #t) (= 147 #t) (= 152 #t) (= 156 #t))
        (text "Cole: I definitely saw someone. I gotta check out the       restroom.")
        (wait)
        (text-reset 1))
       (//
        (? (= 128 #f))
        (text "Cole: Okay, where am I checking first?")
        (set-reg 128 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: Where should I check next?") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 129 #f))
   (text "Cole: Okay, lemme check the stairs.")
   (set-reg 129 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥069.MES"))
 (seg (? (= P 5))
   (text "Cole: I'll check the stairs one more time.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥069.MES"))
 (seg (? (= P 6) (= 130 #f))
   (text "Cole: Steve said he blasted a zombie in the front office.   Should I make sure it's really dead?")
   (set-reg 130 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥070.MES"))
 (seg (? (= P 6))
   (text "Cole: This is the front office. Those are definitely some   dead zombies courtesy of Steve... Nice shootin', Tex.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥070.MES"))
 (seg (? (= P 7) (= 131 #f))
   (text "Cole: No need to check the elevator, since the power's been cut.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: The elevator hasn't got power, so there's no need to  check it.")
   (wait)
   (text-reset 1))
 (seg (?
       (= P 8)
       (= 163 #t)
       (= 135 #t)
       (= 137 #t)
       (= 147 #t)
       (= 152 #t)
       (= 156 #t)
       (= 164 #f))
   (text "Cole: My eyes weren't deceiving me... Someone definitely    went into that restroom. Better keep my eyes peeled.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥071.MES"))
 (seg (? (= P 8) (= 132 #f))
   (text "Cole: Better check that restroom.")
   (set-reg 132 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥071.MES"))
 (seg (? (= P 8))
   (text "Cole: Better check the restroom again.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥071.MES"))
 (seg (? (= P 9))
   (text "Cole: That's the lady zombie I had to take care of...oof.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥072.MES"))
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
        (/ (nop@) (set-reg 127 #f) (flag-save 1))
        (/ (nop@) (set-reg 127 #f) (flag-save 2))
        (/ (nop@) (set-reg 127 #f) (flag-save 3))
        (/ (nop@) (set-reg 127 #f) (flag-save 4))
        (/ (nop@) (set-reg 127 #f) (flag-save 5))
        (/ (nop@) (set-reg 127 #f) (flag-save 6))
        (/ (nop@) (set-reg 127 #f) (flag-save 7))
        (/ (nop@) (set-reg 127 #f) (flag-save 8))
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