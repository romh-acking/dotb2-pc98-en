(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 16 3 21 7)
  (exec-mem 3744 1 6 38 2 44 6)
  (exec-mem 3744 1 7 25 2 34 7)
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
        (? (= 136 #f))
        (text "Cole: Steve... Doctor Lisle...")
        (wait)
        (text-reset 1)
        (text "Steve: Cole, have you made up your mind?")
        (set-reg 136 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: I'm in the Perain Institute's lab.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 137 #f) (= 140 #f))
   (text "Lisle: I trust you've come to a decision.")
   (wait)
   (text-reset 1)
   (text "Cole: I... I have.")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 140 #t) (= 141 #f))
   (text "Lisle: I see... So you're not going to perform the reanimation. In that case, I'm increasingly worried about Sheila's condition...")
   (wait)
   (text-reset 1)
   (text "Cole: Yes... It's not like I'm sacrificing Sheila... But I just think this is something a human should never do.")
   (wait)
   (text-reset 1)
   (text "Lisle: I'm sorry for floating the idea in the first place.")
   (wait)
   (text-reset 1)
   (text "Cole: No, it's fine.")
   (set-reg 141 #t)
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 140 #t))
   (text "Lisle: Either way, this must have been a difficult decision, Cole. You made a good choice.")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 138 #t))
   (text "Lisle: I'll give my all in resuscitating his brain to ensure that you made the right decision.")
   (wait)
   (text-reset 1)
   (text "Cole: Please... Do what you can.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Lisle: So... what have you decided to do?")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 135 #t) (= 138 #f))
         (text "Cole: I've decided to reanimate Doc's brain.")
         (wait)
         (text-reset 1)
         (text "Lisle: I see... You've made a good decision. But I won't be able to relax until Doctor Cooger's brain has been successfully revived.")
         (wait)
         (text-reset 1)
         (text "Cole: I understand. Failure is not an option.")
         (wait)
         (text-reset 1)
         (text "Lisle: You are correct. I'll give it my all.")
         (wait)
         (text-reset 1)
         (text "Cole: Thank you.")
         (set-reg 138 #t)
         (wait)
         (text-reset 1)))))
 (seg (? (= P 6) (= 143 #t))
   (text "Cole: And Steve, I've pinpointed Daniel's location.")
   (wait)
   (text-reset 1)
   (text "Steve: What!? How?")
   (wait)
   (text-reset 1)
   (text "Cole: He's been hiding out at Razovan Pharmaceuticals. He's been giving orders to Bloody Fox from there.")
   (wait)
   (text-reset 1)
   (text "Steve: Are you positive?")
   (wait)
   (text-reset 1)
   (text
    "Cole: Yes. When they were trying to abduct Catherine from Shuffle Food, one of the Bloody Fox members said they'd take her to Razovan.")
   (wait)
   (text-reset 1)
   (text "Steve: Razovan's about an hour to the east of the Institute.")
   (wait)
   (text-reset 1)
   (text "Cole: What should we do?")
   (wait)
   (text-reset 1)
   (text "Steve: If we're going to infiltrate the building, we'll need to prep.")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 138 #t))
         (text "Steve: For now, we need to focus on healing Sheila.")
         (wait)
         (text-reset 1)
         (text "Lisle: That's right. We'll need to collect Doctor Cooger's body from Disbell Cemetery.")
         (wait)
         (text-reset 1)
         (text "Steve: All right, Cole. Come with me.")
         (wait)
         (text-reset 1)
         (text "Cole: Let's go.")
         (wait)
         (text-reset 1)
         (text "Lisle: I'll make preparations for the revival.")
         (wait)
         (text-reset 1)
         (text "Steve: We'll be counting on you.")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         ((cmd 204) 100 899)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥081.MES"))
        (//
         (? (= 140 #t))
         (text "Cole: What should we do?")
         (wait)
         (text-reset 1)
         (text "Steve: We need to take some time to consider our next steps.")
         (wait)
         (text-reset 1)
         (text "Lisle: Cole... Sheila probably knows what's about to happen. Please stay by her side as much as you can.")
         (wait)
         (text-reset 1)
         (text "Cole: I understand. Okay, I'll be off...")
         (wait)
         (text-reset 1)
         (text "Lisle: I'll be in the lab. Let me know if anything happens.")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         ((cmd 204) 100 899)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥083.MES")))))
 (seg (? (= P 6) (= 139 #f) (= 138 #f))
   (text "Steve: Are we going to revive Dr. Cooger, or are we holding off?")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #t) (= 142 #f))
   (text "Steve: I see... So we're bringing him back.")
   (wait)
   (text-reset 1)
   (text "Cole: Yes, I can't bring myself to sacrifice Sheila.")
   (wait)
   (text-reset 1)
   (text "Steve: No second thoughts?")
   (wait)
   (text-reset 1)
   (text "Cole: Please... Do what you can.")
   (set-reg 142 #t)
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #t))
   (text "Steve: Either way, it must have been a tough decision... But it's one you made with your heart.")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 140 #t))
   (text "Steve: Whatever your decision, Cole, I hope it turns out for the best.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Steve: Hurry up and tell me your decision, Cole. We'll need to prepare regardless.")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 134 #t) (= 140 #f))
         (text "Cole: As for reviving Doc... After having a long and hard think, I can't bring myself to do something so inhuman.")
         (wait)
         (text-reset 1)
         (text "Steve: I see. Well, if that's what you want, we'll leave Dr. Cooger as he is.")
         (wait)
         (text-reset 1)
         (text "Cole: I'm sorry. Even though you managed to detect brain waves from his body...")
         (wait)
         (text-reset 1)
         (text "Steve: Don't let it trouble you, Cole.")
         (set-reg 140 #t)
         (wait)
         (text-reset 1)))))
 (seg (? (= P 7))
   (text
    "Cole: This is Lisle's laboratory. Behind the door to the left is where astounding experiments are being conducted.")
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