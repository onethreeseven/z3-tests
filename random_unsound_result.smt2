; This demonstrates a randomly unsound result I'm getting from z3.

; Apologies for the size of the test case; I'll try to find time to reduce it but for now it's
; basically just the problem I was working on when I ran into trouble.

; $ z3 --version
; Z3 version 4.8.14 - 64 bit

; $ z3 smt.random_seed=13 random_unsound_result.smt2
; sat
; sat
; sat

; $ z3 smt.random_seed=14 random_unsound_result.smt2
; sat
; sat
; unsat

; (The correct result is sat, sat, sat.)

(declare-fun |1_4| () Bool)
(declare-fun |1_2| () Bool)
(declare-fun |2_3| () Bool)
(declare-fun |0_3| () Bool)
(declare-fun |1_6| () Bool)
(declare-fun |2_5| () Bool)
(declare-fun |0_5| () Bool)
(declare-fun |1_10| () Bool)
(declare-fun |1_8| () Bool)
(declare-fun |2_9| () Bool)
(declare-fun |0_9| () Bool)
(declare-fun |1_12| () Bool)
(declare-fun |2_11| () Bool)
(declare-fun |0_11| () Bool)
(declare-fun |1_14| () Bool)
(declare-fun |2_13| () Bool)
(declare-fun |0_13| () Bool)
(declare-fun |1_16| () Bool)
(declare-fun |2_15| () Bool)
(declare-fun |0_15| () Bool)
(declare-fun |1_18| () Bool)
(declare-fun |2_17| () Bool)
(declare-fun |0_17| () Bool)
(declare-fun |3_2| () Bool)
(declare-fun |3_0| () Bool)
(declare-fun |4_1| () Bool)
(declare-fun |2_1| () Bool)
(declare-fun |3_8| () Bool)
(declare-fun |3_6| () Bool)
(declare-fun |4_7| () Bool)
(declare-fun |2_7| () Bool)
(declare-fun |3_20| () Bool)
(declare-fun |3_18| () Bool)
(declare-fun |4_19| () Bool)
(declare-fun |2_19| () Bool)
(declare-fun |5_2| () Bool)
(declare-fun |5_0| () Bool)
(declare-fun |6_1| () Bool)
(declare-fun |5_8| () Bool)
(declare-fun |5_6| () Bool)
(declare-fun |6_7| () Bool)
(declare-fun |5_20| () Bool)
(declare-fun |5_18| () Bool)
(declare-fun |6_19| () Bool)
(declare-fun |7_2| () Bool)
(declare-fun |7_0| () Bool)
(declare-fun |8_1| () Bool)
(declare-fun |7_8| () Bool)
(declare-fun |7_6| () Bool)
(declare-fun |8_7| () Bool)
(declare-fun |7_14| () Bool)
(declare-fun |7_12| () Bool)
(declare-fun |8_13| () Bool)
(declare-fun |6_13| () Bool)
(declare-fun |7_20| () Bool)
(declare-fun |7_18| () Bool)
(declare-fun |8_19| () Bool)
(declare-fun |9_2| () Bool)
(declare-fun |9_0| () Bool)
(declare-fun |10_1| () Bool)
(declare-fun |9_8| () Bool)
(declare-fun |9_6| () Bool)
(declare-fun |10_7| () Bool)
(declare-fun |9_20| () Bool)
(declare-fun |9_18| () Bool)
(declare-fun |10_19| () Bool)
(declare-fun |11_2| () Bool)
(declare-fun |11_0| () Bool)
(declare-fun |12_1| () Bool)
(declare-fun |11_8| () Bool)
(declare-fun |11_6| () Bool)
(declare-fun |12_7| () Bool)
(declare-fun |11_20| () Bool)
(declare-fun |11_18| () Bool)
(declare-fun |12_19| () Bool)
(declare-fun |13_4| () Bool)
(declare-fun |13_2| () Bool)
(declare-fun |14_3| () Bool)
(declare-fun |12_3| () Bool)
(declare-fun |13_6| () Bool)
(declare-fun |14_5| () Bool)
(declare-fun |12_5| () Bool)
(declare-fun |13_10| () Bool)
(declare-fun |13_8| () Bool)
(declare-fun |14_9| () Bool)
(declare-fun |12_9| () Bool)
(declare-fun |13_12| () Bool)
(declare-fun |14_11| () Bool)
(declare-fun |12_11| () Bool)
(declare-fun |13_14| () Bool)
(declare-fun |14_13| () Bool)
(declare-fun |12_13| () Bool)
(declare-fun |13_16| () Bool)
(declare-fun |14_15| () Bool)
(declare-fun |12_15| () Bool)
(declare-fun |13_18| () Bool)
(declare-fun |14_17| () Bool)
(declare-fun |12_17| () Bool)
(declare-fun |17_6| () Bool)
(declare-fun |17_4| () Bool)
(declare-fun |18_5| () Bool)
(declare-fun |16_5| () Bool)
(declare-fun |17_8| () Bool)
(declare-fun |18_7| () Bool)
(declare-fun |16_7| () Bool)
(declare-fun |17_14| () Bool)
(declare-fun |17_12| () Bool)
(declare-fun |18_13| () Bool)
(declare-fun |16_13| () Bool)
(declare-fun |17_16| () Bool)
(declare-fun |18_15| () Bool)
(declare-fun |16_15| () Bool)
(declare-fun |19_6| () Bool)
(declare-fun |19_4| () Bool)
(declare-fun |20_5| () Bool)
(declare-fun |19_8| () Bool)
(declare-fun |20_7| () Bool)
(declare-fun |19_14| () Bool)
(declare-fun |19_12| () Bool)
(declare-fun |20_13| () Bool)
(declare-fun |19_16| () Bool)
(declare-fun |20_15| () Bool)
(declare-fun |23_4| () Bool)
(declare-fun |23_2| () Bool)
(declare-fun |24_3| () Bool)
(declare-fun |22_3| () Bool)
(declare-fun |23_6| () Bool)
(declare-fun |24_5| () Bool)
(declare-fun |22_5| () Bool)
(declare-fun |23_8| () Bool)
(declare-fun |24_7| () Bool)
(declare-fun |22_7| () Bool)
(declare-fun |23_10| () Bool)
(declare-fun |24_9| () Bool)
(declare-fun |22_9| () Bool)
(declare-fun |23_12| () Bool)
(declare-fun |24_11| () Bool)
(declare-fun |22_11| () Bool)
(declare-fun |23_16| () Bool)
(declare-fun |23_14| () Bool)
(declare-fun |24_15| () Bool)
(declare-fun |22_15| () Bool)
(declare-fun |23_18| () Bool)
(declare-fun |24_17| () Bool)
(declare-fun |22_17| () Bool)
(declare-fun |25_2| () Bool)
(declare-fun |25_0| () Bool)
(declare-fun |26_1| () Bool)
(declare-fun |24_1| () Bool)
(declare-fun |25_14| () Bool)
(declare-fun |25_12| () Bool)
(declare-fun |26_13| () Bool)
(declare-fun |24_13| () Bool)
(declare-fun |25_20| () Bool)
(declare-fun |25_18| () Bool)
(declare-fun |26_19| () Bool)
(declare-fun |24_19| () Bool)
(declare-fun |27_2| () Bool)
(declare-fun |27_0| () Bool)
(declare-fun |28_1| () Bool)
(declare-fun |27_14| () Bool)
(declare-fun |27_12| () Bool)
(declare-fun |28_13| () Bool)
(declare-fun |27_20| () Bool)
(declare-fun |27_18| () Bool)
(declare-fun |28_19| () Bool)
(declare-fun |29_2| () Bool)
(declare-fun |29_0| () Bool)
(declare-fun |30_1| () Bool)
(declare-fun |29_8| () Bool)
(declare-fun |29_6| () Bool)
(declare-fun |30_7| () Bool)
(declare-fun |28_7| () Bool)
(declare-fun |29_14| () Bool)
(declare-fun |29_12| () Bool)
(declare-fun |30_13| () Bool)
(declare-fun |29_20| () Bool)
(declare-fun |29_18| () Bool)
(declare-fun |30_19| () Bool)
(declare-fun |31_2| () Bool)
(declare-fun |31_0| () Bool)
(declare-fun |32_1| () Bool)
(declare-fun |31_14| () Bool)
(declare-fun |31_12| () Bool)
(declare-fun |32_13| () Bool)
(declare-fun |31_20| () Bool)
(declare-fun |31_18| () Bool)
(declare-fun |32_19| () Bool)
(declare-fun |33_2| () Bool)
(declare-fun |33_0| () Bool)
(declare-fun |34_1| () Bool)
(declare-fun |33_14| () Bool)
(declare-fun |33_12| () Bool)
(declare-fun |34_13| () Bool)
(declare-fun |33_20| () Bool)
(declare-fun |33_18| () Bool)
(declare-fun |34_19| () Bool)
(declare-fun |35_4| () Bool)
(declare-fun |35_2| () Bool)
(declare-fun |36_3| () Bool)
(declare-fun |34_3| () Bool)
(declare-fun |35_6| () Bool)
(declare-fun |36_5| () Bool)
(declare-fun |34_5| () Bool)
(declare-fun |35_8| () Bool)
(declare-fun |36_7| () Bool)
(declare-fun |34_7| () Bool)
(declare-fun |35_10| () Bool)
(declare-fun |36_9| () Bool)
(declare-fun |34_9| () Bool)
(declare-fun |35_12| () Bool)
(declare-fun |36_11| () Bool)
(declare-fun |34_11| () Bool)
(declare-fun |35_16| () Bool)
(declare-fun |35_14| () Bool)
(declare-fun |36_15| () Bool)
(declare-fun |34_15| () Bool)
(declare-fun |35_18| () Bool)
(declare-fun |36_17| () Bool)
(declare-fun |34_17| () Bool)
(declare-fun |0_1| () Bool)
(declare-fun |1_0| () Bool)
(declare-fun |0_7| () Bool)
(declare-fun |0_19| () Bool)
(declare-fun |1_20| () Bool)
(declare-fun |3_4| () Bool)
(declare-fun |3_10| () Bool)
(declare-fun |3_12| () Bool)
(declare-fun |3_14| () Bool)
(declare-fun |3_16| () Bool)
(declare-fun |4_3| () Bool)
(declare-fun |4_5| () Bool)
(declare-fun |5_4| () Bool)
(declare-fun |4_9| () Bool)
(declare-fun |4_11| () Bool)
(declare-fun |5_10| () Bool)
(declare-fun |4_13| () Bool)
(declare-fun |5_12| () Bool)
(declare-fun |4_15| () Bool)
(declare-fun |5_14| () Bool)
(declare-fun |4_17| () Bool)
(declare-fun |5_16| () Bool)
(declare-fun |6_3| () Bool)
(declare-fun |6_5| () Bool)
(declare-fun |7_4| () Bool)
(declare-fun |6_9| () Bool)
(declare-fun |6_11| () Bool)
(declare-fun |7_10| () Bool)
(declare-fun |6_15| () Bool)
(declare-fun |6_17| () Bool)
(declare-fun |7_16| () Bool)
(declare-fun |8_3| () Bool)
(declare-fun |8_5| () Bool)
(declare-fun |9_4| () Bool)
(declare-fun |8_9| () Bool)
(declare-fun |8_11| () Bool)
(declare-fun |9_10| () Bool)
(declare-fun |9_12| () Bool)
(declare-fun |8_15| () Bool)
(declare-fun |9_14| () Bool)
(declare-fun |8_17| () Bool)
(declare-fun |9_16| () Bool)
(declare-fun |10_3| () Bool)
(declare-fun |10_5| () Bool)
(declare-fun |11_4| () Bool)
(declare-fun |10_9| () Bool)
(declare-fun |10_11| () Bool)
(declare-fun |11_10| () Bool)
(declare-fun |10_13| () Bool)
(declare-fun |11_12| () Bool)
(declare-fun |10_15| () Bool)
(declare-fun |11_14| () Bool)
(declare-fun |10_17| () Bool)
(declare-fun |11_16| () Bool)
(declare-fun |13_0| () Bool)
(declare-fun |13_20| () Bool)
(declare-fun |14_1| () Bool)
(declare-fun |15_0| () Bool)
(declare-fun |15_2| () Bool)
(declare-fun |15_4| () Bool)
(declare-fun |14_7| () Bool)
(declare-fun |15_6| () Bool)
(declare-fun |15_8| () Bool)
(declare-fun |15_10| () Bool)
(declare-fun |15_12| () Bool)
(declare-fun |15_14| () Bool)
(declare-fun |15_16| () Bool)
(declare-fun |14_19| () Bool)
(declare-fun |15_18| () Bool)
(declare-fun |15_20| () Bool)
(declare-fun |16_1| () Bool)
(declare-fun |17_0| () Bool)
(declare-fun |16_3| () Bool)
(declare-fun |17_2| () Bool)
(declare-fun |16_9| () Bool)
(declare-fun |16_11| () Bool)
(declare-fun |17_10| () Bool)
(declare-fun |16_17| () Bool)
(declare-fun |16_19| () Bool)
(declare-fun |17_18| () Bool)
(declare-fun |17_20| () Bool)
(declare-fun |18_1| () Bool)
(declare-fun |19_0| () Bool)
(declare-fun |18_3| () Bool)
(declare-fun |19_2| () Bool)
(declare-fun |18_9| () Bool)
(declare-fun |18_11| () Bool)
(declare-fun |19_10| () Bool)
(declare-fun |18_17| () Bool)
(declare-fun |18_19| () Bool)
(declare-fun |19_18| () Bool)
(declare-fun |19_20| () Bool)
(declare-fun |20_1| () Bool)
(declare-fun |21_0| () Bool)
(declare-fun |20_3| () Bool)
(declare-fun |21_2| () Bool)
(declare-fun |21_4| () Bool)
(declare-fun |21_6| () Bool)
(declare-fun |20_9| () Bool)
(declare-fun |21_8| () Bool)
(declare-fun |20_11| () Bool)
(declare-fun |21_10| () Bool)
(declare-fun |21_12| () Bool)
(declare-fun |21_14| () Bool)
(declare-fun |20_17| () Bool)
(declare-fun |21_16| () Bool)
(declare-fun |20_19| () Bool)
(declare-fun |21_18| () Bool)
(declare-fun |21_20| () Bool)
(declare-fun |22_1| () Bool)
(declare-fun |23_0| () Bool)
(declare-fun |22_13| () Bool)
(declare-fun |22_19| () Bool)
(declare-fun |23_20| () Bool)
(declare-fun |25_4| () Bool)
(declare-fun |25_6| () Bool)
(declare-fun |25_8| () Bool)
(declare-fun |25_10| () Bool)
(declare-fun |25_16| () Bool)
(declare-fun |26_3| () Bool)
(declare-fun |26_5| () Bool)
(declare-fun |27_4| () Bool)
(declare-fun |26_7| () Bool)
(declare-fun |27_6| () Bool)
(declare-fun |26_9| () Bool)
(declare-fun |27_8| () Bool)
(declare-fun |26_11| () Bool)
(declare-fun |27_10| () Bool)
(declare-fun |26_15| () Bool)
(declare-fun |26_17| () Bool)
(declare-fun |27_16| () Bool)
(declare-fun |28_3| () Bool)
(declare-fun |28_5| () Bool)
(declare-fun |29_4| () Bool)
(declare-fun |28_9| () Bool)
(declare-fun |28_11| () Bool)
(declare-fun |29_10| () Bool)
(declare-fun |28_15| () Bool)
(declare-fun |28_17| () Bool)
(declare-fun |29_16| () Bool)
(declare-fun |30_3| () Bool)
(declare-fun |30_5| () Bool)
(declare-fun |31_4| () Bool)
(declare-fun |31_6| () Bool)
(declare-fun |30_9| () Bool)
(declare-fun |31_8| () Bool)
(declare-fun |30_11| () Bool)
(declare-fun |31_10| () Bool)
(declare-fun |30_15| () Bool)
(declare-fun |30_17| () Bool)
(declare-fun |31_16| () Bool)
(declare-fun |32_3| () Bool)
(declare-fun |32_5| () Bool)
(declare-fun |33_4| () Bool)
(declare-fun |32_7| () Bool)
(declare-fun |33_6| () Bool)
(declare-fun |32_9| () Bool)
(declare-fun |33_8| () Bool)
(declare-fun |32_11| () Bool)
(declare-fun |33_10| () Bool)
(declare-fun |32_15| () Bool)
(declare-fun |32_17| () Bool)
(declare-fun |33_16| () Bool)
(declare-fun |35_0| () Bool)
(declare-fun |35_20| () Bool)
(declare-fun |36_1| () Bool)
(declare-fun |36_13| () Bool)
(declare-fun |36_19| () Bool)
(assert ((_ pbeq 2 1 1 1 1) |0_3| |2_3| |1_2| |1_4|))
(assert ((_ pbeq 2 1 1 1 1) |0_5| |2_5| |1_4| |1_6|))
(assert ((_ pbeq 1 1 1 1 1) |0_9| |2_9| |1_8| |1_10|))
(assert ((_ pbeq 1 1 1 1 1) |0_11| |2_11| |1_10| |1_12|))
(assert ((_ pbeq 3 1 1 1 1) |0_13| |2_13| |1_12| |1_14|))
(assert ((_ pbeq 2 1 1 1 1) |0_15| |2_15| |1_14| |1_16|))
(assert ((_ pbeq 2 1 1 1 1) |0_17| |2_17| |1_16| |1_18|))
(assert ((_ pbeq 2 1 1 1 1) |2_1| |4_1| |3_0| |3_2|))
(assert ((_ pbeq 2 1 1 1 1) |2_7| |4_7| |3_6| |3_8|))
(assert ((_ pbeq 2 1 1 1 1) |2_19| |4_19| |3_18| |3_20|))
(assert ((_ pbeq 3 1 1 1 1) |4_1| |6_1| |5_0| |5_2|))
(assert ((_ pbeq 1 1 1 1 1) |4_7| |6_7| |5_6| |5_8|))
(assert ((_ pbeq 3 1 1 1 1) |4_19| |6_19| |5_18| |5_20|))
(assert ((_ pbeq 1 1 1 1 1) |6_1| |8_1| |7_0| |7_2|))
(assert ((_ pbeq 2 1 1 1 1) |6_7| |8_7| |7_6| |7_8|))
(assert ((_ pbeq 3 1 1 1 1) |6_13| |8_13| |7_12| |7_14|))
(assert ((_ pbeq 2 1 1 1 1) |6_19| |8_19| |7_18| |7_20|))
(assert ((_ pbeq 2 1 1 1 1) |8_1| |10_1| |9_0| |9_2|))
(assert ((_ pbeq 3 1 1 1 1) |8_7| |10_7| |9_6| |9_8|))
(assert ((_ pbeq 2 1 1 1 1) |8_19| |10_19| |9_18| |9_20|))
(assert ((_ pbeq 1 1 1 1 1) |10_1| |12_1| |11_0| |11_2|))
(assert ((_ pbeq 2 1 1 1 1) |10_7| |12_7| |11_6| |11_8|))
(assert ((_ pbeq 2 1 1 1 1) |10_19| |12_19| |11_18| |11_20|))
(assert ((_ pbeq 3 1 1 1 1) |12_3| |14_3| |13_2| |13_4|))
(assert ((_ pbeq 3 1 1 1 1) |12_5| |14_5| |13_4| |13_6|))
(assert ((_ pbeq 2 1 1 1 1) |12_9| |14_9| |13_8| |13_10|))
(assert ((_ pbeq 1 1 1 1 1) |12_11| |14_11| |13_10| |13_12|))
(assert ((_ pbeq 3 1 1 1 1) |12_13| |14_13| |13_12| |13_14|))
(assert ((_ pbeq 1 1 1 1 1) |12_15| |14_15| |13_14| |13_16|))
(assert ((_ pbeq 2 1 1 1 1) |12_17| |14_17| |13_16| |13_18|))
(assert ((_ pbeq 3 1 1 1 1) |16_5| |18_5| |17_4| |17_6|))
(assert ((_ pbeq 2 1 1 1 1) |16_7| |18_7| |17_6| |17_8|))
(assert ((_ pbeq 3 1 1 1 1) |16_13| |18_13| |17_12| |17_14|))
(assert ((_ pbeq 1 1 1 1 1) |16_15| |18_15| |17_14| |17_16|))
(assert ((_ pbeq 3 1 1 1 1) |18_5| |20_5| |19_4| |19_6|))
(assert ((_ pbeq 1 1 1 1 1) |18_7| |20_7| |19_6| |19_8|))
(assert ((_ pbeq 3 1 1 1 1) |18_13| |20_13| |19_12| |19_14|))
(assert ((_ pbeq 2 1 1 1 1) |18_15| |20_15| |19_14| |19_16|))
(assert ((_ pbeq 2 1 1 1 1) |22_3| |24_3| |23_2| |23_4|))
(assert ((_ pbeq 2 1 1 1 1) |22_5| |24_5| |23_4| |23_6|))
(assert ((_ pbeq 2 1 1 1 1) |22_7| |24_7| |23_6| |23_8|))
(assert ((_ pbeq 3 1 1 1 1) |22_9| |24_9| |23_8| |23_10|))
(assert ((_ pbeq 3 1 1 1 1) |22_11| |24_11| |23_10| |23_12|))
(assert ((_ pbeq 3 1 1 1 1) |22_15| |24_15| |23_14| |23_16|))
(assert ((_ pbeq 3 1 1 1 1) |22_17| |24_17| |23_16| |23_18|))
(assert ((_ pbeq 2 1 1 1 1) |24_1| |26_1| |25_0| |25_2|))
(assert ((_ pbeq 2 1 1 1 1) |24_13| |26_13| |25_12| |25_14|))
(assert ((_ pbeq 2 1 1 1 1) |24_19| |26_19| |25_18| |25_20|))
(assert ((_ pbeq 1 1 1 1 1) |26_1| |28_1| |27_0| |27_2|))
(assert ((_ pbeq 3 1 1 1 1) |26_13| |28_13| |27_12| |27_14|))
(assert ((_ pbeq 2 1 1 1 1) |26_19| |28_19| |27_18| |27_20|))
(assert ((_ pbeq 3 1 1 1 1) |28_1| |30_1| |29_0| |29_2|))
(assert ((_ pbeq 3 1 1 1 1) |28_7| |30_7| |29_6| |29_8|))
(assert ((_ pbeq 3 1 1 1 1) |28_13| |30_13| |29_12| |29_14|))
(assert ((_ pbeq 3 1 1 1 1) |28_19| |30_19| |29_18| |29_20|))
(assert ((_ pbeq 2 1 1 1 1) |30_1| |32_1| |31_0| |31_2|))
(assert ((_ pbeq 3 1 1 1 1) |30_13| |32_13| |31_12| |31_14|))
(assert ((_ pbeq 1 1 1 1 1) |30_19| |32_19| |31_18| |31_20|))
(assert ((_ pbeq 2 1 1 1 1) |32_1| |34_1| |33_0| |33_2|))
(assert ((_ pbeq 2 1 1 1 1) |32_13| |34_13| |33_12| |33_14|))
(assert ((_ pbeq 1 1 1 1 1) |32_19| |34_19| |33_18| |33_20|))
(assert ((_ pbeq 1 1 1 1 1) |34_3| |36_3| |35_2| |35_4|))
(assert ((_ pbeq 3 1 1 1 1) |34_5| |36_5| |35_4| |35_6|))
(assert ((_ pbeq 2 1 1 1 1) |34_7| |36_7| |35_6| |35_8|))
(assert ((_ pbeq 2 1 1 1 1) |34_9| |36_9| |35_8| |35_10|))
(assert ((_ pbeq 3 1 1 1 1) |34_11| |36_11| |35_10| |35_12|))
(assert ((_ pbeq 1 1 1 1 1) |34_15| |36_15| |35_14| |35_16|))
(assert ((_ pbeq 2 1 1 1 1) |34_17| |36_17| |35_16| |35_18|))
(assert (or ((_ pbeq 0 1 1) |1_0| |0_1|) ((_ pbeq 2 1 1) |1_0| |0_1|)))
(assert (or ((_ pbeq 0 1 1 1) |1_2| |0_1| |0_3|) ((_ pbeq 2 1 1 1) |1_2| |0_1| |0_3|)))
(assert (or ((_ pbeq 0 1 1 1) |1_4| |0_3| |0_5|) ((_ pbeq 2 1 1 1) |1_4| |0_3| |0_5|)))
(assert (or ((_ pbeq 0 1 1 1) |1_6| |0_5| |0_7|) ((_ pbeq 2 1 1 1) |1_6| |0_5| |0_7|)))
(assert (or ((_ pbeq 0 1 1 1) |1_8| |0_7| |0_9|) ((_ pbeq 2 1 1 1) |1_8| |0_7| |0_9|)))
(assert (or ((_ pbeq 0 1 1 1) |1_10| |0_9| |0_11|)
    ((_ pbeq 2 1 1 1) |1_10| |0_9| |0_11|)))
