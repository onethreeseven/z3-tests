; This demonstrates a randomly unsound result I'm getting from z3.

; It is from the same problem as the previous demo but slightly simpler, in that it only needs one
; round of incremental assertions to trigger the bug.

; $ z3 --version
; Z3 version 4.8.14 - 64 bit

; $ z3 smt.random_seed=62 random_unsound_result_2.smt2
; sat
; sat
; sat

; $ z3 smt.random_seed=63 random_unsound_result_2.smt2
; sat
; sat
; unsat

; (The correct result is sat, sat, sat.)

(check-sat)  ; This is here to cause a switch to the incremental solver

(declare-fun b!12 () Bool)
(declare-fun b!11 () Bool)
(declare-fun b!22 () Bool)
(declare-fun b!1 () Bool)
(declare-fun b!13 () Bool)
(declare-fun b!23 () Bool)
(declare-fun b!2 () Bool)
(declare-fun b!15 () Bool)
(declare-fun b!14 () Bool)
(declare-fun b!25 () Bool)
(declare-fun b!4 () Bool)
(declare-fun b!16 () Bool)
(declare-fun b!26 () Bool)
(declare-fun b!5 () Bool)
(declare-fun b!17 () Bool)
(declare-fun b!27 () Bool)
(declare-fun b!6 () Bool)
(declare-fun b!18 () Bool)
(declare-fun b!28 () Bool)
(declare-fun b!7 () Bool)
(declare-fun b!19 () Bool)
(declare-fun b!29 () Bool)
(declare-fun b!8 () Bool)
(declare-fun b!32 () Bool)
(declare-fun b!31 () Bool)
(declare-fun b!42 () Bool)
(declare-fun b!21 () Bool)
(declare-fun b!35 () Bool)
(declare-fun b!34 () Bool)
(declare-fun b!45 () Bool)
(declare-fun b!24 () Bool)
(declare-fun b!41 () Bool)
(declare-fun b!40 () Bool)
(declare-fun b!51 () Bool)
(declare-fun b!30 () Bool)
(declare-fun b!53 () Bool)
(declare-fun b!52 () Bool)
(declare-fun b!63 () Bool)
(declare-fun b!56 () Bool)
(declare-fun b!55 () Bool)
(declare-fun b!66 () Bool)
(declare-fun b!62 () Bool)
(declare-fun b!61 () Bool)
(declare-fun b!72 () Bool)
(declare-fun b!74 () Bool)
(declare-fun b!73 () Bool)
(declare-fun b!84 () Bool)
(declare-fun b!77 () Bool)
(declare-fun b!76 () Bool)
(declare-fun b!87 () Bool)
(declare-fun b!80 () Bool)
(declare-fun b!79 () Bool)
(declare-fun b!90 () Bool)
(declare-fun b!69 () Bool)
(declare-fun b!83 () Bool)
(declare-fun b!82 () Bool)
(declare-fun b!93 () Bool)
(declare-fun b!95 () Bool)
(declare-fun b!94 () Bool)
(declare-fun b!105 () Bool)
(declare-fun b!98 () Bool)
(declare-fun b!97 () Bool)
(declare-fun b!108 () Bool)
(declare-fun b!104 () Bool)
(declare-fun b!103 () Bool)
(declare-fun b!114 () Bool)
(declare-fun b!116 () Bool)
(declare-fun b!115 () Bool)
(declare-fun b!126 () Bool)
(declare-fun b!119 () Bool)
(declare-fun b!118 () Bool)
(declare-fun b!129 () Bool)
(declare-fun b!125 () Bool)
(declare-fun b!124 () Bool)
(declare-fun b!135 () Bool)
(declare-fun b!138 () Bool)
(declare-fun b!137 () Bool)
(declare-fun b!148 () Bool)
(declare-fun b!127 () Bool)
(declare-fun b!139 () Bool)
(declare-fun b!149 () Bool)
(declare-fun b!128 () Bool)
(declare-fun b!141 () Bool)
(declare-fun b!140 () Bool)
(declare-fun b!151 () Bool)
(declare-fun b!130 () Bool)
(declare-fun b!142 () Bool)
(declare-fun b!152 () Bool)
(declare-fun b!131 () Bool)
(declare-fun b!143 () Bool)
(declare-fun b!153 () Bool)
(declare-fun b!132 () Bool)
(declare-fun b!144 () Bool)
(declare-fun b!154 () Bool)
(declare-fun b!133 () Bool)
(declare-fun b!145 () Bool)
(declare-fun b!155 () Bool)
(declare-fun b!134 () Bool)
(declare-fun b!181 () Bool)
(declare-fun b!180 () Bool)
(declare-fun b!191 () Bool)
(declare-fun b!170 () Bool)
(declare-fun b!182 () Bool)
(declare-fun b!192 () Bool)
(declare-fun b!171 () Bool)
(declare-fun b!185 () Bool)
(declare-fun b!184 () Bool)
(declare-fun b!195 () Bool)
(declare-fun b!174 () Bool)
(declare-fun b!186 () Bool)
(declare-fun b!196 () Bool)
(declare-fun b!175 () Bool)
(declare-fun b!202 () Bool)
(declare-fun b!201 () Bool)
(declare-fun b!212 () Bool)
(declare-fun b!203 () Bool)
(declare-fun b!213 () Bool)
(declare-fun b!206 () Bool)
(declare-fun b!205 () Bool)
(declare-fun b!216 () Bool)
(declare-fun b!207 () Bool)
(declare-fun b!217 () Bool)
(declare-fun b!243 () Bool)
(declare-fun b!242 () Bool)
(declare-fun b!253 () Bool)
(declare-fun b!232 () Bool)
(declare-fun b!244 () Bool)
(declare-fun b!254 () Bool)
(declare-fun b!233 () Bool)
(declare-fun b!245 () Bool)
(declare-fun b!255 () Bool)
(declare-fun b!234 () Bool)
(declare-fun b!246 () Bool)
(declare-fun b!256 () Bool)
(declare-fun b!235 () Bool)
(declare-fun b!247 () Bool)
(declare-fun b!257 () Bool)
(declare-fun b!236 () Bool)
(declare-fun b!249 () Bool)
(declare-fun b!248 () Bool)
(declare-fun b!259 () Bool)
(declare-fun b!238 () Bool)
(declare-fun b!250 () Bool)
(declare-fun b!260 () Bool)
(declare-fun b!239 () Bool)
(declare-fun b!263 () Bool)
(declare-fun b!262 () Bool)
(declare-fun b!273 () Bool)
(declare-fun b!252 () Bool)
(declare-fun b!269 () Bool)
(declare-fun b!268 () Bool)
(declare-fun b!279 () Bool)
(declare-fun b!258 () Bool)
(declare-fun b!272 () Bool)
(declare-fun b!271 () Bool)
(declare-fun b!282 () Bool)
(declare-fun b!261 () Bool)
(declare-fun b!284 () Bool)
(declare-fun b!283 () Bool)
(declare-fun b!294 () Bool)
(declare-fun b!290 () Bool)
(declare-fun b!289 () Bool)
(declare-fun b!300 () Bool)
(declare-fun b!293 () Bool)
(declare-fun b!292 () Bool)
(declare-fun b!303 () Bool)
(declare-fun b!305 () Bool)
(declare-fun b!304 () Bool)
(declare-fun b!315 () Bool)
(declare-fun b!308 () Bool)
(declare-fun b!307 () Bool)
(declare-fun b!318 () Bool)
(declare-fun b!297 () Bool)
(declare-fun b!311 () Bool)
(declare-fun b!310 () Bool)
(declare-fun b!321 () Bool)
(declare-fun b!314 () Bool)
(declare-fun b!313 () Bool)
(declare-fun b!324 () Bool)
(declare-fun b!326 () Bool)
(declare-fun b!325 () Bool)
(declare-fun b!336 () Bool)
(declare-fun b!332 () Bool)
(declare-fun b!331 () Bool)
(declare-fun b!342 () Bool)
(declare-fun b!335 () Bool)
(declare-fun b!334 () Bool)
(declare-fun b!345 () Bool)
(declare-fun b!347 () Bool)
(declare-fun b!346 () Bool)
(declare-fun b!357 () Bool)
(declare-fun b!353 () Bool)
(declare-fun b!352 () Bool)
(declare-fun b!363 () Bool)
(declare-fun b!356 () Bool)
(declare-fun b!355 () Bool)
(declare-fun b!366 () Bool)
(declare-fun b!369 () Bool)
(declare-fun b!368 () Bool)
(declare-fun b!379 () Bool)
(declare-fun b!358 () Bool)
(declare-fun b!370 () Bool)
(declare-fun b!380 () Bool)
(declare-fun b!359 () Bool)
(declare-fun b!371 () Bool)
(declare-fun b!381 () Bool)
(declare-fun b!360 () Bool)
(declare-fun b!372 () Bool)
(declare-fun b!382 () Bool)
(declare-fun b!361 () Bool)
(declare-fun b!373 () Bool)
(declare-fun b!383 () Bool)
(declare-fun b!362 () Bool)
(declare-fun b!375 () Bool)
(declare-fun b!374 () Bool)
(declare-fun b!385 () Bool)
(declare-fun b!364 () Bool)
(declare-fun b!376 () Bool)
(declare-fun b!386 () Bool)
(declare-fun b!365 () Bool)
(declare-fun b!0 () Bool)
(declare-fun b!10 () Bool)
(declare-fun b!3 () Bool)
(declare-fun b!9 () Bool)
(declare-fun b!20 () Bool)
(declare-fun b!33 () Bool)
(declare-fun b!36 () Bool)
(declare-fun b!37 () Bool)
(declare-fun b!38 () Bool)
(declare-fun b!39 () Bool)
(declare-fun b!43 () Bool)
(declare-fun b!44 () Bool)
(declare-fun b!54 () Bool)
(declare-fun b!46 () Bool)
(declare-fun b!47 () Bool)
(declare-fun b!57 () Bool)
(declare-fun b!48 () Bool)
(declare-fun b!58 () Bool)
(declare-fun b!49 () Bool)
(declare-fun b!59 () Bool)
(declare-fun b!50 () Bool)
(declare-fun b!60 () Bool)
(declare-fun b!64 () Bool)
(declare-fun b!65 () Bool)
(declare-fun b!75 () Bool)
(declare-fun b!67 () Bool)
(declare-fun b!68 () Bool)
(declare-fun b!78 () Bool)
(declare-fun b!70 () Bool)
(declare-fun b!71 () Bool)
(declare-fun b!81 () Bool)
(declare-fun b!85 () Bool)
(declare-fun b!86 () Bool)
(declare-fun b!96 () Bool)
(declare-fun b!88 () Bool)
(declare-fun b!89 () Bool)
(declare-fun b!99 () Bool)
(declare-fun b!100 () Bool)
(declare-fun b!91 () Bool)
(declare-fun b!101 () Bool)
(declare-fun b!92 () Bool)
(declare-fun b!102 () Bool)
(declare-fun b!106 () Bool)
(declare-fun b!107 () Bool)
(declare-fun b!117 () Bool)
(declare-fun b!109 () Bool)
(declare-fun b!110 () Bool)
(declare-fun b!120 () Bool)
(declare-fun b!111 () Bool)
(declare-fun b!121 () Bool)
(declare-fun b!112 () Bool)
(declare-fun b!122 () Bool)
(declare-fun b!113 () Bool)
(declare-fun b!123 () Bool)
(declare-fun b!136 () Bool)
(declare-fun b!146 () Bool)
(declare-fun b!147 () Bool)
(declare-fun b!157 () Bool)
(declare-fun b!158 () Bool)
(declare-fun b!159 () Bool)
(declare-fun b!150 () Bool)
(declare-fun b!160 () Bool)
(declare-fun b!161 () Bool)
(declare-fun b!162 () Bool)
(declare-fun b!163 () Bool)
(declare-fun b!164 () Bool)
(declare-fun b!165 () Bool)
(declare-fun b!156 () Bool)
(declare-fun b!166 () Bool)
(declare-fun b!167 () Bool)
(declare-fun b!168 () Bool)
(declare-fun b!178 () Bool)
(declare-fun b!169 () Bool)
(declare-fun b!179 () Bool)
(declare-fun b!172 () Bool)
(declare-fun b!173 () Bool)
(declare-fun b!183 () Bool)
(declare-fun b!176 () Bool)
(declare-fun b!177 () Bool)
(declare-fun b!187 () Bool)
(declare-fun b!188 () Bool)
(declare-fun b!189 () Bool)
(declare-fun b!199 () Bool)
(declare-fun b!190 () Bool)
(declare-fun b!200 () Bool)
(declare-fun b!193 () Bool)
(declare-fun b!194 () Bool)
(declare-fun b!204 () Bool)
(declare-fun b!197 () Bool)
(declare-fun b!198 () Bool)
(declare-fun b!208 () Bool)
(declare-fun b!209 () Bool)
(declare-fun b!210 () Bool)
(declare-fun b!220 () Bool)
(declare-fun b!211 () Bool)
(declare-fun b!221 () Bool)
(declare-fun b!222 () Bool)
(declare-fun b!223 () Bool)
(declare-fun b!214 () Bool)
(declare-fun b!224 () Bool)
(declare-fun b!215 () Bool)
(declare-fun b!225 () Bool)
(declare-fun b!226 () Bool)
(declare-fun b!227 () Bool)
(declare-fun b!218 () Bool)
(declare-fun b!228 () Bool)
(declare-fun b!219 () Bool)
(declare-fun b!229 () Bool)
(declare-fun b!230 () Bool)
(declare-fun b!231 () Bool)
(declare-fun b!241 () Bool)
(declare-fun b!237 () Bool)
(declare-fun b!240 () Bool)
(declare-fun b!251 () Bool)
(declare-fun b!264 () Bool)
(declare-fun b!265 () Bool)
(declare-fun b!266 () Bool)
(declare-fun b!267 () Bool)
(declare-fun b!270 () Bool)
(declare-fun b!274 () Bool)
(declare-fun b!275 () Bool)
(declare-fun b!285 () Bool)
(declare-fun b!276 () Bool)
(declare-fun b!286 () Bool)
(declare-fun b!277 () Bool)
(declare-fun b!287 () Bool)
(declare-fun b!278 () Bool)
(declare-fun b!288 () Bool)
(declare-fun b!280 () Bool)
(declare-fun b!281 () Bool)
(declare-fun b!291 () Bool)
(declare-fun b!295 () Bool)
(declare-fun b!296 () Bool)
(declare-fun b!306 () Bool)
(declare-fun b!298 () Bool)
(declare-fun b!299 () Bool)
(declare-fun b!309 () Bool)
(declare-fun b!301 () Bool)
(declare-fun b!302 () Bool)
(declare-fun b!312 () Bool)
(declare-fun b!316 () Bool)
(declare-fun b!317 () Bool)
(declare-fun b!327 () Bool)
(declare-fun b!328 () Bool)
(declare-fun b!319 () Bool)
(declare-fun b!329 () Bool)
(declare-fun b!320 () Bool)
(declare-fun b!330 () Bool)
(declare-fun b!322 () Bool)
(declare-fun b!323 () Bool)
(declare-fun b!333 () Bool)
(declare-fun b!337 () Bool)
(declare-fun b!338 () Bool)
(declare-fun b!348 () Bool)
(declare-fun b!339 () Bool)
(declare-fun b!349 () Bool)
(declare-fun b!340 () Bool)
(declare-fun b!350 () Bool)
(declare-fun b!341 () Bool)
(declare-fun b!351 () Bool)
(declare-fun b!343 () Bool)
(declare-fun b!344 () Bool)
(declare-fun b!354 () Bool)
(declare-fun b!367 () Bool)
(declare-fun b!377 () Bool)
(declare-fun b!378 () Bool)
(declare-fun b!384 () Bool)
(declare-fun b!387 () Bool)
(assert ((_ pbeq 2 1 1 1 1) b!1 b!22 b!11 b!12))
(assert ((_ pbeq 2 1 1 1 1) b!2 b!23 b!12 b!13))
(assert ((_ pbeq 1 1 1 1 1) b!4 b!25 b!14 b!15))
(assert ((_ pbeq 1 1 1 1 1) b!5 b!26 b!15 b!16))
(assert ((_ pbeq 3 1 1 1 1) b!6 b!27 b!16 b!17))
(assert ((_ pbeq 2 1 1 1 1) b!7 b!28 b!17 b!18))
(assert ((_ pbeq 2 1 1 1 1) b!8 b!29 b!18 b!19))
(assert ((_ pbeq 2 1 1 1 1) b!21 b!42 b!31 b!32))
(assert ((_ pbeq 2 1 1 1 1) b!24 b!45 b!34 b!35))
(assert ((_ pbeq 2 1 1 1 1) b!30 b!51 b!40 b!41))
(assert ((_ pbeq 3 1 1 1 1) b!42 b!63 b!52 b!53))
(assert ((_ pbeq 1 1 1 1 1) b!45 b!66 b!55 b!56))
(assert ((_ pbeq 3 1 1 1 1) b!51 b!72 b!61 b!62))
(assert ((_ pbeq 1 1 1 1 1) b!63 b!84 b!73 b!74))
(assert ((_ pbeq 2 1 1 1 1) b!66 b!87 b!76 b!77))
(assert ((_ pbeq 3 1 1 1 1) b!69 b!90 b!79 b!80))
(assert ((_ pbeq 2 1 1 1 1) b!72 b!93 b!82 b!83))
(assert ((_ pbeq 2 1 1 1 1) b!84 b!105 b!94 b!95))
(assert ((_ pbeq 3 1 1 1 1) b!87 b!108 b!97 b!98))
(assert ((_ pbeq 2 1 1 1 1) b!93 b!114 b!103 b!104))
(assert ((_ pbeq 1 1 1 1 1) b!105 b!126 b!115 b!116))
(assert ((_ pbeq 2 1 1 1 1) b!108 b!129 b!118 b!119))
(assert ((_ pbeq 2 1 1 1 1) b!114 b!135 b!124 b!125))
(assert ((_ pbeq 3 1 1 1 1) b!127 b!148 b!137 b!138))
(assert ((_ pbeq 3 1 1 1 1) b!128 b!149 b!138 b!139))
(assert ((_ pbeq 2 1 1 1 1) b!130 b!151 b!140 b!141))
(assert ((_ pbeq 1 1 1 1 1) b!131 b!152 b!141 b!142))
(assert ((_ pbeq 3 1 1 1 1) b!132 b!153 b!142 b!143))
(assert ((_ pbeq 1 1 1 1 1) b!133 b!154 b!143 b!144))
(assert ((_ pbeq 2 1 1 1 1) b!134 b!155 b!144 b!145))
(assert ((_ pbeq 3 1 1 1 1) b!170 b!191 b!180 b!181))
(assert ((_ pbeq 2 1 1 1 1) b!171 b!192 b!181 b!182))
(assert ((_ pbeq 3 1 1 1 1) b!174 b!195 b!184 b!185))
(assert ((_ pbeq 1 1 1 1 1) b!175 b!196 b!185 b!186))
(assert ((_ pbeq 3 1 1 1 1) b!191 b!212 b!201 b!202))
(assert ((_ pbeq 1 1 1 1 1) b!192 b!213 b!202 b!203))
(assert ((_ pbeq 3 1 1 1 1) b!195 b!216 b!205 b!206))
(assert ((_ pbeq 2 1 1 1 1) b!196 b!217 b!206 b!207))
(assert ((_ pbeq 2 1 1 1 1) b!232 b!253 b!242 b!243))
(assert ((_ pbeq 2 1 1 1 1) b!233 b!254 b!243 b!244))
(assert ((_ pbeq 2 1 1 1 1) b!234 b!255 b!244 b!245))
(assert ((_ pbeq 3 1 1 1 1) b!235 b!256 b!245 b!246))
(assert ((_ pbeq 3 1 1 1 1) b!236 b!257 b!246 b!247))
(assert ((_ pbeq 3 1 1 1 1) b!238 b!259 b!248 b!249))
(assert ((_ pbeq 3 1 1 1 1) b!239 b!260 b!249 b!250))
(assert ((_ pbeq 2 1 1 1 1) b!252 b!273 b!262 b!263))
(assert ((_ pbeq 2 1 1 1 1) b!258 b!279 b!268 b!269))
(assert ((_ pbeq 2 1 1 1 1) b!261 b!282 b!271 b!272))
(assert ((_ pbeq 1 1 1 1 1) b!273 b!294 b!283 b!284))
(assert ((_ pbeq 3 1 1 1 1) b!279 b!300 b!289 b!290))
(assert ((_ pbeq 2 1 1 1 1) b!282 b!303 b!292 b!293))
(assert ((_ pbeq 3 1 1 1 1) b!294 b!315 b!304 b!305))
(assert ((_ pbeq 3 1 1 1 1) b!297 b!318 b!307 b!308))
(assert ((_ pbeq 3 1 1 1 1) b!300 b!321 b!310 b!311))
(assert ((_ pbeq 3 1 1 1 1) b!303 b!324 b!313 b!314))
(assert ((_ pbeq 2 1 1 1 1) b!315 b!336 b!325 b!326))
(assert ((_ pbeq 3 1 1 1 1) b!321 b!342 b!331 b!332))
(assert ((_ pbeq 1 1 1 1 1) b!324 b!345 b!334 b!335))
(assert ((_ pbeq 2 1 1 1 1) b!336 b!357 b!346 b!347))
(assert ((_ pbeq 2 1 1 1 1) b!342 b!363 b!352 b!353))
(assert ((_ pbeq 1 1 1 1 1) b!345 b!366 b!355 b!356))
(assert ((_ pbeq 1 1 1 1 1) b!358 b!379 b!368 b!369))
(assert ((_ pbeq 3 1 1 1 1) b!359 b!380 b!369 b!370))
(assert ((_ pbeq 2 1 1 1 1) b!360 b!381 b!370 b!371))
(assert ((_ pbeq 2 1 1 1 1) b!361 b!382 b!371 b!372))
(assert ((_ pbeq 3 1 1 1 1) b!362 b!383 b!372 b!373))
(assert ((_ pbeq 1 1 1 1 1) b!364 b!385 b!374 b!375))
(assert ((_ pbeq 2 1 1 1 1) b!365 b!386 b!375 b!376))
(assert (or ((_ pbeq 0 1 1) b!10 b!0) ((_ pbeq 2 1 1) b!10 b!0)))
(assert (or ((_ pbeq 0 1 1 1) b!11 b!0 b!1) ((_ pbeq 2 1 1 1) b!11 b!0 b!1)))
(assert (or ((_ pbeq 0 1 1 1) b!12 b!1 b!2) ((_ pbeq 2 1 1 1) b!12 b!1 b!2)))
(assert (or ((_ pbeq 0 1 1 1) b!13 b!2 b!3) ((_ pbeq 2 1 1 1) b!13 b!2 b!3)))
(assert (or ((_ pbeq 0 1 1 1) b!14 b!3 b!4) ((_ pbeq 2 1 1 1) b!14 b!3 b!4)))
(assert (or ((_ pbeq 0 1 1 1) b!15 b!4 b!5) ((_ pbeq 2 1 1 1) b!15 b!4 b!5)))
(assert (or ((_ pbeq 0 1 1 1) b!16 b!5 b!6) ((_ pbeq 2 1 1 1) b!16 b!5 b!6)))
(assert (or ((_ pbeq 0 1 1 1) b!17 b!6 b!7) ((_ pbeq 2 1 1 1) b!17 b!6 b!7)))
(assert (or ((_ pbeq 0 1 1 1) b!18 b!7 b!8) ((_ pbeq 2 1 1 1) b!18 b!7 b!8)))
(assert (or ((_ pbeq 0 1 1 1) b!19 b!8 b!9) ((_ pbeq 2 1 1 1) b!19 b!8 b!9)))
(assert (or ((_ pbeq 0 1 1) b!20 b!9) ((_ pbeq 2 1 1) b!20 b!9)))
(assert (or ((_ pbeq 0 1 1 1) b!10 b!31 b!21) ((_ pbeq 2 1 1 1) b!10 b!31 b!21)))
(assert (or ((_ pbeq 0 1 1 1 1) b!11 b!32 b!21 b!22)
    ((_ pbeq 2 1 1 1 1) b!11 b!32 b!21 b!22)))
