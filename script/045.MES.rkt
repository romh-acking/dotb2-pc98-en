; Dead of the Brain 2 (PC-98) - 045.MES
; Translated by Geometrizer
; Edited by trentsignia
; --Description:--
; Inside the wrecked Shuffle Food.
; --Progression:--
; Inspect everything.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB076.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 4 10 14 15)						; 	Counter
  (exec-mem 3744 1 6 44 10 49 11)						; 	Right Bloody Fox
  (exec-mem 3744 1 7 15 9 26 15)						; 	Bodies
  (exec-mem 3744 1 8 22 5 39 8)							; 	Window
  (exec-mem 3744 1 9 31 14 44 15)						; 	Left Bloody Fox
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB076.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 159 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 160 #f))								; Lead-in from previous MES script
        (str "Cole: Christ almighty! The stink of death is overpowering." 'br)
        (str "I can't loiter in here.")
        (set-reg 160 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: I'm inside the Shuffle Food.")				; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 162 #t) (= 165 #t) (= 167 #t))				; Counter (after inspecting everything)
   (str "???: Ohhh... Argh...")
   (wait)
   (text-reset 1)
   (str "Cole: Oh my shit! Is that a zombie?")
   (wait)
   (text-reset 1)
   (str "???: *Sniffle* Hnnf... Urgh...")
   (wait)
   (text-reset 1)
   (str "Cole: Wait, no, that's a woman crying!")
   (wait)
   (text-reset 1)
   (str "Cole: Is someone there? Hey! Where are you!")
   (wait)
   (text-reset 1)
   (str "???: Here...over here...")
   (wait)
   (text-reset 1)
   (str "Cole: She's behind there!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥046.MES"))
 (seg (? (= P 5) (= 161 #f))							; Counter #1
   (str "Cole: There's a counter in the front. Nothing noteworthy" 'br)
   (str "here.")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 162 #f))							; Counter #2
   (str "Cole: There's no bodies behind the counter. It looks like" 'br)
   (str "the mass killing happened out on the main dining room floor.")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Counter #3 (repeat line)
   (str "Cole: Busted plates and glasses are all over the floor.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 163 #f))							; Right Bloody Fox #1
   (str "Cole: Bodies of Bloody Fox members... Weird, you wouldn't" 'br)
   (str "expect them to eat somewhere like this.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 164 #f))							; Right Bloody Fox #2
   (str "Cole: These dead Bloody Fox members aren't gonna cause any" 'br)
   (str "trouble, so I can't complain.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Right Bloody Fox #3 (repeat line)
   (str "Cole: Bloody Fox in a family restaurant, huh? Maybe they're" 'br)
   (str "making a killing dealing Purple Sky and were living it up" 'br)
   (str "with milkshakes and fried onions.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 166 #f))							; Bodies #1
   (str "Cole: Customers and staff alike are all over the place," 'br)
   (str "extremely dead.")
   (wait)
   (text-reset 1)
   (str "Cole: Huh? Some decomposed bodies here too... Probably" 'br)
   (str "zombie corpses.")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 167 #f))							; Bodies #2
   (str "Cole: Looking at these stacks of bodies isn't doing my" 'br)
   (str "mental health any favors. I don't see anyone who looks like" 'br)
   (str "Catherine.")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Bodies #3 (repeat line)
   (str "Cole: The stench of death is dancing inside my nostrils..." 'br)
   (str "That nasty funk and the smell of blood. I'm gonna hurl.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 168 #f))							; Window #1
   (str "Cole: Zombies don't care if panes of glass are between them" 'br)
   (str "and their victims, they're coming in regardless.")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 169 #f))							; Window #2
   (str "Cole: It wasn't just one or two zombies that got in here..." 'br)
   (str "It was a damn battalion.")
   (set-reg 169 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Window #3 (repeat line)
   (str "Cole: I guess the zombies didn't stick around... They must" 'br)
   (str "have moved on to more live targets.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 163 #f))							; Left Bloody Fox #1 (shares flags with other Bloody Fox)
   (str "Cole: Bodies of Bloody Fox members... Weird, you wouldn't" 'br)
   (str "expect them to eat somewhere like this.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 164 #f))							; Left Bloody Fox #2
   (str "Cole: These dead Bloody Fox members aren't gonna cause any" 'br)
   (str "trouble, so I can't complain.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))								; Left Bloody Fox #3 (repeat line)
   (str "Cole: Bloody Fox in a family restaurant, huh? Maybe they're" 'br)
   (str "making a killing dealing Purple Sky and were living it up" 'br)
   (str "with milkshakes and fried onions.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 2))								; SYSTEM
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
        (/ (nop@) (set-reg 159 #f) (flag-save 1))
        (/ (nop@) (set-reg 159 #f) (flag-save 2))
        (/ (nop@) (set-reg 159 #f) (flag-save 3))
        (/ (nop@) (set-reg 159 #f) (flag-save 4))
        (/ (nop@) (set-reg 159 #f) (flag-save 5))
        (/ (nop@) (set-reg 159 #f) (flag-save 6))
        (/ (nop@) (set-reg 159 #f) (flag-save 7))
        (/ (nop@) (set-reg 159 #f) (flag-save 8))
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