(assert (or ((_ pbeq 0 1 1 1) |1_12| |0_11| |0_13|)
    ((_ pbeq 2 1 1 1) |1_12| |0_11| |0_13|)))
(assert (or ((_ pbeq 0 1 1 1) |1_14| |0_13| |0_15|)
    ((_ pbeq 2 1 1 1) |1_14| |0_13| |0_15|)))
(assert (or ((_ pbeq 0 1 1 1) |1_16| |0_15| |0_17|)
    ((_ pbeq 2 1 1 1) |1_16| |0_15| |0_17|)))
(assert (or ((_ pbeq 0 1 1 1) |1_18| |0_17| |0_19|)
    ((_ pbeq 2 1 1 1) |1_18| |0_17| |0_19|)))
(assert (or ((_ pbeq 0 1 1) |1_20| |0_19|) ((_ pbeq 2 1 1) |1_20| |0_19|)))
(assert (or ((_ pbeq 0 1 1 1) |1_0| |3_0| |2_1|) ((_ pbeq 2 1 1 1) |1_0| |3_0| |2_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_2| |3_2| |2_1| |2_3|)
    ((_ pbeq 2 1 1 1 1) |1_2| |3_2| |2_1| |2_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_4| |3_4| |2_3| |2_5|)
    ((_ pbeq 2 1 1 1 1) |1_4| |3_4| |2_3| |2_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_6| |3_6| |2_5| |2_7|)
    ((_ pbeq 2 1 1 1 1) |1_6| |3_6| |2_5| |2_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_8| |3_8| |2_7| |2_9|)
    ((_ pbeq 2 1 1 1 1) |1_8| |3_8| |2_7| |2_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_10| |3_10| |2_9| |2_11|)
    ((_ pbeq 2 1 1 1 1) |1_10| |3_10| |2_9| |2_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_12| |3_12| |2_11| |2_13|)
    ((_ pbeq 2 1 1 1 1) |1_12| |3_12| |2_11| |2_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_14| |3_14| |2_13| |2_15|)
    ((_ pbeq 2 1 1 1 1) |1_14| |3_14| |2_13| |2_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_16| |3_16| |2_15| |2_17|)
    ((_ pbeq 2 1 1 1 1) |1_16| |3_16| |2_15| |2_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |1_18| |3_18| |2_17| |2_19|)
    ((_ pbeq 2 1 1 1 1) |1_18| |3_18| |2_17| |2_19|)))