(assert (or ((_ pbeq 0 1 1 1 1) b!12 b!33 b!22 b!23)
    ((_ pbeq 2 1 1 1 1) b!12 b!33 b!22 b!23)))
(assert (or ((_ pbeq 0 1 1 1 1) b!13 b!34 b!23 b!24)
    ((_ pbeq 2 1 1 1 1) b!13 b!34 b!23 b!24)))
(assert (or ((_ pbeq 0 1 1 1 1) b!14 b!35 b!24 b!25)
    ((_ pbeq 2 1 1 1 1) b!14 b!35 b!24 b!25)))
(assert (or ((_ pbeq 0 1 1 1 1) b!15 b!36 b!25 b!26)
    ((_ pbeq 2 1 1 1 1) b!15 b!36 b!25 b!26)))
(assert (or ((_ pbeq 0 1 1 1 1) b!16 b!37 b!26 b!27)
    ((_ pbeq 2 1 1 1 1) b!16 b!37 b!26 b!27)))
(assert (or ((_ pbeq 0 1 1 1 1) b!17 b!38 b!27 b!28)
    ((_ pbeq 2 1 1 1 1) b!17 b!38 b!27 b!28)))
(assert (or ((_ pbeq 0 1 1 1 1) b!18 b!39 b!28 b!29)
    ((_ pbeq 2 1 1 1 1) b!18 b!39 b!28 b!29)))
