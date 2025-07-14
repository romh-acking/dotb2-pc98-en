; Dead of the Brain 2 (PC-98) - 080.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Cole tells Lisle and Steve his decision down at the lab.
; --Progression:--
; Talk to both; to Lisle first when reviving Doc and to Steve first otherwise. Either way, talk to Steve afterwards.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 16 3 21 7)							; 	Lisle
  (exec-mem 3744 1 6 38 2 44 6)							; 	Steve
  (exec-mem 3744 1 7 25 2 34 7)							; 	Lab
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB071.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 136 #f))								; Lead-in from previous MES file
        (str "Cole: Steve... Doctor Lisle...")
        (wait)
        (text-reset 1)
        (str "Steve: Cole, have you made up your mind?")
        (set-reg 136 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: I'm in the Perain Institute's lab.")			; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 137 #f) (= 140 #f))						; Lisle #1
   (str "Lisle: I trust you've come to a decision.")
   (wait)
   (text-reset 1)
   (str "Cole: I... I have.")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 140 #t) (= 141 #f))						; Lisle (after telling Steve not to revive Doc) #1
   (str "Lisle: I see... So you're not going to perform the" 'br)
   (str "reanimation. In that case, I'm increasingly worried about" 'br)
   (str "Sheila's condition...")
   (wait)
   (text-reset 1)
   (str "Cole: Yes... It's not like I'm sacrificing Sheila... But I" 'br)
   (str "just think this is something a human should never do.")
   (wait)
   (text-reset 1)
   (str "Lisle: I'm sorry for floating the idea in the first place.")
   (wait)
   (text-reset 1)
   (str "Cole: No, it's fine.")
   (set-reg 141 #t)
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 140 #t))							; Lisle (after telling Steve not to revive Doc) #2
   (str "Lisle: Either way, this must have been a difficult" 'br)
   (str "decision, Cole. You made a good choice.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 138 #t))							; Lisle (after deciding to revive Doc)
   (str "Lisle: I'll give my all in resuscitating his brain to" 'br)
   (str "ensure that you made the right decision.")
   (wait)
   (text-reset 1)
   (str "Cole: Please... Do what you can.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Lisle #2
   (str "Lisle: So... what have you decided to do?")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 135 #t) (= 138 #f))						; Deciding to revive Doc
         (str "Cole: I've decided to reanimate Doc's brain.")
         (wait)
         (text-reset 1)
         (str "Lisle: I see... You've made a good decision. But I won't be" 'br)
         (str "able to relax until Doctor Cooger's brain has been" 'br)
         (str "successfully revived.")
         (wait)
         (text-reset 1)
         (str "Cole: I understand. Failure is not an option.")
         (wait)
         (text-reset 1)
         (str "Lisle: You are correct. I'll give it my all.")
         (wait)
         (text-reset 1)
         (str "Cole: Thank you.")
         (set-reg 138 #t)
         (wait)
         (text-reset 1)))))
 (seg (? (= P 6) (= 143 #t))							; Steve (after talking about Cole's decision)
   (str "Cole: And Steve, I've pinpointed Daniel's location.")
   (wait)
   (text-reset 1)
   (str "Steve: What!? How?")
   (wait)
   (text-reset 1)
   (str "Cole: He's been hiding out at Razovan Pharmaceuticals. He's" 'br)
   (str "been giving orders to Bloody Fox from there.")
   (wait)
   (text-reset 1)
   (str "Steve: Are you positive?")
   (wait)
   (text-reset 1)
   (str "Cole: Yes. When they were trying to abduct Catherine from" 'br)
   (str "Shuffle Food, one of the Bloody Fox members said they'd" 'br)
   (str "take her to Razovan.")
   (wait)
   (text-reset 1)
   (str "Steve: Razovan's about an hour to the east of the Institute.")
   (wait)
   (text-reset 1)
   (str "Cole: What should we do?")
   (wait)
   (text-reset 1)
   (str "Steve: If we're going to infiltrate the building, we'll" 'br)
   (str "need to prep.")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 138 #t))								; Reviving Doc
         (str "Steve: For now, we need to focus on healing Sheila.")
         (wait)
         (text-reset 1)
         (str "Lisle: That's right. We'll need to collect Doctor Cooger's" 'br)
         (str "body from Disbell Cemetery.")
         (wait)
         (text-reset 1)
         (str "Steve: All right, Cole. Come with me.")
         (wait)
         (text-reset 1)
         (str "Cole: Let's go.")
         (wait)
         (text-reset 1)
         (str "Lisle: I'll make preparations for the revival.")
         (wait)
         (text-reset 1)
         (str "Steve: We'll be counting on you.")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         ((cmd 204) 100 899)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥081.MES"))
        (//
         (? (= 140 #t))								; Not reviving Doc
         (str "Cole: What should we do?")
         (wait)
         (text-reset 1)
         (str "Steve: We need to take some time to consider our next" 'br)
         (str "steps.")
         (wait)
         (text-reset 1)
         (str "Lisle: Cole... Sheila probably knows what's about to" 'br)
         (str "happen. Please stay by her side as much as you can.")
         (wait)
         (text-reset 1)
         (str "Cole: I understand. Okay, I'll be off...")
         (wait)
         (text-reset 1)
         (str "Lisle: I'll be in the lab. Let me know if anything happens.")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         ((cmd 204) 100 899)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥083.MES")))))
 (seg (? (= P 6) (= 139 #f) (= 138 #f))						; Steve #1
   (str "Steve: Are we going to revive Dr. Cooger, or are we holding" 'br)
   (str "off?")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #t) (= 142 #f))						; Steve (after telling Lisle to revive Doc) #1
   (str "Steve: I see... So we're bringing him back.")
   (wait)
   (text-reset 1)
   (str "Cole: Yes, I can't bring myself to sacrifice Sheila.")
   (wait)
   (text-reset 1)
   (str "Steve: No second thoughts?")
   (wait)
   (text-reset 1)
   (str "Cole: Please... Do what you can.")
   (set-reg 142 #t)
;  (set-reg 143 #t)									This flag being set here causes the next line to be skipped...
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #t))							; Steve (after telling Lisle to revive Doc) #2
   (str "Steve: Either way, it must have been a tough decision..." 'br)
   (str "But it's one you made with your heart.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (set-reg 143 #t)								; 	...So I've moved the flag here so that this line can be shown
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 140 #t))							; Steve (after deciding not to revive Doc)
   (str "Steve: Whatever your decision, Cole, I hope it turns out" 'br)
   (str "for the best.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Steve #2
   (str "Steve: Hurry up and tell us your decision, Cole. We'll need" 'br)
   (str "to prepare regardless.")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 134 #t) (= 140 #f))						; Deciding not to revive Doc
         (str "Cole: About reviving Doc... After having a long and hard" 'br)
         (str "think, I can't bring myself to do something so inhuman.")
         (wait)
         (text-reset 1)
         (str "Steve: I see. Well, if that's what you want, we'll leave" 'br)
         (str "Dr. Cooger as he is.")
         (wait)
         (text-reset 1)
         (str "Cole: I'm sorry. Even though you managed to detect brain" 'br)
         (str "waves from his body...")
         (wait)
         (text-reset 1)
         (str "Steve: Don't let it trouble you, Cole.")
         (set-reg 140 #t)
         (wait)
         (text-reset 1)))))
 (seg (? (= P 7))								; Lab
   (str "Cole: This is Lisle's laboratory. Behind the door to the" 'br)
   (str "left is where astounding experiments are being conducted.")
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