(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB042.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 22 2 37 9)
  (exec-mem 3744 1 6 5 9 17 14)
  (exec-mem 3744 1 7 52 6 56 12)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB042.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB069C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 256 0 4 2 3)
  (exec-mem 256 1 0 0 0)
  (exec-mem 256 2 6 4 5)
  (exec-mem 256 3 0 11 0)
  (exec-mem 256 4 0 7 0)
  (exec-mem 256 5 2 0 1)
  (exec-mem 256 6 5 1 3)
  (exec-mem 256 7 4 0 0)
  (exec-mem 256 8 7 1 5)
  (exec-mem 256 9 8 4 5)
  (exec-mem 256 10 9 0 0)
  (exec-mem 256 11 5 0 0)
  (exec-mem 256 12 3 0 0)
  (exec-mem 256 13 8 0 5)
  (exec-mem 256 14 4 0 3)
  (exec-mem 256 15 12 8 9)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 129 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 130 #f))
        (text "Cole: Sure enough, things get pretty desolate once you leave town...")
        (set-reg 130 #t))
       (// (text "Cole: This is the front of the Perain Research Institute."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 131 #f))
   (text "Cole: No signs of damage on the building. As expected, the undead didn't make it out here yet.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 132 #f))
   (text "Cole: There are no streetlights, so I've gotta make do by moonlight.")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 133 #f))
   (text "Cole: I can't hear any sounds coming from the inside of the building. I wonder if anyone's inside.")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: The building is eerily silent. If there's nobody home, I'll have to head back to town.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 134 #f))
   (text "Cole: I guess this is the entrance...but I can't see anything inside, it's pitch black.")
   (set-reg 134 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 135 #f))
   (text "Cole: Okay, time to head inside.")
   (wait)
   (text-reset 1)
   (text "Cole: Wha?")
   (wait)
   (text-reset 1)
   (text "Cole: Aw hell, the door's locked. Can't get in this way.")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: Since the door's locked, I'm not getting in that way.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 135 #t) (= 136 #t))
   (text "Cole: No choice, I gotta use the emergency stairs.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "Cole: This should lead to the second floor. Let's crack it open and see.")
   (wait)
   (text-reset 1)
   (text "Cole: A copy-protection auto-lock! The code ")
   (branch-random
    (</>
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))
     (/
      (branch-random
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@)))))))
   (branch-random
    (</>
     (/ (text "Ｒ−Ｔ５０") (nop@) (set-reg 137 #t))
     (/ (text "Ｖ−Ｌ２５") (nop@) (set-reg 138 #t))
     (/ (text "Ｓ−Ｒ５２") (nop@) (set-reg 139 #t))
     (/ (text "Ｂ−Ａ４１") (nop@) (set-reg 140 #t))
     (/ (text "Ｐ−Ｂ３０") (nop@) (set-reg 141 #t))
     (/ (text "Ｗ−Ｃ１３") (nop@) (set-reg 142 #t))
     (/ (text "Ｘ−Ｍ００") (nop@) (set-reg 143 #t))
     (/ (text "Ｇ−Ｅ９７") (nop@) (set-reg 144 #t))
     (/ (text "Ｄ−Ｈ３３") (nop@) (set-reg 145 #t))
     (/ (text "Ｋ−Ｙ８６") (nop@) (set-reg 146 #t))
     (/ (text "Ｔ−Ｄ７９") (nop@) (set-reg 147 #t))
     (/ (text "Ｉ−Ｕ６８") (nop@) (set-reg 148 #t))
     (/ (text "Ｎ−Ｚ０４") (nop@) (set-reg 149 #t))))
   (text "is on the screen. Um, I should check the readme.txt.")
   (wait)
   (text-reset 1)
   (text-frame 15 298 74 356)
   (text "Cole: Okay, I've checked the readme, and let's enter... ")
   (menu1
    26
    317
    34
    317
    42
    317
    50
    317
    58
    317
    26
    337
    34
    337
    42
    337
    50
    337
    58
    337
    (</>
     (/ (text "　１　"))
     (/ (text "　２　"))
     (/ (text "　３　"))
     (/ (text "　４　"))
     (/ (text "　５　"))
     (/ (text "　６　"))
     (/ (text "　７　"))
     (/ (text "　８　"))
     (/ (text "　９　"))
     (/ (text "　０　"))))
   (text-reset 1)
   (text-pos 60 78)
   (text-color 3)
   (branch-var
    S
    (</>
     (/ (text "１") (set-reg 150 #t))
     (/ (text "２") (set-reg 151 #t))
     (/ (text "３") (set-reg 152 #t))
     (/ (text "４") (set-reg 153 #t))
     (/ (text "５") (set-reg 154 #t))
     (/ (text "６") (set-reg 155 #t))
     (/ (text "７") (set-reg 156 #t))
     (/ (text "８") (set-reg 157 #t))
     (/ (text "９") (set-reg 158 #t))
     (/ (text "０") (set-reg 159 #t))))
   (text-frame 15 298 74 356)
   (text #:col 15 "［コール］えーと、暗証は何だっけな・・・。")
   (menu1
    26
    317
    34
    317
    42
    317
    50
    317
    58
    317
    26
    337
    34
    337
    42
    337
    50
    337
    58
    337
    (</>
     (/ (text "　１　"))
     (/ (text "　２　"))
     (/ (text "　３　"))
     (/ (text "　４　"))
     (/ (text "　５　"))
     (/ (text "　６　"))
     (/ (text "　７　"))
     (/ (text "　８　"))
     (/ (text "　９　"))
     (/ (text "　０　"))))
   (text-reset 1)
   (text-pos 62 78)
   (text-color 3)
   (branch-var
    S
    (</>
     (/ (text "１") (set-reg 160 #t))
     (/ (text "２") (set-reg 161 #t))
     (/ (text "３") (set-reg 162 #t))
     (/ (text "４") (set-reg 163 #t))
     (/ (text "５") (set-reg 164 #t))
     (/ (text "６") (set-reg 165 #t))
     (/ (text "７") (set-reg 166 #t))
     (/ (text "８") (set-reg 167 #t))
     (/ (text "９") (set-reg 168 #t))
     (/ (text "０") (set-reg 169 #t))))
   (text-frame 15 298 74 356)
   (text #:col 15 "［コール］えーと、暗証は何だっけな・・・。")
   (menu1
    26
    317
    34
    317
    42
    317
    50
    317
    58
    317
    26
    337
    34
    337
    42
    337
    50
    337
    58
    337
    (</>
     (/ (text "　１　"))
     (/ (text "　２　"))
     (/ (text "　３　"))
     (/ (text "　４　"))
     (/ (text "　５　"))
     (/ (text "　６　"))
     (/ (text "　７　"))
     (/ (text "　８　"))
     (/ (text "　９　"))
     (/ (text "　０　"))))
   (text-reset 1)
   (text-pos 64 78)
   (text-color 3)
   (branch-var
    S
    (</>
     (/ (text "１") (set-reg 170 #t))
     (/ (text "２") (set-reg 171 #t))
     (/ (text "３") (set-reg 172 #t))
     (/ (text "４") (set-reg 173 #t))
     (/ (text "５") (set-reg 174 #t))
     (/ (text "６") (set-reg 175 #t))
     (/ (text "７") (set-reg 176 #t))
     (/ (text "８") (set-reg 177 #t))
     (/ (text "９") (set-reg 178 #t))
     (/ (text "０") (set-reg 179 #t))))
   (text-frame 15 298 74 356)
   (text #:col 15 "［コール］えーと、暗証は何だっけな・・・。")
   (menu1
    26
    317
    34
    317
    42
    317
    50
    317
    58
    317
    26
    337
    34
    337
    42
    337
    50
    337
    58
    337
    (</>
     (/ (text "　１　"))
     (/ (text "　２　"))
     (/ (text "　３　"))
     (/ (text "　４　"))
     (/ (text "　５　"))
     (/ (text "　６　"))
     (/ (text "　７　"))
     (/ (text "　８　"))
     (/ (text "　９　"))
     (/ (text "　０　"))))
   (text-reset 1)
   (text-pos 66 78)
   (text-color 3)
   (branch-var
    S
    (</>
     (/ (text "１") (set-reg 180 #t))
     (/ (text "２") (set-reg 181 #t))
     (/ (text "３") (set-reg 182 #t))
     (/ (text "４") (set-reg 183 #t))
     (/ (text "５") (set-reg 184 #t))
     (/ (text "６") (set-reg 185 #t))
     (/ (text "７") (set-reg 186 #t))
     (/ (text "８") (set-reg 187 #t))
     (/ (text "９") (set-reg 188 #t))
     (/ (text "０") (set-reg 189 #t))))
   (text-frame 15 298 74 356)
   (text-color 15)
   (if (</>
        (//
         (? (= 137 #t) (= 150 #t) (= 160 #t) (= 171 #t) (= 188 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 138 #t) (= 151 #t) (= 164 #t) (= 179 #t) (= 188 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 139 #t) (= 152 #t) (= 163 #t) (= 174 #t) (= 188 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 140 #t) (= 153 #t) (= 162 #t) (= 179 #t) (= 183 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 141 #t) (= 154 #t) (= 169 #t) (= 174 #t) (= 184 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 142 #t) (= 155 #t) (= 163 #t) (= 172 #t) (= 186 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 143 #t) (= 156 #t) (= 165 #t) (= 177 #t) (= 186 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 144 #t) (= 157 #t) (= 161 #t) (= 172 #t) (= 182 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 145 #t) (= 158 #t) (= 165 #t) (= 173 #t) (= 181 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 146 #t) (= 159 #t) (= 168 #t) (= 170 #t) (= 184 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 147 #t) (= 158 #t) (= 163 #t) (= 175 #t) (= 180 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 148 #t) (= 156 #t) (= 165 #t) (= 176 #t) (= 187 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= 149 #t) (= 157 #t) (= 161 #t) (= 176 #t) (= 185 #t))
         (text "Cole: OK door, open up!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥037.MES"))))
   (if (</>
        (//
         (? (= A 2))
         (text "Cole: No good. I guess I'll give up on my entire adventure. Oh well.")
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         (exec-mem 912 "EXIT")
         ((cmd 204) 150 189)
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
         (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
         (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
         (loop (wait)))
        (//
         (text-frame 15 298 74 356)
         (text "Cole: I biffed it. Better try again.")
         (inc-var A 1)
         (wait)
         (text-reset 1)
         (exec-mem 912 "PUT 1 54 38,W 0,O 0")
         ((cmd 204) 150 189)))))
 (seg (? (= P 7) (= 136 #f))
   (text "Cole: That's the fire escape. Leads up to the second floor.")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: There's a fire escape on the right side of the institute.") (wait) (text-reset 1))
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
        (/ (nop@) (set-reg 129 #f) (flag-save 1))
        (/ (nop@) (set-reg 129 #f) (flag-save 2))
        (/ (nop@) (set-reg 129 #f) (flag-save 3))
        (/ (nop@) (set-reg 129 #f) (flag-save 4))
        (/ (nop@) (set-reg 129 #f) (flag-save 5))
        (/ (nop@) (set-reg 129 #f) (flag-save 6))
        (/ (nop@) (set-reg 129 #f) (flag-save 7))
        (/ (nop@) (set-reg 129 #f) (flag-save 8))
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
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))