(assert (or ((_ pbeq 0 1 1 1 1) b!19 b!40 b!29 b!30)
    ((_ pbeq 2 1 1 1 1) b!19 b!40 b!29 b!30)))
(assert (or ((_ pbeq 0 1 1 1) b!20 b!41 b!30) ((_ pbeq 2 1 1 1) b!20 b!41 b!30)))
(assert (or ((_ pbeq 0 1 1 1) b!31 b!52 b!42) ((_ pbeq 2 1 1 1) b!31 b!52 b!42)))
(assert (or ((_ pbeq 0 1 1 1 1) b!32 b!53 b!42 b!43)
    ((_ pbeq 2 1 1 1 1) b!32 b!53 b!42 b!43)))
(assert (or ((_ pbeq 0 1 1 1 1) b!33 b!54 b!43 b!44)
    ((_ pbeq 2 1 1 1 1) b!33 b!54 b!43 b!44)))
(assert (or ((_ pbeq 0 1 1 1 1) b!34 b!55 b!44 b!45)
    ((_ pbeq 2 1 1 1 1) b!34 b!55 b!44 b!45)))
(assert (or ((_ pbeq 0 1 1 1 1) b!35 b!56 b!45 b!46)
    ((_ pbeq 2 1 1 1 1) b!35 b!56 b!45 b!46)))
