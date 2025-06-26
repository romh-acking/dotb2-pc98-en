(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB073A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 6 50 3 56 14)
  (exec-mem 3744 1 7 4 10 23 15)
  (exec-mem 3744 1 8 15 2 39 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB072.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 133 #f))
        (text "Cole: Hey, Shei--huh?")
        (wait)
        (text-reset 1)
        (text "Cole: Where did she get to?")
        (set-reg 133 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: I guess Sheila hasn't come back to her room yet...") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6) (= 134 #f))
   (text "Cole: Is Sheila taking a shower?")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Nobody's here. I wonder where she went.")
   (set-reg 134 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 135 #f))
   (text
    "Cole: The shower's dry inside. She said she took a shower   last night, but maybe she was lying so I wouldn't worry.")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "Cole: Sheila isn't in the shower. Where'd she go off to? I  wonder if she's upset because I slapped her...")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 136 #f))
   (text "Cole: This bed's neat and tidy, at least ten times nicer    than the one in my room.")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #f))
   (text
    "Cole: I wonder if Sheila can even sleep, the condition she'sin... Well, she's probably trying not to worry me, so I'm certainshe'll be back.")
   (wait)
   (text-reset 1)
   (text "Cole: She won't do anything so reckless ever again...       Probably.")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: But her body's showing a reaction. I'd really prefer  she stay in bed...")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 138 #f))
   (text "Cole: These curtains lack pizazz, but we're in a lab, so I  suppose it's to be expected.")
   (set-reg 138 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: The curtains are closed. If I open them it's pitch    black outside, so best to leave them as is.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: No choice, I guess I'll go out to the hallway.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥085.MES"))
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
        (/ (flag-save 1))
        (/ (flag-save 2))
        (/ (flag-save 3))
        (/ (flag-save 4))
        (/ (flag-save 5))
        (/ (flag-save 6))
        (/ (flag-save 7))
        (/ (flag-save 8))
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