(assert (or ((_ pbeq 0 1 1 1) |1_20| |3_20| |2_19|)
    ((_ pbeq 2 1 1 1) |1_20| |3_20| |2_19|)))
(assert (or ((_ pbeq 0 1 1 1) |3_0| |5_0| |4_1|) ((_ pbeq 2 1 1 1) |3_0| |5_0| |4_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_2| |5_2| |4_1| |4_3|)
    ((_ pbeq 2 1 1 1 1) |3_2| |5_2| |4_1| |4_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_4| |5_4| |4_3| |4_5|)
    ((_ pbeq 2 1 1 1 1) |3_4| |5_4| |4_3| |4_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_6| |5_6| |4_5| |4_7|)
    ((_ pbeq 2 1 1 1 1) |3_6| |5_6| |4_5| |4_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_8| |5_8| |4_7| |4_9|)
    ((_ pbeq 2 1 1 1 1) |3_8| |5_8| |4_7| |4_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_10| |5_10| |4_9| |4_11|)
    ((_ pbeq 2 1 1 1 1) |3_10| |5_10| |4_9| |4_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_12| |5_12| |4_11| |4_13|)
    ((_ pbeq 2 1 1 1 1) |3_12| |5_12| |4_11| |4_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_14| |5_14| |4_13| |4_15|)
    ((_ pbeq 2 1 1 1 1) |3_14| |5_14| |4_13| |4_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_16| |5_16| |4_15| |4_17|)
    ((_ pbeq 2 1 1 1 1) |3_16| |5_16| |4_15| |4_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |3_18| |5_18| |4_17| |4_19|)
    ((_ pbeq 2 1 1 1 1) |3_18| |5_18| |4_17| |4_19|)))
