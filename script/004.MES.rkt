(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB011.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)					; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)													; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)													; 	SYSTEM button
  (exec-mem 3744 1 5 49 9 55 12)
  (exec-mem 3744 1 6 15 9 23 14)
  (exec-mem 3744 1 7 25 4 41 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (if (</>
       (// (? (= 146 #t)) (image-file "B:¥GPC¥DB010.GPC") (image-mem 1 3))))
  (image-file "B:¥GPC¥DB011.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 146 #f))
        (str "B.F.: Yo, sweetcheeks! How about we go out on a hot date?")
        (wait)
        (text-reset 1)
        (str "Woman: No!!! Let me go!")
        (wait)
        (text-reset 1)
        (str "B.F.: It's all good, baby, it's not like you got anywhere" 'br)
        (str "else to go!")
        (wait)
        (text-reset 1)
        (str "Cole: Looks like the Bloody Fox gang is up to the same old" 'br)
        (str "bullshit...")
        (wait)
        (text-reset 1)
        (str "Woman: Stop it!")
        (set-reg 146 #t)
        (wait)
        (text-reset 1))
       (//
        (str "B.F.: C'mon, sister, we're just tryin' to have some fun.")
        (wait)
        (text-reset 1)
        (str "Woman: I said, let me go!")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 147 #f))
   (str "Cole: Looks like the Bloody Fox gang is up to the typical" 'br)
   (str "bullshit...")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 148 #f))
   (str "Cole: Everyone is just looking away. If you get involved" 'br)
   (str "with Bloody Fox, you're asking for a world of trouble.")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: Nobody's helping her because even if you manage to" 'br)
   (str "land a hit on those guys, they'll come back with their" 'br)
   (str "friends later for revenge.")
   (wait)
   (text-reset 1)
   (str "Cole: They've got a big organization backing them, so even" 'br)
   (str "the cops won't intervene.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #t) (= 154 #t) (= 155 #f))
   (str "Cole: Wait a minute... Right there, is that paint on the" 'br)
   (str "bike tire? It looks like the droplets of the reanimation" 'br)
   (str "serum from the alley. Are these the guys?")
   (wait)
   (text-reset 1)
   (str "Cole: No, no. Those guys just got here, and we couldn't" 'br)
   (str "hear any bikes after the murders.")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #t) (= 154 #t))
   (str "Cole: Maybe it's just paint. I'll ask...and maybe see if I" 'br)
   (str "can help the girl too.")
   (wait)
   (text-reset 1)
   (str "Cole: Time for me to step in!")
   (wait)
   (text-reset 1)
   (str "Cole: Hey! I wanna ask you a question.")
   (wait)
   (text-reset 1)
   (str "B.F.: Ask later, shitheel!")
   (wait)
   (text-reset 1)
   (str "Woman: Help me!!!")
   (wait)
   (text-reset 1)
   (str "Cole: Listen up! I said, you're gonna answer my question!")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 156 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥005.MES"))
 (seg (? (= P 6) (= 149 #f))
   (str "Cole: That's gotta be one of his buddies on his bike. I" 'br)
   (str "guess that's the motorcycle I heard earlier.")
   (set-reg 149 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #f))
   (str "Cole: That biker's saying something...")
   (wait)
   (text-reset 1)
   (str "B.F.: How long are you gonna waste your time on that" 'br)
   (str "annoyin' bitch? Just take her already!")
   (wait)
   (text-reset 1)
   (str "Woman: Let me go!")
   (wait)
   (text-reset 1)
   (str "B.F.: You better pipe down, my kindness has a breakin'" 'br)
   (str "point!")
   (set-reg 150 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Cole: If you're from around here, this kinda scene isn't" 'br)
   (str "uncommon. It was already Bloody Fox's territory when I" 'br)
   (str "moved in.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 151 #f))
   (str "Cole: If I don't jump in, they're gonna kidnap that girl.")
   (wait)
   (text-reset 1)
   (str "Cole: But if you throw down with Bloody Fox, you're" 'br)
   (str "cruising for a bruising.")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 152 #f))
   (str "B.F.: You got curves in all the right places, don't ya?")
   (wait)
   (text-reset 1)
   (str "Woman: No! Let me go!")
   (wait)
   (text-reset 1)
   (str "B.F.: Come on, what's the matter? Don't you wanna have some" 'br)
   (str "fun with us?")
   (wait)
   (text-reset 1)
   (str "Cole: She's definitely a looker...she's got nice style," 'br)
   (str "and...Wha? Aw, shit, I'm no different from those lowlifes," 'br)
   (str "saying that!")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 153 #f))
   (str "Cole: I feel bad for her, but I've got things to do right" 'br)
   (str "now.")
   (wait)
   (text-reset 1)
   (str "Woman: Knock it off or I'm calling the fuzz!")
   (wait)
   (text-reset 1)
   (str "B.F.: Wahahaha! The cops answer to us, dipshit, they aren't" 'br)
   (str "doing squat! Why don't you come have some fun with us?")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 154 #f))
   (str "B.F.: I'm into aggressive women like you!")
   (wait)
   (text-reset 1)
   (str "Woman: No! Let me go!")
   (wait)
   (text-reset 1)
   (str "Cole: I feel sorry for her, but he's a Bloody Fox member." 'br)
   (str "If I get involved, there's gonna be trouble.")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: Even if he's in Bloody Fox, he must be a real loser" 'br)
   (str "trying to pick someone up in a place like this.")
   (wait)
   (text-reset 1))
 (seg (? (= P 2))																; SYSTEM
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
      (text "　　　　　　　　　　　　　　")
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