(assert (or ((_ pbeq 0 1 1 1 1) b!36 b!57 b!46 b!47)
    ((_ pbeq 2 1 1 1 1) b!36 b!57 b!46 b!47)))
(assert (or ((_ pbeq 0 1 1 1 1) b!37 b!58 b!47 b!48)
    ((_ pbeq 2 1 1 1 1) b!37 b!58 b!47 b!48)))
(assert (or ((_ pbeq 0 1 1 1 1) b!38 b!59 b!48 b!49)
    ((_ pbeq 2 1 1 1 1) b!38 b!59 b!48 b!49)))
(assert (or ((_ pbeq 0 1 1 1 1) b!39 b!60 b!49 b!50)
    ((_ pbeq 2 1 1 1 1) b!39 b!60 b!49 b!50)))
(assert (or ((_ pbeq 0 1 1 1 1) b!40 b!61 b!50 b!51)
    ((_ pbeq 2 1 1 1 1) b!40 b!61 b!50 b!51)))
(assert (or ((_ pbeq 0 1 1 1) b!41 b!62 b!51) ((_ pbeq 2 1 1 1) b!41 b!62 b!51)))
(assert (or ((_ pbeq 0 1 1 1) b!52 b!73 b!63) ((_ pbeq 2 1 1 1) b!52 b!73 b!63)))
(assert (or ((_ pbeq 0 1 1 1 1) b!53 b!74 b!63 b!64)
    ((_ pbeq 2 1 1 1 1) b!53 b!74 b!63 b!64)))
(assert (or ((_ pbeq 0 1 1 1 1) b!54 b!75 b!64 b!65)
    ((_ pbeq 2 1 1 1 1) b!54 b!75 b!64 b!65)))
(assert (or ((_ pbeq 0 1 1 1 1) b!55 b!76 b!65 b!66)
    ((_ pbeq 2 1 1 1 1) b!55 b!76 b!65 b!66)))
(assert (or ((_ pbeq 0 1 1 1 1) b!56 b!77 b!66 b!67)
    ((_ pbeq 2 1 1 1 1) b!56 b!77 b!66 b!67)))
(assert (or ((_ pbeq 0 1 1 1 1) b!57 b!78 b!67 b!68)
    ((_ pbeq 2 1 1 1 1) b!57 b!78 b!67 b!68)))
(assert (or ((_ pbeq 0 1 1 1 1) b!58 b!79 b!68 b!69)
    ((_ pbeq 2 1 1 1 1) b!58 b!79 b!68 b!69)))
(assert (or ((_ pbeq 0 1 1 1 1) b!59 b!80 b!69 b!70)
    ((_ pbeq 2 1 1 1 1) b!59 b!80 b!69 b!70)))
(assert (or ((_ pbeq 0 1 1 1 1) b!60 b!81 b!70 b!71)
    ((_ pbeq 2 1 1 1 1) b!60 b!81 b!70 b!71)))
(assert (or ((_ pbeq 0 1 1 1 1) b!61 b!82 b!71 b!72)
    ((_ pbeq 2 1 1 1 1) b!61 b!82 b!71 b!72)))
(assert (or ((_ pbeq 0 1 1 1) b!62 b!83 b!72) ((_ pbeq 2 1 1 1) b!62 b!83 b!72)))
(assert (or ((_ pbeq 0 1 1 1) b!73 b!94 b!84) ((_ pbeq 2 1 1 1) b!73 b!94 b!84)))
(assert (or ((_ pbeq 0 1 1 1 1) b!74 b!95 b!84 b!85)
    ((_ pbeq 2 1 1 1 1) b!74 b!95 b!84 b!85)))
(assert (or ((_ pbeq 0 1 1 1 1) b!75 b!96 b!85 b!86)
    ((_ pbeq 2 1 1 1 1) b!75 b!96 b!85 b!86)))
(assert (or ((_ pbeq 0 1 1 1 1) b!76 b!97 b!86 b!87)
    ((_ pbeq 2 1 1 1 1) b!76 b!97 b!86 b!87)))
(assert (or ((_ pbeq 0 1 1 1 1) b!77 b!98 b!87 b!88)
    ((_ pbeq 2 1 1 1 1) b!77 b!98 b!87 b!88)))
(assert (or ((_ pbeq 0 1 1 1 1) b!78 b!99 b!88 b!89)
    ((_ pbeq 2 1 1 1 1) b!78 b!99 b!88 b!89)))
(assert (or ((_ pbeq 0 1 1 1 1) b!79 b!100 b!89 b!90)
    ((_ pbeq 2 1 1 1 1) b!79 b!100 b!89 b!90)))