(assert (or ((_ pbeq 0 1 1 1) |3_20| |5_20| |4_19|)
    ((_ pbeq 2 1 1 1) |3_20| |5_20| |4_19|)))
(assert (or ((_ pbeq 0 1 1 1) |5_0| |7_0| |6_1|) ((_ pbeq 2 1 1 1) |5_0| |7_0| |6_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_2| |7_2| |6_1| |6_3|)
    ((_ pbeq 2 1 1 1 1) |5_2| |7_2| |6_1| |6_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_4| |7_4| |6_3| |6_5|)
    ((_ pbeq 2 1 1 1 1) |5_4| |7_4| |6_3| |6_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_6| |7_6| |6_5| |6_7|)
    ((_ pbeq 2 1 1 1 1) |5_6| |7_6| |6_5| |6_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_8| |7_8| |6_7| |6_9|)
    ((_ pbeq 2 1 1 1 1) |5_8| |7_8| |6_7| |6_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_10| |7_10| |6_9| |6_11|)
    ((_ pbeq 2 1 1 1 1) |5_10| |7_10| |6_9| |6_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_12| |7_12| |6_11| |6_13|)
    ((_ pbeq 2 1 1 1 1) |5_12| |7_12| |6_11| |6_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_14| |7_14| |6_13| |6_15|)
    ((_ pbeq 2 1 1 1 1) |5_14| |7_14| |6_13| |6_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_16| |7_16| |6_15| |6_17|)
    ((_ pbeq 2 1 1 1 1) |5_16| |7_16| |6_15| |6_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |5_18| |7_18| |6_17| |6_19|)
    ((_ pbeq 2 1 1 1 1) |5_18| |7_18| |6_17| |6_19|)))
(assert (or ((_ pbeq 0 1 1 1) |5_20| |7_20| |6_19|)
    ((_ pbeq 2 1 1 1) |5_20| |7_20| |6_19|)))
