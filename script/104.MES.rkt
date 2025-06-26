(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB180.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 18 3 33 8)
  (exec-mem 3744 1 6 21 10 30 11)
  (exec-mem 3744 1 7 46 3 56 7)
  (exec-mem 17408 0 0 53798 57344 53800 61439 53798 57344)
  (exec-mem 17408 1 0 "P0 P1 T300 P2 P3 T4 P4 P5")
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB180.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 9)
  (if (</>
       (//
        (? (= 100 #f))
        (text "Steve: The rain sure is coming down.")
        (wait)
        (text-reset 1)
        (text "Cole: So this is the Lasnew Building...")
        (wait)
        (text-reset 1)
        (text "Steve: I've heard the stories, but this is my first time here.")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (//
        (text "Cole: So Jill is in there.")
        (wait)
        (text-reset 1)
        (text "Steve: Yeah. Let's settle the score as quickly as we can.")
        (wait)
        (text-reset 1))))
  (loop
   (exec-mem 17408 2)
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (text-reset 1)
   (exec-mem 17408 3)
   (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text "Cole: This building's in rough shape. I can't believe this is Bloody Fox's HQ.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (text
    "Steve: I heard the building's owner is Japanese. He was taking his sweet time trying to sell it, then Bloody Fox just swept in and claimed it for themselves.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1)
   (text "Cole: Poor guy.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 103 #f))
   (text "Cole: In any case, we're gonna have to get inside.")
   (wait)
   (text-reset 1)
   (text "Steve: You locked and loaded?")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah, and I've got plenty of ammo.")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "Steve: We're ready, so we can bust in at any time.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 104 #f))
   (text "Cole: That's the entrance to the building, but it sure looks like it's falling apart.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 105 #f))
   (text "Cole: Nobody's coming or going...")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: Is the front the only entrance?")
   (wait)
   (text-reset 1)
   (text "Steve: Probably.. If there are Bloody Fox members inside, we won't be able to get out unless we take them all down.")
   (wait)
   (text-reset 1)
   (text "Cole: Those guys have a strong sense of camaraderie, don't they.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 106 #f))
   (text "Cole: Hell of a storm...")
   (wait)
   (text-reset 1)
   (text "Steve: Yeah, being out in the rain is less than ideal.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 107 #f))
   (text "Steve: I had to be careful driving in the rain.")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I see lightning... We shouldn't stay outside much longer.")
   (wait)
   (text-reset 1)
   (text "Steve: Agreed. Let's get inside quick.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Steve: Let's run to the entrance.")
   (wait)
   (text-reset 1)
   (text "Cole: Okay.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 17408 3)
   (mes-jump "A:¥MES¥105.MES"))
 (seg (? (= P 2))
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
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))