(assert (or ((_ pbeq 0 1 1 1 1) b!80 b!101 b!90 b!91)
    ((_ pbeq 2 1 1 1 1) b!80 b!101 b!90 b!91)))
(assert (or ((_ pbeq 0 1 1 1 1) b!81 b!102 b!91 b!92)
    ((_ pbeq 2 1 1 1 1) b!81 b!102 b!91 b!92)))
(assert (or ((_ pbeq 0 1 1 1 1) b!82 b!103 b!92 b!93)
    ((_ pbeq 2 1 1 1 1) b!82 b!103 b!92 b!93)))
(assert (or ((_ pbeq 0 1 1 1) b!83 b!104 b!93) ((_ pbeq 2 1 1 1) b!83 b!104 b!93)))
(assert (or ((_ pbeq 0 1 1 1) b!94 b!115 b!105) ((_ pbeq 2 1 1 1) b!94 b!115 b!105)))
(assert (or ((_ pbeq 0 1 1 1 1) b!95 b!116 b!105 b!106)
    ((_ pbeq 2 1 1 1 1) b!95 b!116 b!105 b!106)))
(assert (or ((_ pbeq 0 1 1 1 1) b!96 b!117 b!106 b!107)
    ((_ pbeq 2 1 1 1 1) b!96 b!117 b!106 b!107)))
(assert (or ((_ pbeq 0 1 1 1 1) b!97 b!118 b!107 b!108)
    ((_ pbeq 2 1 1 1 1) b!97 b!118 b!107 b!108)))
(assert (or ((_ pbeq 0 1 1 1 1) b!98 b!119 b!108 b!109)
    ((_ pbeq 2 1 1 1 1) b!98 b!119 b!108 b!109)))
(assert (or ((_ pbeq 0 1 1 1 1) b!99 b!120 b!109 b!110)
    ((_ pbeq 2 1 1 1 1) b!99 b!120 b!109 b!110)))
(assert (or ((_ pbeq 0 1 1 1 1) b!100 b!121 b!110 b!111)
    ((_ pbeq 2 1 1 1 1) b!100 b!121 b!110 b!111)))
(assert (or ((_ pbeq 0 1 1 1 1) b!101 b!122 b!111 b!112)
    ((_ pbeq 2 1 1 1 1) b!101 b!122 b!111 b!112)))
(assert (or ((_ pbeq 0 1 1 1 1) b!102 b!123 b!112 b!113)
    ((_ pbeq 2 1 1 1 1) b!102 b!123 b!112 b!113)))
(assert (or ((_ pbeq 0 1 1 1 1) b!103 b!124 b!113 b!114)
    ((_ pbeq 2 1 1 1 1) b!103 b!124 b!113 b!114)))
(assert (or ((_ pbeq 0 1 1 1) b!104 b!125 b!114) ((_ pbeq 2 1 1 1) b!104 b!125 b!114)))
(assert (or ((_ pbeq 0 1 1 1) b!115 b!136 b!126) ((_ pbeq 2 1 1 1) b!115 b!136 b!126)))
(assert (or ((_ pbeq 0 1 1 1 1) b!116 b!137 b!126 b!127)
    ((_ pbeq 2 1 1 1 1) b!116 b!137 b!126 b!127)))
(assert (or ((_ pbeq 0 1 1 1 1) b!117 b!138 b!127 b!128)
    ((_ pbeq 2 1 1 1 1) b!117 b!138 b!127 b!128)))
(assert (or ((_ pbeq 0 1 1 1 1) b!118 b!139 b!128 b!129)
    ((_ pbeq 2 1 1 1 1) b!118 b!139 b!128 b!129)))
(assert (or ((_ pbeq 0 1 1 1 1) b!119 b!140 b!129 b!130)
    ((_ pbeq 2 1 1 1 1) b!119 b!140 b!129 b!130)))
(assert (or ((_ pbeq 0 1 1 1 1) b!120 b!141 b!130 b!131)
    ((_ pbeq 2 1 1 1 1) b!120 b!141 b!130 b!131)))
(assert (or ((_ pbeq 0 1 1 1 1) b!121 b!142 b!131 b!132)
    ((_ pbeq 2 1 1 1 1) b!121 b!142 b!131 b!132)))
(assert (or ((_ pbeq 0 1 1 1 1) b!122 b!143 b!132 b!133)
    ((_ pbeq 2 1 1 1 1) b!122 b!143 b!132 b!133)))
(assert (or ((_ pbeq 0 1 1 1 1) b!123 b!144 b!133 b!134)
    ((_ pbeq 2 1 1 1 1) b!123 b!144 b!133 b!134)))
(assert (or ((_ pbeq 0 1 1 1 1) b!124 b!145 b!134 b!135)
    ((_ pbeq 2 1 1 1 1) b!124 b!145 b!134 b!135)))
(assert (or ((_ pbeq 0 1 1 1) b!125 b!146 b!135) ((_ pbeq 2 1 1 1) b!125 b!146 b!135)))
(assert (or ((_ pbeq 0 1 1 1) b!136 b!157 b!147) ((_ pbeq 2 1 1 1) b!136 b!157 b!147)))
(assert (or ((_ pbeq 0 1 1 1 1) b!137 b!158 b!147 b!148)
    ((_ pbeq 2 1 1 1 1) b!137 b!158 b!147 b!148)))
(assert (or ((_ pbeq 0 1 1 1 1) b!138 b!159 b!148 b!149)
    ((_ pbeq 2 1 1 1 1) b!138 b!159 b!148 b!149)))
(assert (or ((_ pbeq 0 1 1 1 1) b!139 b!160 b!149 b!150)
    ((_ pbeq 2 1 1 1 1) b!139 b!160 b!149 b!150)))
(assert (or ((_ pbeq 0 1 1 1 1) b!140 b!161 b!150 b!151)
    ((_ pbeq 2 1 1 1 1) b!140 b!161 b!150 b!151)))
(assert (or ((_ pbeq 0 1 1 1 1) b!141 b!162 b!151 b!152)
    ((_ pbeq 2 1 1 1 1) b!141 b!162 b!151 b!152)))
(assert (or ((_ pbeq 0 1 1 1 1) b!142 b!163 b!152 b!153)
    ((_ pbeq 2 1 1 1 1) b!142 b!163 b!152 b!153)))
(assert (or ((_ pbeq 0 1 1 1 1) b!143 b!164 b!153 b!154)
    ((_ pbeq 2 1 1 1 1) b!143 b!164 b!153 b!154)))
(assert (or ((_ pbeq 0 1 1 1 1) b!144 b!165 b!154 b!155)
    ((_ pbeq 2 1 1 1 1) b!144 b!165 b!154 b!155)))
(assert (or ((_ pbeq 0 1 1 1 1) b!145 b!166 b!155 b!156)
    ((_ pbeq 2 1 1 1 1) b!145 b!166 b!155 b!156)))
(assert (or ((_ pbeq 0 1 1 1) b!146 b!167 b!156) ((_ pbeq 2 1 1 1) b!146 b!167 b!156)))
(assert (or ((_ pbeq 0 1 1 1) b!157 b!178 b!168) ((_ pbeq 2 1 1 1) b!157 b!178 b!168)))
(assert (or ((_ pbeq 0 1 1 1 1) b!158 b!179 b!168 b!169)
    ((_ pbeq 2 1 1 1 1) b!158 b!179 b!168 b!169)))
(assert (or ((_ pbeq 0 1 1 1 1) b!159 b!180 b!169 b!170)
    ((_ pbeq 2 1 1 1 1) b!159 b!180 b!169 b!170)))
(assert (or ((_ pbeq 0 1 1 1 1) b!160 b!181 b!170 b!171)
    ((_ pbeq 2 1 1 1 1) b!160 b!181 b!170 b!171)))
(assert (or ((_ pbeq 0 1 1 1 1) b!161 b!182 b!171 b!172)
    ((_ pbeq 2 1 1 1 1) b!161 b!182 b!171 b!172)))