(assert (or ((_ pbeq 0 1 1 1) |7_0| |9_0| |8_1|) ((_ pbeq 2 1 1 1) |7_0| |9_0| |8_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_2| |9_2| |8_1| |8_3|)
    ((_ pbeq 2 1 1 1 1) |7_2| |9_2| |8_1| |8_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_4| |9_4| |8_3| |8_5|)
    ((_ pbeq 2 1 1 1 1) |7_4| |9_4| |8_3| |8_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_6| |9_6| |8_5| |8_7|)
    ((_ pbeq 2 1 1 1 1) |7_6| |9_6| |8_5| |8_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_8| |9_8| |8_7| |8_9|)
    ((_ pbeq 2 1 1 1 1) |7_8| |9_8| |8_7| |8_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_10| |9_10| |8_9| |8_11|)
    ((_ pbeq 2 1 1 1 1) |7_10| |9_10| |8_9| |8_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_12| |9_12| |8_11| |8_13|)
    ((_ pbeq 2 1 1 1 1) |7_12| |9_12| |8_11| |8_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_14| |9_14| |8_13| |8_15|)
    ((_ pbeq 2 1 1 1 1) |7_14| |9_14| |8_13| |8_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_16| |9_16| |8_15| |8_17|)
    ((_ pbeq 2 1 1 1 1) |7_16| |9_16| |8_15| |8_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |7_18| |9_18| |8_17| |8_19|)
    ((_ pbeq 2 1 1 1 1) |7_18| |9_18| |8_17| |8_19|)))
(assert (or ((_ pbeq 0 1 1 1) |7_20| |9_20| |8_19|)
    ((_ pbeq 2 1 1 1) |7_20| |9_20| |8_19|)))
(assert (or ((_ pbeq 0 1 1 1) |9_0| |11_0| |10_1|)
    ((_ pbeq 2 1 1 1) |9_0| |11_0| |10_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_2| |11_2| |10_1| |10_3|)
    ((_ pbeq 2 1 1 1 1) |9_2| |11_2| |10_1| |10_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_4| |11_4| |10_3| |10_5|)
    ((_ pbeq 2 1 1 1 1) |9_4| |11_4| |10_3| |10_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_6| |11_6| |10_5| |10_7|)
    ((_ pbeq 2 1 1 1 1) |9_6| |11_6| |10_5| |10_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_8| |11_8| |10_7| |10_9|)
    ((_ pbeq 2 1 1 1 1) |9_8| |11_8| |10_7| |10_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_10| |11_10| |10_9| |10_11|)
    ((_ pbeq 2 1 1 1 1) |9_10| |11_10| |10_9| |10_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_12| |11_12| |10_11| |10_13|)
    ((_ pbeq 2 1 1 1 1) |9_12| |11_12| |10_11| |10_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_14| |11_14| |10_13| |10_15|)
    ((_ pbeq 2 1 1 1 1) |9_14| |11_14| |10_13| |10_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_16| |11_16| |10_15| |10_17|)
    ((_ pbeq 2 1 1 1 1) |9_16| |11_16| |10_15| |10_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |9_18| |11_18| |10_17| |10_19|)
    ((_ pbeq 2 1 1 1 1) |9_18| |11_18| |10_17| |10_19|)))
(assert (or ((_ pbeq 0 1 1 1) |9_20| |11_20| |10_19|)
    ((_ pbeq 2 1 1 1) |9_20| |11_20| |10_19|)))
(assert (or ((_ pbeq 0 1 1 1) |11_0| |13_0| |12_1|)
    ((_ pbeq 2 1 1 1) |11_0| |13_0| |12_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_2| |13_2| |12_1| |12_3|)
    ((_ pbeq 2 1 1 1 1) |11_2| |13_2| |12_1| |12_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_4| |13_4| |12_3| |12_5|)
    ((_ pbeq 2 1 1 1 1) |11_4| |13_4| |12_3| |12_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_6| |13_6| |12_5| |12_7|)
    ((_ pbeq 2 1 1 1 1) |11_6| |13_6| |12_5| |12_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_8| |13_8| |12_7| |12_9|)
    ((_ pbeq 2 1 1 1 1) |11_8| |13_8| |12_7| |12_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_10| |13_10| |12_9| |12_11|)
    ((_ pbeq 2 1 1 1 1) |11_10| |13_10| |12_9| |12_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_12| |13_12| |12_11| |12_13|)
    ((_ pbeq 2 1 1 1 1) |11_12| |13_12| |12_11| |12_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_14| |13_14| |12_13| |12_15|)
    ((_ pbeq 2 1 1 1 1) |11_14| |13_14| |12_13| |12_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_16| |13_16| |12_15| |12_17|)
    ((_ pbeq 2 1 1 1 1) |11_16| |13_16| |12_15| |12_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |11_18| |13_18| |12_17| |12_19|)
    ((_ pbeq 2 1 1 1 1) |11_18| |13_18| |12_17| |12_19|)))
(assert (or ((_ pbeq 0 1 1 1) |11_20| |13_20| |12_19|)
    ((_ pbeq 2 1 1 1) |11_20| |13_20| |12_19|)))
(assert (or ((_ pbeq 0 1 1 1) |13_0| |15_0| |14_1|)
    ((_ pbeq 2 1 1 1) |13_0| |15_0| |14_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_2| |15_2| |14_1| |14_3|)
    ((_ pbeq 2 1 1 1 1) |13_2| |15_2| |14_1| |14_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_4| |15_4| |14_3| |14_5|)
    ((_ pbeq 2 1 1 1 1) |13_4| |15_4| |14_3| |14_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_6| |15_6| |14_5| |14_7|)
    ((_ pbeq 2 1 1 1 1) |13_6| |15_6| |14_5| |14_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_8| |15_8| |14_7| |14_9|)
    ((_ pbeq 2 1 1 1 1) |13_8| |15_8| |14_7| |14_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_10| |15_10| |14_9| |14_11|)
    ((_ pbeq 2 1 1 1 1) |13_10| |15_10| |14_9| |14_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_12| |15_12| |14_11| |14_13|)
    ((_ pbeq 2 1 1 1 1) |13_12| |15_12| |14_11| |14_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_14| |15_14| |14_13| |14_15|)
    ((_ pbeq 2 1 1 1 1) |13_14| |15_14| |14_13| |14_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_16| |15_16| |14_15| |14_17|)
    ((_ pbeq 2 1 1 1 1) |13_16| |15_16| |14_15| |14_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |13_18| |15_18| |14_17| |14_19|)
    ((_ pbeq 2 1 1 1 1) |13_18| |15_18| |14_17| |14_19|)))
(assert (or ((_ pbeq 0 1 1 1) |13_20| |15_20| |14_19|)
    ((_ pbeq 2 1 1 1) |13_20| |15_20| |14_19|)))
(assert (or ((_ pbeq 0 1 1 1) |15_0| |17_0| |16_1|)
    ((_ pbeq 2 1 1 1) |15_0| |17_0| |16_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_2| |17_2| |16_1| |16_3|)
    ((_ pbeq 2 1 1 1 1) |15_2| |17_2| |16_1| |16_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_4| |17_4| |16_3| |16_5|)
    ((_ pbeq 2 1 1 1 1) |15_4| |17_4| |16_3| |16_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_6| |17_6| |16_5| |16_7|)
    ((_ pbeq 2 1 1 1 1) |15_6| |17_6| |16_5| |16_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_8| |17_8| |16_7| |16_9|)
    ((_ pbeq 2 1 1 1 1) |15_8| |17_8| |16_7| |16_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_10| |17_10| |16_9| |16_11|)
    ((_ pbeq 2 1 1 1 1) |15_10| |17_10| |16_9| |16_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_12| |17_12| |16_11| |16_13|)
    ((_ pbeq 2 1 1 1 1) |15_12| |17_12| |16_11| |16_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_14| |17_14| |16_13| |16_15|)
    ((_ pbeq 2 1 1 1 1) |15_14| |17_14| |16_13| |16_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_16| |17_16| |16_15| |16_17|)
    ((_ pbeq 2 1 1 1 1) |15_16| |17_16| |16_15| |16_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |15_18| |17_18| |16_17| |16_19|)
    ((_ pbeq 2 1 1 1 1) |15_18| |17_18| |16_17| |16_19|)))
