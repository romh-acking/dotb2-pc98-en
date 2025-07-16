; Dead of the Brain 2 (PC-98) - 084.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Back in the lab.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (if (</>
       (// (? (= 901 #t) (= 124 #f)) (load-mem "A:¥CLM¥DB043.CLM" 32768))
       (// (load-mem "A:¥CLM¥DB043A.CLM" 32768))))
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 16 3 21 7)							; 	Lisle
  (if (</> (// (? (= 901 #t) (= 124 #f)) (exec-mem 3744 1 6 38 2 44 6))))	; 	Steve
  (exec-mem 3744 1 7 25 2 34 7)							; 	Lab
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (if (</>
       (//
        (? (= 901 #t) (= 124 #f))
        (image-file "B:¥GPC¥DB071.GPC")
        (image-mem 1 3))))
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 901 #t) (= 124 #f) (= 117 #f))					; Lead-in from previous MES file (reviving Doc)
        (str "Lisle: Wow, nice work bringing him back.")
        (wait)
        (text-reset 1)
        (str "Cole: Pant, pant... That was a hefty weight to be lugging" 'br)
        (str "around...")
        (set-reg 117 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 901 #t) (= 124 #f))						; Lead-in from second visit onwards (reviving Doc)
        (str "Steve: Cole, how are you and Sheila doing?")
        (wait)
        (text-reset 1))
       (//
        (str "Cole: Huh? Where's Steve?")					; Lead-in (when not reviving Doc, or after talking to Steve)
        (wait)
        (text-reset 1)
        (str "Lisle: He headed out a little while ago.")
        (set-reg 150 #t)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 150 #t) (= 121 #f))						; Lisle (after talking to Steve and returning) #1
   (str "Cole: Steve... Where are you at, man?")
   (wait)
   (text-reset 1)
   (str "Lisle: I couldn't tell you.")
   (wait)
   (text-reset 1)
   (str "Cole: So that's how it is...")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 150 #t))							; Lisle (after talking to Steve and returning) #2 
   (str "Lisle: I heard a car leaving earlier, so he probably headed" 'br)
   (str "into town again.")
   (wait)
   (text-reset 1)
   (str "Cole: Back to town, huh?")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 118 #f))							; Lisle #1
   (str "Lisle: That must have been hard work. Get some rest.")
   (wait)
   (text-reset 1)
   (str "Cole: How long will it take to revive Doc?")
   (wait)
   (text-reset 1)
   (str "Lisle: Well, I can have things ready in about three hours," 'br)
   (str "give or take.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 119 #f))							; Lisle #2
   (str "Cole: Will Doc's brain be intact?")
   (wait)
   (text-reset 1)
   (str "Lisle: It does show weak brainwaves, but it's aged, so we" 'br)
   (str "need to work quickly. If the brainwaves stop, it's all" 'br)
   (str "over.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 120 #f))							; Lisle #3
   (str "Cole: The bullet I shot him with is probably still in Doc's" 'br)
   (str "brain...")
   (wait)
   (text-reset 1)
   (str "Lisle: Bullets can indeed penetrate the brain when fired." 'br)
   (str "But the part of the brain that is exposed to air can" 'br)
   (str "gradually coagulate over time, just like blood.")
   (wait)
   (text-reset 1)
   (str "Lisle: And the parts that weren't exposed to air remain" 'br)
   (str "alive thanks to the effect of the reanimation serum.")
   (wait)
   (text-reset 1)
   (str "Cole: I got it... So there won't be any... brain" 'br)
   (str "matter...leaking out, then?")
   (wait)
   (text-reset 1)
   (str "Lisle: Don't worry.")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Lisle #4
   (str "Cole: Please bring back Doc as best as you can.")
   (wait)
   (text-reset 1)
   (str "Lisle: I can't let Sheila die. I'll do my best.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 122 #f))							; Steve #1
   (str "Steve: Lisle, listen. When zombies attacked me at the" 'br)
   (str "cemetery, Cole helped me out.")
   (wait)
   (text-reset 1)
   (str "Lisle: As expected of our prized zombie-killer.")
   (wait)
   (text-reset 1)
   (str "Cole: That's a bit of an exaggeration...")
   (wait)
   (text-reset 1)
   (str "Steve: Cole's saved my bacon twice now. Thanks again.")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, yeah... You woulda done the same for me.")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 123 #f))							; Steve #2
   (str "Lisle: How do you kill zombies with such efficiency?")
   (wait)
   (text-reset 1)
   (str "Steve: On the first floor, I did a straight headshot, and" 'br)
   (str "they dropped immediately.")
   (wait)
   (text-reset 1)
   (str "Lisle: Come to think of it, the woman's corpse on the first" 'br)
   (str "floor did have an entry wound, dead center in the temple.")
   (wait)
   (text-reset 1)
   (str "Steve: You're adept at it. Have you been putting in time at" 'br)
   (str "the range?")
   (wait)
   (text-reset 1)
   (str "Cole: Wha!? As if!")
   (wait)
   (text-reset 1)
   (str "Steve: Hah, just kidding.")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 124 #f))							; Steve #3
   (str "Cole: Steve, once Doc's been revived, shall we head to" 'br)
   (str "Razovan Pharmaceuticals? I'm not gonna rest until we take" 'br)
   (str "care of Daniel.")
   (wait)
   (text-reset 1)
   (str "Steve: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Hey, what's wrong?")
   (wait)
   (text-reset 1)
   (str "Steve: There's, uh, no need to rush. We'll take care of" 'br)
   (str "Daniel once Sheila's recovered.")
   (wait)
   (text-reset 1)
   (str "Cole: Fair enough, I guess...")
   (wait)
   (text-reset 1)
   (str "Steve: In any case, our top priority is to get the DNV out" 'br)
   (str "of Sheila's body and put you at ease. We've got to keep our" 'br)
   (str "dear Cole focused on the prize, now, don't we?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, but...")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Steve #4
   (str "Steve: Cole, right now you need to put Sheila first.")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah...")
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Lab
   (branch-random
    (</>
     (/
      (str "Lisle: What's the matter? Why are your eyes darting to and" 'br)
      (str "fro?"))
     (/
      (str "Lisle: You look nervous, Cole."))))
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 901 #t) (= 120 #f))						; MOVE (reviving Doc, before talking to Lisle)
   (exec-mem 6064 2 1)
   (str "Steve: Cole, you seem restless.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1) (= 901 #t) (= 124 #f))						; MOVE (reviving Doc, before talking to Steve)
   (exec-mem 6064 2 1)
   (str "Steve: Cole, you seem restless.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Well then, I'd better go.")
   (wait)
   (text-reset 1)
   (str "Lisle: Take care of Sheila for now.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (mes-jump "A:¥MES¥085.MES"))
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