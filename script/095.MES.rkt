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
        (? (= 197 #f))
        (text "Cole: The lab's gone to hell. Is that Doctor Lisle lying in front of the door?")
        (wait)
        (text-reset 1)
        (text "Steve: If zombies got into the lab, escape was nearly impossible.")
        (set-reg 197 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: Damn, the lab's been overrun...") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 199 #t) (= 201 #t) (= 204 #t))
   (text "Cole: Without knowing the PIN, we can't open the door...")
   (wait)
   (text-reset 1)
   (text "Steve: If Sheila's inside, can she open the door for us?")
   (wait)
   (text-reset 1)
   (text "Cole: That's right. Now that you mention it, that's the only other way to open the door..." 'br)
   (text "*Click*")
   (wait)
   (text-reset 1)
   (text "Cole: ?")
   (wait)
   (text-reset 1)
   (text "Steve: It's open...")
   (wait)
   (text-reset 1)
   (text "Cole: Sheila!?")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥096.MES"))
 (seg (? (= P 5) (= 198 #f))
   (text "Cole: The lab door's locked. I hope Sheila's inside, though...")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 199 #f))
   (text "Cole: Lisle told us that to unlock the door, you need a PIN.")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: Lisle told us that to unlock the door, you need a PIN.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 200 #f))
   (text "Cole: It's Lisle's body...")
   (wait)
   (text-reset 1)
   (text "Steve: He was researching DNV late into the night to help Sheila.")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 201 #f))
   (text "Cole: Look... The gun's still in Lisle's hand.")
   (wait)
   (text-reset 1)
   (text "Steve: Yeah, he always carried it with him.")
   (wait)
   (text-reset 1)
   (text "Cole: No bullets left in the gun. So he took down the two zombies in the hallway with this piece...")
   (wait)
   (text-reset 1)
   (text "Steve: The thought of an egghead like him blasting two zombies...amazing.")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah.")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: I owe Doctor Lisle so much. And there's no way to thank him...")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 202 #f))
   (text "Cole: The computer on the desk has been destroyed. There must have been a hell of a fight in here.")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: There's blood splattered all over the documents and the computer. Lisle's research has come to an end...")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 203 #f))
   (text
    "Steve: There's no escape route from the lab. If we get cornered by zombies here, it's game over.")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah, for real. This room's completely sealed off...")
   (wait)
   (text-reset 1)
   (text "Steve: There were simply too many zombies for them to handle. Lisle didn't stand a chance with one firearm.")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 204 #f))
   (text "Cole: Let's check out the experiment room.")
   (wait)
   (text-reset 1)
   (text "Steve: I'd like to, but we can't get in there without deactivating the door lock.")
   (wait)
   (text-reset 1)
   (text "Cole: In that case, I'm willing to bust it open if need be.")
   (wait)
   (text-reset 1)
   (text "Steve: The door's too sturdy, it's not like we can use a gun to shoot the lock.")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Steve: To enter the experiment room, we need a PIN code to deactivate the lock.")
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