(assert (or ((_ pbeq 0 1 1 1) |15_20| |17_20| |16_19|)
    ((_ pbeq 2 1 1 1) |15_20| |17_20| |16_19|)))
(assert (or ((_ pbeq 0 1 1 1) |17_0| |19_0| |18_1|)
    ((_ pbeq 2 1 1 1) |17_0| |19_0| |18_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_2| |19_2| |18_1| |18_3|)
    ((_ pbeq 2 1 1 1 1) |17_2| |19_2| |18_1| |18_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_4| |19_4| |18_3| |18_5|)
    ((_ pbeq 2 1 1 1 1) |17_4| |19_4| |18_3| |18_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_6| |19_6| |18_5| |18_7|)
    ((_ pbeq 2 1 1 1 1) |17_6| |19_6| |18_5| |18_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_8| |19_8| |18_7| |18_9|)
    ((_ pbeq 2 1 1 1 1) |17_8| |19_8| |18_7| |18_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_10| |19_10| |18_9| |18_11|)
    ((_ pbeq 2 1 1 1 1) |17_10| |19_10| |18_9| |18_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_12| |19_12| |18_11| |18_13|)
    ((_ pbeq 2 1 1 1 1) |17_12| |19_12| |18_11| |18_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_14| |19_14| |18_13| |18_15|)
    ((_ pbeq 2 1 1 1 1) |17_14| |19_14| |18_13| |18_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_16| |19_16| |18_15| |18_17|)
    ((_ pbeq 2 1 1 1 1) |17_16| |19_16| |18_15| |18_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |17_18| |19_18| |18_17| |18_19|)
    ((_ pbeq 2 1 1 1 1) |17_18| |19_18| |18_17| |18_19|)))
(assert (or ((_ pbeq 0 1 1 1) |17_20| |19_20| |18_19|)
    ((_ pbeq 2 1 1 1) |17_20| |19_20| |18_19|)))
(assert (or ((_ pbeq 0 1 1 1) |19_0| |21_0| |20_1|)
    ((_ pbeq 2 1 1 1) |19_0| |21_0| |20_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_2| |21_2| |20_1| |20_3|)
    ((_ pbeq 2 1 1 1 1) |19_2| |21_2| |20_1| |20_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_4| |21_4| |20_3| |20_5|)
    ((_ pbeq 2 1 1 1 1) |19_4| |21_4| |20_3| |20_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_6| |21_6| |20_5| |20_7|)
    ((_ pbeq 2 1 1 1 1) |19_6| |21_6| |20_5| |20_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_8| |21_8| |20_7| |20_9|)
    ((_ pbeq 2 1 1 1 1) |19_8| |21_8| |20_7| |20_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_10| |21_10| |20_9| |20_11|)
    ((_ pbeq 2 1 1 1 1) |19_10| |21_10| |20_9| |20_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_12| |21_12| |20_11| |20_13|)
    ((_ pbeq 2 1 1 1 1) |19_12| |21_12| |20_11| |20_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_14| |21_14| |20_13| |20_15|)
    ((_ pbeq 2 1 1 1 1) |19_14| |21_14| |20_13| |20_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_16| |21_16| |20_15| |20_17|)
    ((_ pbeq 2 1 1 1 1) |19_16| |21_16| |20_15| |20_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |19_18| |21_18| |20_17| |20_19|)
    ((_ pbeq 2 1 1 1 1) |19_18| |21_18| |20_17| |20_19|)))
(assert (or ((_ pbeq 0 1 1 1) |19_20| |21_20| |20_19|)
    ((_ pbeq 2 1 1 1) |19_20| |21_20| |20_19|)))
(assert (or ((_ pbeq 0 1 1 1) |21_0| |23_0| |22_1|)
    ((_ pbeq 2 1 1 1) |21_0| |23_0| |22_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_2| |23_2| |22_1| |22_3|)
    ((_ pbeq 2 1 1 1 1) |21_2| |23_2| |22_1| |22_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_4| |23_4| |22_3| |22_5|)
    ((_ pbeq 2 1 1 1 1) |21_4| |23_4| |22_3| |22_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_6| |23_6| |22_5| |22_7|)
    ((_ pbeq 2 1 1 1 1) |21_6| |23_6| |22_5| |22_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_8| |23_8| |22_7| |22_9|)
    ((_ pbeq 2 1 1 1 1) |21_8| |23_8| |22_7| |22_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_10| |23_10| |22_9| |22_11|)
    ((_ pbeq 2 1 1 1 1) |21_10| |23_10| |22_9| |22_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_12| |23_12| |22_11| |22_13|)
    ((_ pbeq 2 1 1 1 1) |21_12| |23_12| |22_11| |22_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_14| |23_14| |22_13| |22_15|)
    ((_ pbeq 2 1 1 1 1) |21_14| |23_14| |22_13| |22_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_16| |23_16| |22_15| |22_17|)
    ((_ pbeq 2 1 1 1 1) |21_16| |23_16| |22_15| |22_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |21_18| |23_18| |22_17| |22_19|)
    ((_ pbeq 2 1 1 1 1) |21_18| |23_18| |22_17| |22_19|)))
(assert (or ((_ pbeq 0 1 1 1) |21_20| |23_20| |22_19|)
    ((_ pbeq 2 1 1 1) |21_20| |23_20| |22_19|)))
(assert (or ((_ pbeq 0 1 1 1) |23_0| |25_0| |24_1|)
    ((_ pbeq 2 1 1 1) |23_0| |25_0| |24_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_2| |25_2| |24_1| |24_3|)
    ((_ pbeq 2 1 1 1 1) |23_2| |25_2| |24_1| |24_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_4| |25_4| |24_3| |24_5|)
    ((_ pbeq 2 1 1 1 1) |23_4| |25_4| |24_3| |24_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_6| |25_6| |24_5| |24_7|)
    ((_ pbeq 2 1 1 1 1) |23_6| |25_6| |24_5| |24_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_8| |25_8| |24_7| |24_9|)
    ((_ pbeq 2 1 1 1 1) |23_8| |25_8| |24_7| |24_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_10| |25_10| |24_9| |24_11|)
    ((_ pbeq 2 1 1 1 1) |23_10| |25_10| |24_9| |24_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_12| |25_12| |24_11| |24_13|)
    ((_ pbeq 2 1 1 1 1) |23_12| |25_12| |24_11| |24_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_14| |25_14| |24_13| |24_15|)
    ((_ pbeq 2 1 1 1 1) |23_14| |25_14| |24_13| |24_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_16| |25_16| |24_15| |24_17|)
    ((_ pbeq 2 1 1 1 1) |23_16| |25_16| |24_15| |24_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |23_18| |25_18| |24_17| |24_19|)
    ((_ pbeq 2 1 1 1 1) |23_18| |25_18| |24_17| |24_19|)))
(assert (or ((_ pbeq 0 1 1 1) |23_20| |25_20| |24_19|)
    ((_ pbeq 2 1 1 1) |23_20| |25_20| |24_19|)))
(assert (or ((_ pbeq 0 1 1 1) |25_0| |27_0| |26_1|)
    ((_ pbeq 2 1 1 1) |25_0| |27_0| |26_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_2| |27_2| |26_1| |26_3|)
    ((_ pbeq 2 1 1 1 1) |25_2| |27_2| |26_1| |26_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_4| |27_4| |26_3| |26_5|)
    ((_ pbeq 2 1 1 1 1) |25_4| |27_4| |26_3| |26_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_6| |27_6| |26_5| |26_7|)
    ((_ pbeq 2 1 1 1 1) |25_6| |27_6| |26_5| |26_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_8| |27_8| |26_7| |26_9|)
    ((_ pbeq 2 1 1 1 1) |25_8| |27_8| |26_7| |26_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_10| |27_10| |26_9| |26_11|)
    ((_ pbeq 2 1 1 1 1) |25_10| |27_10| |26_9| |26_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_12| |27_12| |26_11| |26_13|)
    ((_ pbeq 2 1 1 1 1) |25_12| |27_12| |26_11| |26_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_14| |27_14| |26_13| |26_15|)
    ((_ pbeq 2 1 1 1 1) |25_14| |27_14| |26_13| |26_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_16| |27_16| |26_15| |26_17|)
    ((_ pbeq 2 1 1 1 1) |25_16| |27_16| |26_15| |26_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |25_18| |27_18| |26_17| |26_19|)
    ((_ pbeq 2 1 1 1 1) |25_18| |27_18| |26_17| |26_19|)))