(assert (or ((_ pbeq 0 1 1 1 1) b!162 b!183 b!172 b!173)
    ((_ pbeq 2 1 1 1 1) b!162 b!183 b!172 b!173)))
(assert (or ((_ pbeq 0 1 1 1 1) b!163 b!184 b!173 b!174)
    ((_ pbeq 2 1 1 1 1) b!163 b!184 b!173 b!174)))
(assert (or ((_ pbeq 0 1 1 1 1) b!164 b!185 b!174 b!175)
    ((_ pbeq 2 1 1 1 1) b!164 b!185 b!174 b!175)))
(assert (or ((_ pbeq 0 1 1 1 1) b!165 b!186 b!175 b!176)
    ((_ pbeq 2 1 1 1 1) b!165 b!186 b!175 b!176)))
(assert (or ((_ pbeq 0 1 1 1 1) b!166 b!187 b!176 b!177)
    ((_ pbeq 2 1 1 1 1) b!166 b!187 b!176 b!177)))
(assert (or ((_ pbeq 0 1 1 1) b!167 b!188 b!177) ((_ pbeq 2 1 1 1) b!167 b!188 b!177)))
(assert (or ((_ pbeq 0 1 1 1) b!178 b!199 b!189) ((_ pbeq 2 1 1 1) b!178 b!199 b!189)))
(assert (or ((_ pbeq 0 1 1 1 1) b!179 b!200 b!189 b!190)
    ((_ pbeq 2 1 1 1 1) b!179 b!200 b!189 b!190)))
(assert (or ((_ pbeq 0 1 1 1 1) b!180 b!201 b!190 b!191)
    ((_ pbeq 2 1 1 1 1) b!180 b!201 b!190 b!191)))
(assert (or ((_ pbeq 0 1 1 1 1) b!181 b!202 b!191 b!192)
    ((_ pbeq 2 1 1 1 1) b!181 b!202 b!191 b!192)))
(assert (or ((_ pbeq 0 1 1 1 1) b!182 b!203 b!192 b!193)
    ((_ pbeq 2 1 1 1 1) b!182 b!203 b!192 b!193)))
(assert (or ((_ pbeq 0 1 1 1 1) b!183 b!204 b!193 b!194)
    ((_ pbeq 2 1 1 1 1) b!183 b!204 b!193 b!194)))
(assert (or ((_ pbeq 0 1 1 1 1) b!184 b!205 b!194 b!195)
    ((_ pbeq 2 1 1 1 1) b!184 b!205 b!194 b!195)))
(assert (or ((_ pbeq 0 1 1 1 1) b!185 b!206 b!195 b!196)
    ((_ pbeq 2 1 1 1 1) b!185 b!206 b!195 b!196)))
(assert (or ((_ pbeq 0 1 1 1 1) b!186 b!207 b!196 b!197)
    ((_ pbeq 2 1 1 1 1) b!186 b!207 b!196 b!197)))
(assert (or ((_ pbeq 0 1 1 1 1) b!187 b!208 b!197 b!198)
    ((_ pbeq 2 1 1 1 1) b!187 b!208 b!197 b!198)))
(assert (or ((_ pbeq 0 1 1 1) b!188 b!209 b!198) ((_ pbeq 2 1 1 1) b!188 b!209 b!198)))
(assert (or ((_ pbeq 0 1 1 1) b!199 b!220 b!210) ((_ pbeq 2 1 1 1) b!199 b!220 b!210)))
(assert (or ((_ pbeq 0 1 1 1 1) b!200 b!221 b!210 b!211)
    ((_ pbeq 2 1 1 1 1) b!200 b!221 b!210 b!211)))
(assert (or ((_ pbeq 0 1 1 1 1) b!201 b!222 b!211 b!212)
    ((_ pbeq 2 1 1 1 1) b!201 b!222 b!211 b!212)))
(assert (or ((_ pbeq 0 1 1 1 1) b!202 b!223 b!212 b!213)
    ((_ pbeq 2 1 1 1 1) b!202 b!223 b!212 b!213)))
(assert (or ((_ pbeq 0 1 1 1 1) b!203 b!224 b!213 b!214)
    ((_ pbeq 2 1 1 1 1) b!203 b!224 b!213 b!214)))
(assert (or ((_ pbeq 0 1 1 1 1) b!204 b!225 b!214 b!215)
    ((_ pbeq 2 1 1 1 1) b!204 b!225 b!214 b!215)))
(assert (or ((_ pbeq 0 1 1 1 1) b!205 b!226 b!215 b!216)
    ((_ pbeq 2 1 1 1 1) b!205 b!226 b!215 b!216)))
(assert (or ((_ pbeq 0 1 1 1 1) b!206 b!227 b!216 b!217)
    ((_ pbeq 2 1 1 1 1) b!206 b!227 b!216 b!217)))
(assert (or ((_ pbeq 0 1 1 1 1) b!207 b!228 b!217 b!218)
    ((_ pbeq 2 1 1 1 1) b!207 b!228 b!217 b!218)))
(assert (or ((_ pbeq 0 1 1 1 1) b!208 b!229 b!218 b!219)
    ((_ pbeq 2 1 1 1 1) b!208 b!229 b!218 b!219)))
(assert (or ((_ pbeq 0 1 1 1) b!209 b!230 b!219) ((_ pbeq 2 1 1 1) b!209 b!230 b!219)))
(assert (or ((_ pbeq 0 1 1 1) b!220 b!241 b!231) ((_ pbeq 2 1 1 1) b!220 b!241 b!231)))
(assert (or ((_ pbeq 0 1 1 1 1) b!221 b!242 b!231 b!232)
    ((_ pbeq 2 1 1 1 1) b!221 b!242 b!231 b!232)))
(assert (or ((_ pbeq 0 1 1 1 1) b!222 b!243 b!232 b!233)
    ((_ pbeq 2 1 1 1 1) b!222 b!243 b!232 b!233)))
(assert (or ((_ pbeq 0 1 1 1 1) b!223 b!244 b!233 b!234)
    ((_ pbeq 2 1 1 1 1) b!223 b!244 b!233 b!234)))
(assert (or ((_ pbeq 0 1 1 1 1) b!224 b!245 b!234 b!235)
    ((_ pbeq 2 1 1 1 1) b!224 b!245 b!234 b!235)))
(assert (or ((_ pbeq 0 1 1 1 1) b!225 b!246 b!235 b!236)
    ((_ pbeq 2 1 1 1 1) b!225 b!246 b!235 b!236)))
(assert (or ((_ pbeq 0 1 1 1 1) b!226 b!247 b!236 b!237)
    ((_ pbeq 2 1 1 1 1) b!226 b!247 b!236 b!237)))
(assert (or ((_ pbeq 0 1 1 1 1) b!227 b!248 b!237 b!238)
    ((_ pbeq 2 1 1 1 1) b!227 b!248 b!237 b!238)))
(assert (or ((_ pbeq 0 1 1 1 1) b!228 b!249 b!238 b!239)
    ((_ pbeq 2 1 1 1 1) b!228 b!249 b!238 b!239)))
(assert (or ((_ pbeq 0 1 1 1 1) b!229 b!250 b!239 b!240)
    ((_ pbeq 2 1 1 1 1) b!229 b!250 b!239 b!240)))
(assert (or ((_ pbeq 0 1 1 1) b!230 b!251 b!240) ((_ pbeq 2 1 1 1) b!230 b!251 b!240)))
(assert (or ((_ pbeq 0 1 1 1) b!241 b!262 b!252) ((_ pbeq 2 1 1 1) b!241 b!262 b!252)))
(assert (or ((_ pbeq 0 1 1 1 1) b!242 b!263 b!252 b!253)
    ((_ pbeq 2 1 1 1 1) b!242 b!263 b!252 b!253)))
(assert (or ((_ pbeq 0 1 1 1 1) b!243 b!264 b!253 b!254)
    ((_ pbeq 2 1 1 1 1) b!243 b!264 b!253 b!254)))
(assert (or ((_ pbeq 0 1 1 1 1) b!244 b!265 b!254 b!255)
    ((_ pbeq 2 1 1 1 1) b!244 b!265 b!254 b!255)))
