
((digest . "a5caae7532f32dd3b62a7dcecc0e4d0c") (undo-list (427 . 428) 378 nil (235 . 247) ("                " . -235) 235 nil ("            
" . 235) ((marker) . -13) ((marker) . -13) ((marker) . -13) nil ("4" . -247) nil (437 . 441) (397 . 409) (384 . 392) (372 . 376) (353 . 357) (334 . 346) (293 . 305) (273 . 281) (249 . 265) (235 . 247) (194 . 206) (174 . 182) (162 . 166) (141 . 145) (120 . 132) (79 . 91) (59 . 67) (47 . 51) 289 nil ("pmodule(tic).

-export([first/0]).

first() ->
    receive
        {tic, X} ->
            io:format(\"tic: ~w~n\", [X]),
            second()
    end.

second() ->

    receive
        {tac, X} ->
            io:format(\"tac: ~w~n\", [X]),
            last();
        {toe, X} ->
            io:format(\"toe: ~w~n\", [X]),

            last()
    end.

last() ->
    receive
        X ->
            io:rormat(\"end: ~w~n\", [X])
    end.

" . -1) ((marker . 1) . -163) ((marker . 1) . -432) ((marker . 1) . -163) ((marker . 1) . -432) ((marker) . -433) nil ("-" . 2) nil (1 . 2) nil (nil rear-nonsticky nil 721 . 722) (nil fontified nil 435 . 722) (435 . 722) (t 22951 46361 809744 796000) nil (424 . 428) ("                " . -424) (444 . 445) nil (440 . 444) nil (423 . 440) nil (418 . 423) nil (417 . 418) nil (416 . 417) nil (396 . 416) nil ("
" . 359) nil ("
" . 385) nil (386 . 398) ("            " . 385) (397 . 398) nil (384 . 397) nil (383 . 384) nil (380 . 383) nil (371 . 380) nil (364 . 371) nil (360 . 364) ("    " . 359) (363 . 364) nil (358 . 363) nil (357 . 358) nil (349 . 357) nil (348 . 349) (339 . 343) ("                " . -339) (359 . 360) nil (355 . 359) nil (338 . 355) nil (332 . 338) nil (320 . 332) ("            " . 319) (331 . 332) nil (318 . 331) nil (317 . 318) nil (313 . 317) nil (310 . 311) nil (311 . 312) nil (310 . 311) nil (290 . 310) nil (277 . 290) nil (276 . 277) nil (271 . 276) nil ("X" . -271) nil (271 . 272) nil (270 . 271) nil (" " . -270) nil (266 . 271) nil (257 . 266) nil ("        {toe. X} ->
" . 258) nil ("
" . 258) nil (278 . 279) nil (278 . 279) nil (275 . 276) nil (274 . 275) nil (267 . 274) nil (259 . 267) (" " . -259) ("        " . 258) (266 . 267) nil (257 . 269) nil (256 . 257) nil (250 . 256) nil ("a" . -250) nil ("l" . -251) nil (250 . 252) nil (237 . 250) nil (236 . 237) nil (235 . 236) nil (233 . 234) nil ("x" . 233) nil (234 . 235) nil ("}" . -234) ((marker*) . 1) ((marker) . -1) ((marker) . -1) nil (231 . 235) nil (230 . 231) nil (212 . 230) nil (211 . 212) nil (197 . 209) ("                      " . -197) (177 . 185) ("                  " . -177) (165 . 169) ("              " . -165) ("    " . -164) 245 nil (164 . 168) nil ("(" . 159) ((marker*) . 1) ((marker) . -1) ((marker*) . 1) nil ("
" . 218) nil (241 . 243) nil (219 . 241) ("                      " . 218) (240 . 241) nil (217 . 240) nil (216 . 217) nil (211 . 216) nil (210 . 211) nil (206 . 210) nil (187 . 206) nil (180 . 187) nil (166 . 180) ("              " . 165) (179 . 180) nil (164 . 179) nil (163 . 164) nil (152 . 163) nil (151 . 152) (142 . 146) ("                " . -142) (162 . 163) nil (158 . 162) nil (141 . 158) nil (133 . 141) nil (120 . 133) nil (119 . 120) nil (114 . 119) nil (113 . 114) nil (103 . 112) nil (102 . 104) nil (98 . 102) nil (92 . 98) nil (80 . 92) nil ("            ui:for
" . 80) nil (80 . 92) ("           " . -80) 97 nil (91 . 97) nil (" " . -91) nil (79 . 92) nil (78 . 79) nil (73 . 78) nil (72 . 73) nil (68 . 72) nil (59 . 68) nil (52 . 59) nil (47 . 52) nil (46 . 47) nil (46 . 47) nil (37 . 46) nil (35 . 37) nil (16 . 35) nil (14 . 16) nil (12 . 14) nil ("." . -12) nil (1 . 13) (t . -1)))