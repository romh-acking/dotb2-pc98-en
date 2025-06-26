(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB052.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 8 9 11)
  (exec-mem 3744 1 6 27 4 33 7)
  (exec-mem 3744 1 7 20 8 40 14)
  (exec-mem 3744 1 8 21 2 40 3)
  (exec-mem 3744 1 9 51 8 56 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB052.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 201 #f))
        (text "Cole: It looks like the sun is setting.")
        (wait)
        (text-reset 1)
        (text "Cole: That blazing red sign... This is the place Catherine  told me about. Nice decor.")
        (set-reg 201 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: I'm in front of Disco Zeena.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 202 #f))
   (text "Cole: Zeena's in an old brick building.")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 203 #f))
   (text
    "Cole: The last time I went to a disco was six years ago.    Every Saturday I'd invite Terry and we'd dance until dawn.")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 204 #f))
   (text
    "Cole: Rumor has it that drug deals aplenty are going down inthis disco. This place looks dangerous as hell, so I'd better   watch my back.")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: I gotta go in sooner rather than later. Sheila might  be here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 205 #f))
   (text "Cole: A spectacular dragon is poking out of the wall.       Whenever I see one of these guys, I think of Hong Kong.")
   (set-reg 205 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 206 #f))
   (text "Cole: That dragon bust is super realistic. It looks like it could start moving at any second.")
   (set-reg 206 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 207 #f))
   (text "Cole: In the dragon's claws are two colorful crystal balls  reflecting the neon and making a spectacular rainbow        pattern.")
   (set-reg 207 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 208 #f))
   (text "Cole: Just think how boss it would be if my apartment door  had a dragon like this over it.")
   (set-reg 208 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Cole: I can't stop thinking about how sweet that dragon     looks.") (wait) (text-reset 1))
 (seg (? (= P 7) (= 209 #f))
   (text "Cole: There's a curtain over the entrance, so I can't see   the ne'er-do-wells inside.")
   (set-reg 209 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 210 #f))
   (text "Cole: I hear voices and music from inside. It's getting     late, so the crowds are probably starting to pop off.")
   (set-reg 210 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: I'm worried sick about Sheila. I should stop messing  around and find her.") (wait) (text-reset 1))
 (seg (? (= P 8) (= 211 #f))
   (text "Cole: A neon sign that reads 'DISCO ZEENA' emits a sinister glow.")
   (set-reg 211 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: If the sign is on, they're open for business. Let's   get in there.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 202 #f))
   (text "Cole: Zeena's in an old brick building.")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 203 #f))
   (text
    "Cole: The last time I went to a disco was six years ago.    Every Saturday I'd invite Terry and we'd dance until dawn.")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 204 #f))
   (text
    "Cole: Rumor has it that drug deals aplenty are going down inthis disco. This place looks dangerous as hell, so I'd better   watch my back.")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text "Cole: I gotta go in sooner rather than later. Sheila might  be here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: I hope Sheila is in here...")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥030.MES"))
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