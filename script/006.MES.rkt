; Dead of the Brain 2 (PC-98) - 006.MES
; Translated by Geometrizer
; Edited by trentsignia
; --Description:--
; Bayside Research Lab entrance.
; --Progression:--
; MOVE
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB013.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 4 4 16 9)							; 	Tree
  (exec-mem 3744 1 6 41 10 48 13)						; 	Barrels
  (exec-mem 3744 1 7 25 5 37 10)						; 	Door
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB013.GPC") (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 163 #f))								; Lead-in from previous MES script
        (str "Cole: The entrance to the Bayside Research Lab. I had a" 'br)
        (str "run-in with a guy named Ghoul here two years ago...he used" 'br)
        (str "this place as his hideout.")
        (wait)
        (text-reset 1)
        (str "Cole: He used the reanimation serum to bring back the dead" 'br)
        (str "and kill off the residents of the town one by one...")
        (wait)
        (text-reset 1)
        (str "Cole: I tried to stop him by force-feeding him a grenade," 'br)
        (str "but he'd already been turned into an android by the lab's" 'br)
        (str "director.")
        (wait)
        (text-reset 1)
        (str "Cole: In the end, my hunter friend Cathy sacrificed herself" 'br)
        (str "by using explosives to send Ghoul straight to hell. But in" 'br)
        (str "the end, Ghoul killed almost everyone I knew.")
        (wait)
        (text-reset 1)
        (str "Cole: The director experimented on Ghoul's corpse with the" 'br)
        (str "reanimation serum, and as it decayed, he replaced its parts" 'br)
        (str "with android components.")
        (wait)
        (text-reset 1)
        (str "Cole: Eventually Ghoul became more machine than man. Once" 'br)
        (str "he realized his own strength, he killed the director and" 'br)
        (str "began pursuing his own ambitions.")
        (wait)
        (text-reset 1)
        (str "Cole: But now that Ghoul is gone, this lab is nothing more" 'br)
        (str "than a ruin.")
        (set-reg 163 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This is the entrance to the Bayside Research Lab.")		; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 164 #f))							; Tree #1
   (str "Cole: That's a big tree. Nobody's tending to it, so its" 'br)
   (str "branches are growing uncontrolled every which way.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 165 #f))							; Tree #2
   (str "Cole: Trees are creepy at night, aren't they? This one adds" 'br)
   (str "to the spooky atmosphere by at least ten percent.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Tree #3 (repeat line)
   (str "Cole: I really have better things to do than look at trees" 'br)
   (str "all night long.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 166 #f))							; Barrel #1
   (str "Cole: There's a metal barrel next to the entrance. Let's" 'br)
   (str "check it out.")
   (wait)
   (text-reset 1)
   (str "Cole: I thought there might have been reanimation serum in" 'br)
   (str "the barrel, but it's empty.")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Barrel #2 (repeat line)
   (str "Cole: It's empty, I don't need to poke around in it anymore.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 167 #f))							; Door #1
   (str "Cole: Judging by all the broken glass, the maintenance" 'br)
   (str "staff got laid off a long time ago.")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 168 #f))							; Door #2
   (str "Cole: Inside this entrance is a factory floor. A perfect" 'br)
   (str "hangout for Bloody Fox lowlifes.")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 169 #f))							; Door #3
   (str "Cole: It's too dark to see what's inside, and I don't know" 'br)
   (str "where the Bloody Fox members are lurking. I'll need to be" 'br)
   (str "extra careful in there.")
   (set-reg 169 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Door #4 (repeat line)
   (str "Cole: The power was probably cut off a long time ago. It's" 'br)
   (str "moonlight or nothing else.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: I can't tell where the Bloody Fox members are" 'br)
   (str "lurking, so I'm gonna have to be real careful.")
   (nop@)
   (set-reg 170 #t)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥007.MES"))
 (seg (? (= P 2))								; SYSTEM
   (exec-mem 6064 2 2)
   (menu1
    25 317  39 317  53 317
    (</> (/ (str "  SAVE  ")) (/ (str "  LOAD  ")) (/ (str " CANCEL "))))
   (text-reset 1)
   (if (</> (// (? (= S 255)) (nop@) (set-var S 2))))
   (branch-var S
    (</>
     (/
      (str "Select Save Number.")
      (menu1
       18 317  32 317  46 317  60 317
       18 337  32 337  46 337  60 337  66 298
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
      (text "　　　　　　　　　　　　　　")
      (str "WAIT....")
      (branch-var S
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
       18 317  32 317  46 317  60 317
       18 337  32 337  46 337  60 337  66 298
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
      (branch-var S
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