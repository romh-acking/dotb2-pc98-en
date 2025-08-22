; Dead of the Brain 2 (PC-98) - 072.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Close-up with the zombie Cole shot down at the foot of the stairs, on the first floor of the institute.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB121.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 39 3 49 7)							; 	Head
  (exec-mem 3744 1 6 28 5 36 8)							; 	Chest
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB121.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 133 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (str "Cole: The bullet hit her straight in the forehead.")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 157 #f))							; Head #1
   (str "Cole: I'm not getting any kicks looking at this dead lady," 'br)
   (str "seriously.")
   (set-reg 157 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 158 #f))							; Head #2
   (str "Cole: The bullet hole in her head is surrounded by blood" 'br)
   (str "and purple reanimation serum.")
   (set-reg 158 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 159 #f))							; Head #3
   (str "Cole: Judging by the corpse, it doesn't seem like much" 'br)
   (str "time's passed since she turned into a zombie.")
   (wait)
   (text-reset 1)
   (str "Cole: Hmmm... besides the entry wound, I don't see any" 'br)
   (str "other injuries on her body.")
   (wait)
   (text-reset 1)
   (str "Cole: No doubt about it, this is the reanimation serum's" 'br)
   (str "dirty work... Or rather, she was injected with Purple Sky" 'br)
   (str "loaded with DNV. To do that to a young woman...")
   (wait)
   (text-reset 1)
   (str "Cole: ... I can't forgive them...")
   (set-reg 159 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Head #4
   (str "Cole: This woman turned into a zombie after being injected" 'br)
   (str "with the drug... It's all Daniel's fault for making the" 'br)
   (str "Purple Sky.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 159 #t) (= 162 #f))						; Chest (after looking at head) #1
   (str "Cole: Huh? There's a purple blotch on her chest... I heard" 'br)
   (str "that after death, blood can pool on the body's surface..." 'br)
   (str "But could it be that the drug leaked out from the inside?")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 159 #t))							; Chest (after looking at head) #2
   (str "Cole: There's a weird purple stain on her chest.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 160 #f))							; Chest #1
   (str "Cole: This zombie doesn't seem to be decaying at all... The" 'br)
   (str "preservative in the serum is probably keeping the rot from" 'br)
   (str "setting in.")
   (set-reg 160 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Chest #2
   (str "Cole: The body won't decay until the effects of the drug" 'br)
   (str "wear off. Leaving it be for a while shouldn't be a problem.")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: I need to investigate somewhere else.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 133 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥068.MES"))
 (seg (? (= P 2))								; SYSTEM
   (text-reset 1)
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
      (text "　　　　　　　　　　　　　")
      (str "WAIT....")
      (branch-var S
       (</>
        (/ (nop@) (set-reg 133 #f) (flag-save 1))
        (/ (nop@) (set-reg 133 #f) (flag-save 2))
        (/ (nop@) (set-reg 133 #f) (flag-save 3))
        (/ (nop@) (set-reg 133 #f) (flag-save 4))
        (/ (nop@) (set-reg 133 #f) (nop@) (set-reg 133 #f) (flag-save 5))
        (/ (nop@) (set-reg 133 #f) (flag-save 6))
        (/ (nop@) (set-reg 133 #f) (flag-save 7))
        (/ (nop@) (set-reg 133 #f) (flag-save 8))
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