(assert (or ((_ pbeq 0 1 1 1 1) b!245 b!266 b!255 b!256)
    ((_ pbeq 2 1 1 1 1) b!245 b!266 b!255 b!256)))
(assert (or ((_ pbeq 0 1 1 1 1) b!246 b!267 b!256 b!257)
    ((_ pbeq 2 1 1 1 1) b!246 b!267 b!256 b!257)))
(assert (or ((_ pbeq 0 1 1 1 1) b!247 b!268 b!257 b!258)
    ((_ pbeq 2 1 1 1 1) b!247 b!268 b!257 b!258)))
(assert (or ((_ pbeq 0 1 1 1 1) b!248 b!269 b!258 b!259)
    ((_ pbeq 2 1 1 1 1) b!248 b!269 b!258 b!259)))
(assert (or ((_ pbeq 0 1 1 1 1) b!249 b!270 b!259 b!260)
    ((_ pbeq 2 1 1 1 1) b!249 b!270 b!259 b!260)))
(assert (or ((_ pbeq 0 1 1 1 1) b!250 b!271 b!260 b!261)
    ((_ pbeq 2 1 1 1 1) b!250 b!271 b!260 b!261)))
(assert (or ((_ pbeq 0 1 1 1) b!251 b!272 b!261) ((_ pbeq 2 1 1 1) b!251 b!272 b!261)))
(assert (or ((_ pbeq 0 1 1 1) b!262 b!283 b!273) ((_ pbeq 2 1 1 1) b!262 b!283 b!273)))
(assert (or ((_ pbeq 0 1 1 1 1) b!263 b!284 b!273 b!274)
    ((_ pbeq 2 1 1 1 1) b!263 b!284 b!273 b!274)))
(assert (or ((_ pbeq 0 1 1 1 1) b!264 b!285 b!274 b!275)
    ((_ pbeq 2 1 1 1 1) b!264 b!285 b!274 b!275)))
(assert (or ((_ pbeq 0 1 1 1 1) b!265 b!286 b!275 b!276)
    ((_ pbeq 2 1 1 1 1) b!265 b!286 b!275 b!276)))
(assert (or ((_ pbeq 0 1 1 1 1) b!266 b!287 b!276 b!277)
    ((_ pbeq 2 1 1 1 1) b!266 b!287 b!276 b!277)))
(assert (or ((_ pbeq 0 1 1 1 1) b!267 b!288 b!277 b!278)
    ((_ pbeq 2 1 1 1 1) b!267 b!288 b!277 b!278)))
(assert (or ((_ pbeq 0 1 1 1 1) b!268 b!289 b!278 b!279)
    ((_ pbeq 2 1 1 1 1) b!268 b!289 b!278 b!279)))
(assert (or ((_ pbeq 0 1 1 1 1) b!269 b!290 b!279 b!280)
    ((_ pbeq 2 1 1 1 1) b!269 b!290 b!279 b!280)))
(assert (or ((_ pbeq 0 1 1 1 1) b!270 b!291 b!280 b!281)
    ((_ pbeq 2 1 1 1 1) b!270 b!291 b!280 b!281)))
(assert (or ((_ pbeq 0 1 1 1 1) b!271 b!292 b!281 b!282)
    ((_ pbeq 2 1 1 1 1) b!271 b!292 b!281 b!282)))
(assert (or ((_ pbeq 0 1 1 1) b!272 b!293 b!282) ((_ pbeq 2 1 1 1) b!272 b!293 b!282)))
(assert (or ((_ pbeq 0 1 1 1) b!283 b!304 b!294) ((_ pbeq 2 1 1 1) b!283 b!304 b!294)))
(assert (or ((_ pbeq 0 1 1 1 1) b!284 b!305 b!294 b!295)
    ((_ pbeq 2 1 1 1 1) b!284 b!305 b!294 b!295)))
(assert (or ((_ pbeq 0 1 1 1 1) b!285 b!306 b!295 b!296)
    ((_ pbeq 2 1 1 1 1) b!285 b!306 b!295 b!296)))
(assert (or ((_ pbeq 0 1 1 1 1) b!286 b!307 b!296 b!297)
    ((_ pbeq 2 1 1 1 1) b!286 b!307 b!296 b!297)))
(assert (or ((_ pbeq 0 1 1 1 1) b!287 b!308 b!297 b!298)
    ((_ pbeq 2 1 1 1 1) b!287 b!308 b!297 b!298)))
(assert (or ((_ pbeq 0 1 1 1 1) b!288 b!309 b!298 b!299)
    ((_ pbeq 2 1 1 1 1) b!288 b!309 b!298 b!299)))
(assert (or ((_ pbeq 0 1 1 1 1) b!289 b!310 b!299 b!300)
    ((_ pbeq 2 1 1 1 1) b!289 b!310 b!299 b!300)))
(assert (or ((_ pbeq 0 1 1 1 1) b!290 b!311 b!300 b!301)
    ((_ pbeq 2 1 1 1 1) b!290 b!311 b!300 b!301)))
(assert (or ((_ pbeq 0 1 1 1 1) b!291 b!312 b!301 b!302)
    ((_ pbeq 2 1 1 1 1) b!291 b!312 b!301 b!302)))
(assert (or ((_ pbeq 0 1 1 1 1) b!292 b!313 b!302 b!303)
    ((_ pbeq 2 1 1 1 1) b!292 b!313 b!302 b!303)))
(assert (or ((_ pbeq 0 1 1 1) b!293 b!314 b!303) ((_ pbeq 2 1 1 1) b!293 b!314 b!303)))
(assert (or ((_ pbeq 0 1 1 1) b!304 b!325 b!315) ((_ pbeq 2 1 1 1) b!304 b!325 b!315)))
(assert (or ((_ pbeq 0 1 1 1 1) b!305 b!326 b!315 b!316)
    ((_ pbeq 2 1 1 1 1) b!305 b!326 b!315 b!316)))
(assert (or ((_ pbeq 0 1 1 1 1) b!306 b!327 b!316 b!317)
    ((_ pbeq 2 1 1 1 1) b!306 b!327 b!316 b!317)))
(assert (or ((_ pbeq 0 1 1 1 1) b!307 b!328 b!317 b!318)
    ((_ pbeq 2 1 1 1 1) b!307 b!328 b!317 b!318)))
(assert (or ((_ pbeq 0 1 1 1 1) b!308 b!329 b!318 b!319)
    ((_ pbeq 2 1 1 1 1) b!308 b!329 b!318 b!319)))
(assert (or ((_ pbeq 0 1 1 1 1) b!309 b!330 b!319 b!320)
    ((_ pbeq 2 1 1 1 1) b!309 b!330 b!319 b!320)))
(assert (or ((_ pbeq 0 1 1 1 1) b!310 b!331 b!320 b!321)
    ((_ pbeq 2 1 1 1 1) b!310 b!331 b!320 b!321)))
(assert (or ((_ pbeq 0 1 1 1 1) b!311 b!332 b!321 b!322)
    ((_ pbeq 2 1 1 1 1) b!311 b!332 b!321 b!322)))
(assert (or ((_ pbeq 0 1 1 1 1) b!312 b!333 b!322 b!323)
    ((_ pbeq 2 1 1 1 1) b!312 b!333 b!322 b!323)))
(assert (or ((_ pbeq 0 1 1 1 1) b!313 b!334 b!323 b!324)
    ((_ pbeq 2 1 1 1 1) b!313 b!334 b!323 b!324)))
(assert (or ((_ pbeq 0 1 1 1) b!314 b!335 b!324) ((_ pbeq 2 1 1 1) b!314 b!335 b!324)))
(assert (or ((_ pbeq 0 1 1 1) b!325 b!346 b!336) ((_ pbeq 2 1 1 1) b!325 b!346 b!336)))
(assert (or ((_ pbeq 0 1 1 1 1) b!326 b!347 b!336 b!337)
    ((_ pbeq 2 1 1 1 1) b!326 b!347 b!336 b!337)))
