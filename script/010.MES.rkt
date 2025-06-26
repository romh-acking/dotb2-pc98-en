(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB022.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 18 4 23 6)
  (exec-mem 3744 1 6 26 5 33 15)
  (exec-mem 3744 1 7 40 10 49 15)
  (exec-mem 3744 1 8 47 3 56 6)
  (exec-mem 3744 1 9 4 10 14 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB022.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_03.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 195 #f))
        (text "Cole: Bar Rease. It's a hangout for Bloody Fox, so I gotta  be careful.")
        (set-reg 195 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: The front of Bar Rease.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 196 #f))
   (text
    "Cole: This is the same Bar Rease that was mentioned in the  newspaper article, where the gang member killed seven of hisfriends.")
   (wait)
   (text-reset 1)
   (text "Cole: The newspaper article said that the culprit, Ben      Raymond, was a junkie...")
   (wait)
   (text-reset 1)
   (text "Cole: A junkie who was able to kill seven people without    anyone stopping him.")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 197 #f))
   (text
    "Cole: I'm sure the Purple Sky drug has been doing the roundshere. Got a hunch Ben might have something to do with it,   too.")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: Anyway, I should go in and ask around about Purple    Sky.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 198 #f))
   (text "Cole: The entrance to Bar Rease. The door's at the bottom ofthe stairs.")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 199 #f))
   (text "Cole: A Bloody Fox by the entrance. Looks drunk as a skunk.")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: This is the kind of suspicious hole-in-the-wall bar   you don't take your mom to. Unless you want your mom to get kidnapped by Bloody Fox, I guess.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 200 #f))
   (text "B.F.: Heh heh heh heh...")
   (wait)
   (text-reset 1)
   (text "Cole: Hey pal, do you know what happened here yesterday?")
   (wait)
   (text-reset 1)
   (text "B.F.: I don't care how many times you ask, I wasn't here    yesterday. I don't know nuffin'. Heh heh heh...")
   (wait)
   (text-reset 1)
   (text "Cole: Who was here?")
   (wait)
   (text-reset 1)
   (text "B.F.: I said I don't know nuffin', especially when a piggie is askin'. Heh heh heh... Oink oink...")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 201 #f))
   (text "B.F.: Watch out you don't slip on any leftover brains on theground, you're standin' where Ben got his head blasted open!Heh heh heh...")
   (wait)
   (text-reset 1)
   (text "Cole: Was Ben in Bloody Fox?")
   (wait)
   (text-reset 1)
   (text "B.F.: Beats me. I wasn't in yesterday. Had important things to do.")
   (wait)
   (text-reset 1)
   (text "Cole: You sure? You're looking pretty shitfaced.")
   (wait)
   (text-reset 1)
   (text "B.F.: Heh heh heh heh...")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 202 #f))
   (text "B.F.: You headin' down into the bar?")
   (wait)
   (text-reset 1)
   (text "Cole: No time like the present.")
   (wait)
   (text-reset 1)
   (text "B.F.: How is anyone this stupid? You're gonna get thrashed  within an inch of your life, pal.")
   (wait)
   (text-reset 1)
   (text "Cole: I'm not here to throw down, I just wanna ask your     buddies about what happened yesterday.")
   (wait)
   (text-reset 1)
   (text "B.F.: Get a load of this guy! Man, you come right out of a  comic book. Heh heh heh...")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: Talking to this guy any more is like bashing my head  against a wall.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 203 #f))
   (text "Cole: That's a lot of graffiti... Looks like a New York     subway. I guess the bar owner figures the F-bombs add to theambience.")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "Cole: A bare concrete wall. Urban brutalism at its finest.") (wait) (text-reset 1))
 (seg (? (= P 9) (= 204 #f))
   (text "Cole: A bunch of Bloody Fox bikes parked outside. The ownersare probably inside, sticking to Shirley Temples.")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text "Cole: They aren't taking good care of these bikes at all,   they're filthy! The resale value on these things is gonna benil.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 202 #t) (= 204 #t))
   (exec-mem 6064 2 1)
   (text "Cole: Into the depths, I guess.")
   (set-reg 205 #t)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥011.MES"))
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