(assert (or ((_ pbeq 0 1 1 1) |25_20| |27_20| |26_19|)
    ((_ pbeq 2 1 1 1) |25_20| |27_20| |26_19|)))
(assert (or ((_ pbeq 0 1 1 1) |27_0| |29_0| |28_1|)
    ((_ pbeq 2 1 1 1) |27_0| |29_0| |28_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_2| |29_2| |28_1| |28_3|)
    ((_ pbeq 2 1 1 1 1) |27_2| |29_2| |28_1| |28_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_4| |29_4| |28_3| |28_5|)
    ((_ pbeq 2 1 1 1 1) |27_4| |29_4| |28_3| |28_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_6| |29_6| |28_5| |28_7|)
    ((_ pbeq 2 1 1 1 1) |27_6| |29_6| |28_5| |28_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_8| |29_8| |28_7| |28_9|)
    ((_ pbeq 2 1 1 1 1) |27_8| |29_8| |28_7| |28_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_10| |29_10| |28_9| |28_11|)
    ((_ pbeq 2 1 1 1 1) |27_10| |29_10| |28_9| |28_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_12| |29_12| |28_11| |28_13|)
    ((_ pbeq 2 1 1 1 1) |27_12| |29_12| |28_11| |28_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_14| |29_14| |28_13| |28_15|)
    ((_ pbeq 2 1 1 1 1) |27_14| |29_14| |28_13| |28_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_16| |29_16| |28_15| |28_17|)
    ((_ pbeq 2 1 1 1 1) |27_16| |29_16| |28_15| |28_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |27_18| |29_18| |28_17| |28_19|)
    ((_ pbeq 2 1 1 1 1) |27_18| |29_18| |28_17| |28_19|)))
(assert (or ((_ pbeq 0 1 1 1) |27_20| |29_20| |28_19|)
    ((_ pbeq 2 1 1 1) |27_20| |29_20| |28_19|)))
(assert (or ((_ pbeq 0 1 1 1) |29_0| |31_0| |30_1|)
    ((_ pbeq 2 1 1 1) |29_0| |31_0| |30_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_2| |31_2| |30_1| |30_3|)
    ((_ pbeq 2 1 1 1 1) |29_2| |31_2| |30_1| |30_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_4| |31_4| |30_3| |30_5|)
    ((_ pbeq 2 1 1 1 1) |29_4| |31_4| |30_3| |30_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_6| |31_6| |30_5| |30_7|)
    ((_ pbeq 2 1 1 1 1) |29_6| |31_6| |30_5| |30_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_8| |31_8| |30_7| |30_9|)
    ((_ pbeq 2 1 1 1 1) |29_8| |31_8| |30_7| |30_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_10| |31_10| |30_9| |30_11|)
    ((_ pbeq 2 1 1 1 1) |29_10| |31_10| |30_9| |30_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_12| |31_12| |30_11| |30_13|)
    ((_ pbeq 2 1 1 1 1) |29_12| |31_12| |30_11| |30_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_14| |31_14| |30_13| |30_15|)
    ((_ pbeq 2 1 1 1 1) |29_14| |31_14| |30_13| |30_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_16| |31_16| |30_15| |30_17|)
    ((_ pbeq 2 1 1 1 1) |29_16| |31_16| |30_15| |30_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |29_18| |31_18| |30_17| |30_19|)
    ((_ pbeq 2 1 1 1 1) |29_18| |31_18| |30_17| |30_19|)))
(assert (or ((_ pbeq 0 1 1 1) |29_20| |31_20| |30_19|)
    ((_ pbeq 2 1 1 1) |29_20| |31_20| |30_19|)))
(assert (or ((_ pbeq 0 1 1 1) |31_0| |33_0| |32_1|)
    ((_ pbeq 2 1 1 1) |31_0| |33_0| |32_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_2| |33_2| |32_1| |32_3|)
    ((_ pbeq 2 1 1 1 1) |31_2| |33_2| |32_1| |32_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_4| |33_4| |32_3| |32_5|)
    ((_ pbeq 2 1 1 1 1) |31_4| |33_4| |32_3| |32_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_6| |33_6| |32_5| |32_7|)
    ((_ pbeq 2 1 1 1 1) |31_6| |33_6| |32_5| |32_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_8| |33_8| |32_7| |32_9|)
    ((_ pbeq 2 1 1 1 1) |31_8| |33_8| |32_7| |32_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_10| |33_10| |32_9| |32_11|)
    ((_ pbeq 2 1 1 1 1) |31_10| |33_10| |32_9| |32_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_12| |33_12| |32_11| |32_13|)
    ((_ pbeq 2 1 1 1 1) |31_12| |33_12| |32_11| |32_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_14| |33_14| |32_13| |32_15|)
    ((_ pbeq 2 1 1 1 1) |31_14| |33_14| |32_13| |32_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_16| |33_16| |32_15| |32_17|)
    ((_ pbeq 2 1 1 1 1) |31_16| |33_16| |32_15| |32_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |31_18| |33_18| |32_17| |32_19|)
    ((_ pbeq 2 1 1 1 1) |31_18| |33_18| |32_17| |32_19|)))
(assert (or ((_ pbeq 0 1 1 1) |31_20| |33_20| |32_19|)
    ((_ pbeq 2 1 1 1) |31_20| |33_20| |32_19|)))
(assert (or ((_ pbeq 0 1 1 1) |33_0| |35_0| |34_1|)
    ((_ pbeq 2 1 1 1) |33_0| |35_0| |34_1|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_2| |35_2| |34_1| |34_3|)
    ((_ pbeq 2 1 1 1 1) |33_2| |35_2| |34_1| |34_3|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_4| |35_4| |34_3| |34_5|)
    ((_ pbeq 2 1 1 1 1) |33_4| |35_4| |34_3| |34_5|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_6| |35_6| |34_5| |34_7|)
    ((_ pbeq 2 1 1 1 1) |33_6| |35_6| |34_5| |34_7|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_8| |35_8| |34_7| |34_9|)
    ((_ pbeq 2 1 1 1 1) |33_8| |35_8| |34_7| |34_9|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_10| |35_10| |34_9| |34_11|)
    ((_ pbeq 2 1 1 1 1) |33_10| |35_10| |34_9| |34_11|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_12| |35_12| |34_11| |34_13|)
    ((_ pbeq 2 1 1 1 1) |33_12| |35_12| |34_11| |34_13|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_14| |35_14| |34_13| |34_15|)
    ((_ pbeq 2 1 1 1 1) |33_14| |35_14| |34_13| |34_15|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_16| |35_16| |34_15| |34_17|)
    ((_ pbeq 2 1 1 1 1) |33_16| |35_16| |34_15| |34_17|)))
(assert (or ((_ pbeq 0 1 1 1 1) |33_18| |35_18| |34_17| |34_19|)
    ((_ pbeq 2 1 1 1 1) |33_18| |35_18| |34_17| |34_19|)))
(assert (or ((_ pbeq 0 1 1 1) |33_20| |35_20| |34_19|)
    ((_ pbeq 2 1 1 1) |33_20| |35_20| |34_19|)))
(assert (or ((_ pbeq 0 1 1) |35_0| |36_1|) ((_ pbeq 2 1 1) |35_0| |36_1|)))
(assert (or ((_ pbeq 0 1 1 1) |35_2| |36_1| |36_3|)
    ((_ pbeq 2 1 1 1) |35_2| |36_1| |36_3|)))
