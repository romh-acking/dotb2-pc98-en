(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB161.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 10 8 15 12)
  (exec-mem 3744 1 6 11 12 19 13)
  (exec-mem 3744 1 7 26 9 30 11)
  (exec-mem 3744 1 8 38 2 44 6)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB161.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB071.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 100 #f))
        (text "Steve: Is Doctor Cooger...?")
        (wait)
        (text-reset 1)
        (text "Cole: He's at rest, Steve, and he's not going to wake up again.")
        (wait)
        (text-reset 1)
        (text "Steve: I see...")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (//
        (text "Steve: Cole... Don't let this bring you down.")
        (wait)
        (text-reset 1)
        (text "Cole: I'll try to keep it together.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text "Cole: When I was talking with Doc, as odd as it might sound, I felt a real warmth in those words.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: That glass case with Doc's brain... I shattered it, Steve. Nobody will revive him ever again.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 102 #f))
   (text "Cole: Doctor Lisle let me talk with Doc one last time. I wish I could have thanked him before he died.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #f))
   (text "Cole: I can't depend on Lisle anymore. But we need to carry on the right ourselves.")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: Doctor Lisle once used this computer for his research. It's been battered so badly I doubt any data remains.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 104 #f))
   (text
    "Cole: Doctor Lisle's busted computer. No longer usable.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: Is this the end of Dr. Lisle's research, I wonder...") (wait) (text-reset 1))
 (seg (? (= P 8) (= 101 #t) (= 107 #t))
   (text "Steve: Where exactly did Dr. Cooger drop the bag with the DNV cure?")
   (wait)
   (text-reset 1)
   (text "Cole: At the cemetery in the neighboring town, while we were getting chased by a zombie cop named Jack. ...I guess you had to be there.")
   (wait)
   (text-reset 1)
   (text "Steve: In any case, finding that cure takes priority.")
   (wait)
   (text-reset 1)
   (text "Cole: Steve, I'm headed to the cemetery by myself.")
   (wait)
   (text-reset 1)
   (text "Steve: By yourself? That's dangerous.")
   (wait)
   (text-reset 1)
   (text "Cole: No, it's just that... If somehow, Sheila starts to...change...")
   (wait)
   (text-reset 1)
   (text "Steve: ...")
   (wait)
   (text-reset 1)
   (text "Steve: Understood.")
   (wait)
   (text-reset 1)
   (text "Steve: Leave Sheila to me. And then we'll go get Jill.")
   (wait)
   (text-reset 1)
   (text "Cole: Right. I'll leave you to it.")
   (wait)
   (text-reset 1)
   (text "Steve: Be careful, Cole.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   ((cmd 206) 1 3)
   (mes-jump "A:¥MES¥098.MES"))
 (seg (? (= P 8) (= 105 #f))
   (text "Cole: Where's Sheila?")
   (wait)
   (text-reset 1)
   (text
    "Steve: I put her to bed in her room. With the DNV attacking her body, you'd better get that cure, and fast.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))
   (text
    "Steve: When I first heard about Dr. Cooger, I immediately understood he was a remarkable fellow.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: For Doc's sake, we need to track down Jill as soon as possible.")
   (wait)
   (text-reset 1)
   (text "Steve: But just going on the name 'Jill' will be tricky. How to find him...")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
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