(assert (or ((_ pbeq 0 1 1 1 1) b!327 b!348 b!337 b!338)
    ((_ pbeq 2 1 1 1 1) b!327 b!348 b!337 b!338)))
(assert (or ((_ pbeq 0 1 1 1 1) b!328 b!349 b!338 b!339)
    ((_ pbeq 2 1 1 1 1) b!328 b!349 b!338 b!339)))
(assert (or ((_ pbeq 0 1 1 1 1) b!329 b!350 b!339 b!340)
    ((_ pbeq 2 1 1 1 1) b!329 b!350 b!339 b!340)))
(assert (or ((_ pbeq 0 1 1 1 1) b!330 b!351 b!340 b!341)
    ((_ pbeq 2 1 1 1 1) b!330 b!351 b!340 b!341)))
(assert (or ((_ pbeq 0 1 1 1 1) b!331 b!352 b!341 b!342)
    ((_ pbeq 2 1 1 1 1) b!331 b!352 b!341 b!342)))
(assert (or ((_ pbeq 0 1 1 1 1) b!332 b!353 b!342 b!343)
    ((_ pbeq 2 1 1 1 1) b!332 b!353 b!342 b!343)))
(assert (or ((_ pbeq 0 1 1 1 1) b!333 b!354 b!343 b!344)
    ((_ pbeq 2 1 1 1 1) b!333 b!354 b!343 b!344)))
(assert (or ((_ pbeq 0 1 1 1 1) b!334 b!355 b!344 b!345)
    ((_ pbeq 2 1 1 1 1) b!334 b!355 b!344 b!345)))
(assert (or ((_ pbeq 0 1 1 1) b!335 b!356 b!345) ((_ pbeq 2 1 1 1) b!335 b!356 b!345)))
(assert (or ((_ pbeq 0 1 1 1) b!346 b!367 b!357) ((_ pbeq 2 1 1 1) b!346 b!367 b!357)))
(assert (or ((_ pbeq 0 1 1 1 1) b!347 b!368 b!357 b!358)
    ((_ pbeq 2 1 1 1 1) b!347 b!368 b!357 b!358)))
(assert (or ((_ pbeq 0 1 1 1 1) b!348 b!369 b!358 b!359)
    ((_ pbeq 2 1 1 1 1) b!348 b!369 b!358 b!359)))
(assert (or ((_ pbeq 0 1 1 1 1) b!349 b!370 b!359 b!360)
    ((_ pbeq 2 1 1 1 1) b!349 b!370 b!359 b!360)))
(assert (or ((_ pbeq 0 1 1 1 1) b!350 b!371 b!360 b!361)
    ((_ pbeq 2 1 1 1 1) b!350 b!371 b!360 b!361)))
(assert (or ((_ pbeq 0 1 1 1 1) b!351 b!372 b!361 b!362)
    ((_ pbeq 2 1 1 1 1) b!351 b!372 b!361 b!362)))
(assert (or ((_ pbeq 0 1 1 1 1) b!352 b!373 b!362 b!363)
    ((_ pbeq 2 1 1 1 1) b!352 b!373 b!362 b!363)))
(assert (or ((_ pbeq 0 1 1 1 1) b!353 b!374 b!363 b!364)
    ((_ pbeq 2 1 1 1 1) b!353 b!374 b!363 b!364)))
(assert (or ((_ pbeq 0 1 1 1 1) b!354 b!375 b!364 b!365)
    ((_ pbeq 2 1 1 1 1) b!354 b!375 b!364 b!365)))
(assert (or ((_ pbeq 0 1 1 1 1) b!355 b!376 b!365 b!366)
    ((_ pbeq 2 1 1 1 1) b!355 b!376 b!365 b!366)))
(assert (or ((_ pbeq 0 1 1 1) b!356 b!377 b!366) ((_ pbeq 2 1 1 1) b!356 b!377 b!366)))
(assert (or ((_ pbeq 0 1 1) b!367 b!378) ((_ pbeq 2 1 1) b!367 b!378)))
(assert (or ((_ pbeq 0 1 1 1) b!368 b!378 b!379) ((_ pbeq 2 1 1 1) b!368 b!378 b!379)))
(assert (or ((_ pbeq 0 1 1 1) b!369 b!379 b!380) ((_ pbeq 2 1 1 1) b!369 b!379 b!380)))
(assert (or ((_ pbeq 0 1 1 1) b!370 b!380 b!381) ((_ pbeq 2 1 1 1) b!370 b!380 b!381)))
(assert (or ((_ pbeq 0 1 1 1) b!371 b!381 b!382) ((_ pbeq 2 1 1 1) b!371 b!381 b!382)))
(assert (or ((_ pbeq 0 1 1 1) b!372 b!382 b!383) ((_ pbeq 2 1 1 1) b!372 b!382 b!383)))
(assert (or ((_ pbeq 0 1 1 1) b!373 b!383 b!384) ((_ pbeq 2 1 1 1) b!373 b!383 b!384)))
(assert (or ((_ pbeq 0 1 1 1) b!374 b!384 b!385) ((_ pbeq 2 1 1 1) b!374 b!384 b!385)))
(assert (or ((_ pbeq 0 1 1 1) b!375 b!385 b!386) ((_ pbeq 2 1 1 1) b!375 b!385 b!386)))
(assert (or ((_ pbeq 0 1 1 1) b!376 b!386 b!387) ((_ pbeq 2 1 1 1) b!376 b!386 b!387)))
(assert (or ((_ pbeq 0 1 1) b!377 b!387) ((_ pbeq 2 1 1) b!377 b!387)))
(check-sat)

(assert (not (and b!269
          b!376
          b!289
          b!300
          b!238
          b!331
          b!335
          b!248
          b!323
          b!291
          b!312
          b!249
          b!321
          b!356
          b!303
          b!281
          b!251
          b!313
          b!314
          b!311
          b!364
          b!365
          b!260
          b!342
          b!282
          b!377
          b!250
          b!240
          b!353
          b!279
          b!272
          b!387)))
(assert (not (and b!132
          b!174
          b!8
          b!58
          b!37
          b!175
          b!216
          b!153
          b!165
          b!145
          b!100
          b!51
          b!152
          b!17
          b!125
          b!39
          b!182
          b!143
          b!90
          b!193
          b!6
          b!49
          b!135
          b!184
          b!204
          b!9
          b!72
          b!83
          b!161
          b!80
          b!38
          b!104
          b!151
          b!206
          b!20
          b!61
          b!215
          b!155
          b!16
          b!195
          b!18
          b!69
          b!121
          b!41)))
(assert (not (and b!212 b!202 b!180 b!170 b!201 b!181)))
(assert (not (and b!362 b!340 b!382 b!351 b!373 b!350 b!371 b!383)))
(assert (not (and b!367 b!378 b!348 b!346 b!379 b!359 b!370 b!337 b!336 b!380)))
(assert (not (and b!3 b!12 b!44 b!33 b!45 b!35 b!14 b!2)))
(assert (not (and b!87 b!120 b!130 b!99 b!119 b!78 b!77 b!108 b!67 b!97)))
(assert (not (and b!21 b!10 b!11 b!0)))
(assert (not (and b!305
          b!220
          b!233
          b!283
          b!179
          b!298
          b!288
          b!315
          b!200
          b!241
          b!221
          b!304
          b!244
          b!308
          b!318
          b!307
          b!199
          b!296
          b!262
          b!232
          b!178
          b!276
          b!265
          b!277
          b!295
          b!168)))
(assert (not (and b!52 b!42 b!105 b!64 b!96 b!106 b!94 b!73 b!53 b!75)))
(assert (not (and b!253 b!264 b!263 b!274)))
(assert (not (and b!236 b!256 b!247 b!245 b!257 b!235)))
(assert (not (and b!102 b!113 b!92 b!103)))
(assert (not (and b!148 b!128 b!137 b!127 b!149 b!139)))
(assert (not (and b!207 b!218 b!197 b!208)))
(check-sat)