(assert (or ((_ pbeq 0 1 1 1) |35_4| |36_3| |36_5|)
    ((_ pbeq 2 1 1 1) |35_4| |36_3| |36_5|)))
(assert (or ((_ pbeq 0 1 1 1) |35_6| |36_5| |36_7|)
    ((_ pbeq 2 1 1 1) |35_6| |36_5| |36_7|)))
(assert (or ((_ pbeq 0 1 1 1) |35_8| |36_7| |36_9|)
    ((_ pbeq 2 1 1 1) |35_8| |36_7| |36_9|)))
(assert (or ((_ pbeq 0 1 1 1) |35_10| |36_9| |36_11|)
    ((_ pbeq 2 1 1 1) |35_10| |36_9| |36_11|)))
(assert (or ((_ pbeq 0 1 1 1) |35_12| |36_11| |36_13|)
    ((_ pbeq 2 1 1 1) |35_12| |36_11| |36_13|)))
(assert (or ((_ pbeq 0 1 1 1) |35_14| |36_13| |36_15|)
    ((_ pbeq 2 1 1 1) |35_14| |36_13| |36_15|)))
(assert (or ((_ pbeq 0 1 1 1) |35_16| |36_15| |36_17|)
    ((_ pbeq 2 1 1 1) |35_16| |36_15| |36_17|)))
(assert (or ((_ pbeq 0 1 1 1) |35_18| |36_17| |36_19|)
    ((_ pbeq 2 1 1 1) |35_18| |36_17| |36_19|)))
(assert (or ((_ pbeq 0 1 1) |35_20| |36_19|) ((_ pbeq 2 1 1) |35_20| |36_19|)))
(check-sat)

(assert (not (and |17_6|
          |19_14|
          |22_5|
          |5_8|
          |10_11|
          |10_19|
          |20_7|
          |23_12|
          |11_18|
          |20_1|
          |25_6|
          |9_6|
          |23_8|
          |23_10|
          |6_13|
          |27_6|
          |14_9|
          |25_8|
          |7_8|
          |19_10|
          |8_7|
          |16_3|
          |17_8|
          |4_19|
          |21_12|
          |0_19|
          |5_18|
          |9_16|
          |8_11|
          |27_8|
          |10_7|
          |9_20|
          |12_15|
          |12_17|
          |20_5|
          |17_2|
          |20_9|
          |12_13|
          |7_14|
          |6_11|
          |29_6|
          |29_8|
          |1_16|
          |18_1|
          |13_12|
          |20_13|
          |10_15|
          |4_9|
          |11_8|
          |7_16|
          |3_20|
          |19_4|
          |23_6|
          |5_16|
          |18_9|
          |5_10|
          |17_12|
          |7_20|
          |18_13|
          |15_10|
          |21_2|
          |22_3|
          |16_13|
          |24_11|
          |16_9|
          |9_10|
          |14_13|
          |1_20|
          |3_16|
          |13_8|
          |22_9|
          |8_13|
          |10_13|
          |0_17|
          |30_7|
          |18_5|
          |15_14|
          |19_0|
          |16_5|
          |6_19|)))
(assert (not (and |7_0| |5_0| |10_1| |7_4| |4_1| |10_3| |6_3| |9_4| |9_0| |5_2|)))
(assert (not (and |29_16|
          |23_18|
          |30_17|
          |27_12|
          |23_14|
          |14_17|
          |33_20|
          |18_19|
          |26_13|
          |35_18|
          |31_20|
          |17_18|
          |34_17|
          |15_16|
          |33_14|
          |29_14|
          |35_20|
          |24_17|
          |21_20|
          |26_17|
          |25_14|
          |28_13|
          |28_19|
          |23_16|
          |32_13|
          |17_16|
          |29_20|
          |19_20|
          |22_15|
          |26_19|
          |27_16|
          |19_16|
          |23_20|
          |25_20|
          |29_18|
          |31_12|
          |20_17|
          |34_15|
          |21_18|
          |15_18|
          |36_19|
          |30_13|)))
(assert (not (and |25_4| |28_3| |24_1| |25_0| |29_0| |30_1| |24_3| |29_2| |27_4| |27_0|)))
(assert (not (and |32_9| |34_11| |33_8| |35_8| |33_10| |36_11| |36_9| |35_12|)))
(assert (not (and |1_2| |1_0| |2_1| |0_1|)))
(assert (not (and |13_2| |12_5| |13_6| |12_3| |14_3| |14_5|)))
(assert (not (and |0_5| |1_4| |2_7| |3_4| |4_5| |1_8| |3_6| |0_7|)))
(assert (not (and |36_5| |35_0| |33_0| |32_1| |34_5| |36_1| |32_3| |33_4| |36_3| |35_6|)))
(assert (not (and |1_12| |3_14| |1_14| |4_13| |0_13| |3_12|)))
(check-sat)

(assert (not (and |17_6|
          |15_2|
          |0_13|
          |21_6|
          |9_12|
          |13_12|
          |13_4|
          |20_13|
          |19_14|
          |13_2|
          |13_6|
          |10_11|
          |12_3|
          |2_15|
          |3_20|
          |10_19|
          |23_6|
          |19_4|
          |1_12|
          |23_12|
          |2_17|
          |11_18|
          |25_6|
          |14_5|
          |23_8|
          |5_12|
          |17_12|
          |7_20|
          |23_10|
          |6_13|
          |18_13|
          |12_9|
          |25_8|
          |1_18|
          |16_13|
          |24_11|
          |3_12|
          |11_10|
          |14_13|
          |26_7|
          |1_14|
          |1_20|
          |16_3|
          |12_7|
          |4_19|
          |22_9|
          |8_13|
          |21_12|
          |0_19|
          |5_18|
          |12_13|
          |9_20|
          |12_15|
          |12_17|
          |18_5|
          |20_5|
          |15_14|
          |16_5|
          |7_14|
          |6_19|)))
(assert (not (and |7_0|
          |5_0|
          |8_7|
          |6_5|
          |10_1|
          |10_5|
          |10_7|
          |9_8|
          |4_1|
          |10_3|
          |6_3|
          |7_6|
          |9_0|
          |5_2|)))
(assert (not (and |29_16|
          |22_19|
          |28_19|
          |23_16|
          |28_13|
          |23_18|
          |32_13|
          |30_17|
          |27_12|
          |23_14|
          |29_20|
          |33_20|
          |26_13|
          |35_18|
          |31_20|
          |22_15|
          |26_19|
          |27_16|
          |23_20|
          |25_20|
          |34_17|
          |29_18|
          |31_12|
          |34_15|
          |33_14|
          |36_19|
          |25_14|
          |29_14|
          |35_20|
          |30_13|
          |24_17|
          |26_17|)))
(assert (not (and |25_2| |25_4| |22_3| |26_3| |20_1| |21_0| |24_1| |21_2| |23_4| |23_0|)))
(assert (not (and |2_9| |5_8| |3_8| |5_10| |3_10| |6_9|)))
(assert (not (and |31_2|
          |32_5|
          |29_8|
          |35_8|
          |32_7|
          |29_10|
          |36_9|
          |34_5|
          |36_1|
          |30_1|
          |34_11|
          |31_10|
          |33_8|
          |34_1|
          |28_5|
          |35_12|
          |35_6|
          |33_2|
          |28_3|
          |36_11|
          |36_5|
          |35_0|
          |29_0|
          |28_9|
          |30_7|
          |33_10|
          |33_4|
          |28_1|
          |36_3|
          |29_6|)))
(assert (not (and |20_9| |15_10| |17_10| |19_8| |14_9| |19_10| |17_8| |15_8|)))
(assert (not (and |19_16|
          |17_16|
          |20_17|
          |20_19|
          |15_16|
          |14_17|
          |15_18|
          |16_19|
          |19_20|
          |17_20|)))
(assert (not (and |0_5| |4_5| |3_6| |3_4| |1_6| |0_1| |1_0| |2_1| |2_3| |0_3|)))
(check-sat)

