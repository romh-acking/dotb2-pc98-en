(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB051.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 39 5 46 8)
  (exec-mem 3744 1 6 40 8 47 11)
  (exec-mem 3744 1 7 48 3 56 5)
  (exec-mem 3744 1 8 27 3 35 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB050.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB051.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 190 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 191 #f))
        (text "Girl: Hey...are you coming in or what?")
        (wait)
        (text-reset 1)
        (text "Cole: Oh, sorry. I was here to see Catherine, I think she works here...")
        (wait)
        (text-reset 1)
        (text "Girl: Well, that's me. I'm Catherine.")
        (wait)
        (text-reset 1)
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
        (sound '|| 1)
        (text "Cole: Oh, I see! I'm Cole, and I was wondering if you could help me out with something Sheila-related.")
        (wait)
        (text-reset 1)
        (text "Catherine: Oh, so you're Cole! You're Sheila's fiance, yeah?")
        (wait)
        (text-reset 1)
        (text "Cole: One and the same.")
        (set-reg 191 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: Sheila's friend Catherine.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 192 #f))
   (text
    "Catherine: This is Shuffle Food, where I'm putting in the hours... We never really get a break and we're understaffed, so I'm here almost every day.")
   (set-reg 192 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 193 #f))
   (text "Cole: Is it okay for you to leave your post like this?")
   (wait)
   (text-reset 1)
   (text
    "Catherine: I'm on break. I was about to clean the front, and I noticed someone outside looking confused, so I went over to say hi.")
   (set-reg 193 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: Is Shuffle Food always this crowded?")
   (wait)
   (text-reset 1)
   (text "Catherine: Today's a holiday, so...on weekdays we're not usually this slammed.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 194 #f))
   (text "Catherine: Do you wanna eat anything?")
   (wait)
   (text-reset 1)
   (text "Cole: No, I'm pretty busy right now. Maybe next time.")
   (set-reg 194 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Catherine: Cole, you had a reason to come here, yeah?") (wait) (text-reset 1))
 (seg (? (= P 7) (= 195 #f))
   (text "Catherine: The sign really stands out. I guess you can see it from the road.")
   (set-reg 195 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 196 #f))
   (text "Catherine: And at night it lights up yellow.")
   (wait)
   (text-reset 1)
   (text "Cole: When are you guys open until?")
   (wait)
   (text-reset 1)
   (text "Catherine: State regs say that we have to close by 2am.")
   (wait)
   (text-reset 1)
   (text "Cole: Running a restaurant is tough, isn't it...")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: That's the big sign that reads 'Shuffle Food,' whatever that means.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 197 #f))
   (text "Cole: I'd heard about you from Sheila, but Catherine, you're cuter than described.")
   (wait)
   (text-reset 1)
   (text "Catherine: Wow, smooth talker. Did you use the same lines when you were flirting with Sheila?")
   (wait)
   (text-reset 1)
   (text "Cole: Hey now, don't dog on me too hard.")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 198 #f))
   (text "Catherine: So why did you come to see me today?")
   (wait)
   (text-reset 1)
   (text "Cole: Sheila's gone missing.")
   (wait)
   (text-reset 1)
   (text "Catherine: Oh god. Since when?")
   (wait)
   (text-reset 1)
   (text "Cole: I called early this afternoon, but no answer. I went to her apartment earlier, but...")
   (wait)
   (text-reset 1)
   (text "Catherine: Maybe she'll come back eventually?")
   (wait)
   (text-reset 1)
   (text "Cole: No, there's something else.")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 199 #f))
   (text "Cole: When I went to her apartment, the room was ransacked.")
   (wait)
   (text-reset 1)
   (text "Catherine: A thief?")
   (wait)
   (text-reset 1)
   (text "Cole: I'm not sure, and Sheila isn't there... I thought you might know something.")
   (wait)
   (text-reset 1)
   (text "Catherine: She hasn't been by...")
   (wait)
   (text-reset 1)
   (text "Cole: Damn.")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 200 #f))
   (text "Cole: Do you know where she might have headed?")
   (wait)
   (text-reset 1)
   (text "Catherine: Well, you would know better than I would, Cole.")
   (wait)
   (text-reset 1)
   (text "Cole: The only place on my radar is Shuffle Food.")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Catherine: Places she might go... Lemme think here.")
   (wait)
   (text-reset 1)
   (text "Cole: Anything helps.")
   (wait)
   (text-reset 1)
   (text "Catherine: Well, I don't know if this helps, but we went to a disco once.")
   (wait)
   (text-reset 1)
   (text "Cole: A disco? Sheila even knows how to dance?")
   (wait)
   (text-reset 1)
   (text
    "Catherine: Back then Sheila was drinking and getting super buzzed a ton... But then she started going to that disco.")
   (wait)
   (text-reset 1)
   (text "Cole: By herself?")
   (wait)
   (text-reset 1)
   (text "Catherine: No, she's been inviting me. But you know, that disco's had a reputation as a drug dealer hangout for a long time.")
   (wait)
   (text-reset 1)
   (text "Cole: Drug deals!?")
   (wait)
   (text-reset 1)
   (text
    "Catherine: Yeah. Heroin, speed, weed, rush, that kind of thing. Apparently dealers even showed up at Sheila's place back then, though she'd just brush them off.")
   (wait)
   (text-reset 1)
   (text "Cole: Heroin, huh... So where is this disco?")
   (wait)
   (text-reset 1)
   (text "Catherine: It's nearby. It's called Zeena, it's quite the hotspot.")
   (wait)
   (text-reset 1)
   (text "Cole: Where is it located?")
   (wait)
   (text-reset 1)
   (text "Catherine: Go straight down that road to the mailbox, then take a left. It's the fourth building on that side.")
   (wait)
   (text-reset 1)
   (text "Cole: Got it. Thank you... I'll go there right now.")
   (wait)
   (text-reset 1)
   (text "Catherine: Be careful, Cole. There are guys there who are just looking for a fight.")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah, I got it. Thanks, Cassie.")
   (wait)
   (text-reset 1)
   (text "Catherine: Now it's Cassie, huh? Sheila was right, you really are a charmer.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥029.MES"))
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
        (/ (nop@) (set-reg 190 #f) (flag-save 1))
        (/ (nop@) (set-reg 190 #f) (flag-save 2))
        (/ (nop@) (set-reg 190 #f) (flag-save 3))
        (/ (nop@) (set-reg 190 #f) (flag-save 4))
        (/ (nop@) (set-reg 190 #f) (flag-save 5))
        (/ (nop@) (set-reg 190 #f) (flag-save 6))
        (/ (nop@) (set-reg 190 #f) (flag-save 7))
        (/ (nop@) (set-reg 190 #f) (flag-save 8))
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