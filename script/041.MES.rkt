(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (nop@)
  (set-reg 123 #t)
  (load-mem "A:¥CLM¥DB108.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 10 36 14)
  (exec-mem 3744 1 6 17 2 42 9)
  (exec-mem 3744 1 7 51 4 54 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 124 #f))
        (text "Cole: There's nobody in here, so this room is vacant.")
        (set-reg 124 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: This room was vacant...") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 125 #f))
   (text "Cole: There's just one bed in here. The sheets aren't       wrinkled, so they must have been changed recently.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 126 #f))
   (text "Cole: By god, this is one immaculate bed.")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: The lab staff probably used this bed for quick naps.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 127 #f))
   (text "Cole: It's pitch black outside. The streets are probably    crawling with those brain-sucking zombie freaks by now.")
   (set-reg 127 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 128 #f))
   (text "Cole: We're on the second floor, and zombies can't climb up here. Probably.")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Cole: I really don't need to mess with these curtains.") (wait) (text-reset 1))
 (seg (? (= P 7) (= 129 #f))
   (text "Cole: There's a calendar on the wall. It's still on July.")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 130 #f))
   (text "Cole: If the calendar's still on July, that means someone   was using this room four months ago.")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 131 #f))
   (text
    "Cole: There's marks on the calendar dates. Circles, crosses and 'G13,'  whatever that means.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: Not much more I can say about this ordinary calendar.") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: Nothing of interest in this room, let's go back to thehallway.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
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