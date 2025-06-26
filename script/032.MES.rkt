(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB057.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 40 5 56 10)
  (exec-mem 3744 1 6 34 5 39 10)
  (exec-mem 3744 1 7 4 9 13 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB057.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (// (? (= 100 #f)) (str "Cole: * Huff * Huff * Okay, made it... These are the docks.") (set-reg 100 #t))
       (//
        (str "Cole: Sheila's in the third warehouse. I've gotta rescue" 'br)
        (str "her, no matter what."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (str "Cole: A row of identical warehouses, numbered one to" 'br)
   (str "thirteen. Sheila should be in the third one.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (str "Cole: All the warehouses are eerily silent. Hardly anyone's" 'br)
   (str "working at this hour of night.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: Sheila's supposedly being held in Warehouse 3. I" 'br)
   (str "can't waste any time saving her.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #f))
   (str "Cole: So that's Warehouse 3... Sheila's gotta be inside.")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 104 #f))
   (str "Cole: The entrance to Warehouse 3 is slightly open, and" 'br)
   (str "there's a light on inside. Whoever took Sheila's in there." 'br)
   (str "Time to nut up and kick the door down.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 105 #f))
   (str "Cole: I've got my piece, so I'm ready to go in. I can't" 'br)
   (str "wait to see Sheila's face... And I can't wait to beat the" 'br)
   (str "hell out of whoever took her.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (str "Cole: I'm trying to listen, but I can't hear any sound from" 'br)
   (str "inside.") (wait) (text-reset 1))
 (seg (? (= P 7) (= 106 #f))
   (str "Cole: To my left is the sea and the sound of the crashing" 'br)
   (str "waves.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: It's pitch dark so I can't see the ocean, but I hear" 'br)
   (str "the sound of the waves.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Cole: I don't care who it is, I can never forgive the" 'br)
   (str "person who took my precious Sheila! I'm dragging his ass to" 'br)
   (str "the cops myself!")
   (wait)
   (text-reset 1)
   (str "Cole: Huh? Wait a minute... The light was on in the" 'br)
   (str "warehouse, but now it's pitch black.")
   (wait)
   (text-reset 1)
   (str "Cole: Hey assholes, it's me! Stop hiding and come out!")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥033.MES"))
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