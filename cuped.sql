-- Databricks notebook source
SELECT `t_experiment`.`gray_id` `gray_id`,
       SUM(CASE
               WHEN `t_experiment`.`metric_29271_A`>0 THEN 1
               ELSE 0
           END) `metric_29271_nume`,
       COUNT(`t_experiment`.`uin`) `metric_29271_deno`,
       SUM(CASE
               WHEN `t_experiment`.`metric_29271_A`>0 THEN 1
               ELSE 0
           END)/COUNT(`t_experiment`.`uin`) `metric_29271_value`,
       COUNT(`t_experiment`.`uin`) `metric_29271_sample_size`,
       SUM(CASE
               WHEN `t_pre_experiment`.`metric_29271_A`>0 THEN 1
               ELSE 0
           END) `metric_29271_pre_nume`,
       SUM(CASE
               WHEN `t_experiment`.`metric_29271_A`>0 THEN 1
               ELSE 0
           END * CASE
                     WHEN `t_pre_experiment`.`metric_29271_A`>0 THEN 1
                     ELSE 0
                 END) `metric_29271_nume_x_pre_nume`,
       SUM(`t_experiment`.`metric_29273_A`) `metric_29273_nume`,
       COUNT(`t_experiment`.`uin`) `metric_29273_deno`,
       SUM(POWER(`t_experiment`.`metric_29273_A`, 2)) `metric_29273_nume_square`,
       SUM(`t_experiment`.`metric_29273_A`)/COUNT(`t_experiment`.`uin`) `metric_29273_value`,
       COUNT(`t_experiment`.`uin`) `metric_29273_sample_size`,
       SUM(`t_pre_experiment`.`metric_29273_A`) `metric_29273_pre_nume`,
       SUM(`t_experiment`.`metric_29273_A` * `t_pre_experiment`.`metric_29273_A`) `metric_29273_nume_x_pre_nume`,
       SUM(POWER(`t_pre_experiment`.`metric_29273_A`, 2)) `metric_29273_pre_nume_square`,
       SUM(`t_experiment`.`metric_30740_A`) `metric_30740_nume`,
       SUM(`t_experiment`.`metric_30740_B`) `metric_30740_deno`,
       SUM(POWER(`t_experiment`.`metric_30740_A`, 2)) `metric_30740_nume_square`,
       SUM(POWER(`t_experiment`.`metric_30740_B`, 2)) `metric_30740_deno_square`,
       SUM(`t_experiment`.`metric_30740_A` * `t_experiment`.`metric_30740_B`) `metric_30740_nume_x_deno`,
       SUM(`t_experiment`.`metric_30740_A`)/SUM(`t_experiment`.`metric_30740_B`) `metric_30740_value`,
       SUM(CASE
               WHEN `t_experiment`.`metric_30740_A`>0
                    OR `t_experiment`.`metric_30740_B`>0 THEN 1
               ELSE 0
           END) `metric_30740_sample_size`,
       SUM(POWER(`t_pre_experiment`.`metric_30740_A`, 2)) `metric_30740_pre_nume_square`,
       SUM(POWER(`t_pre_experiment`.`metric_30740_B`, 2)) `metric_30740_pre_deno_square`,
       SUM(`t_experiment`.`metric_30740_A` * `t_pre_experiment`.`metric_30740_A`) `metric_30740_nume_x_pre_nume`,
       SUM(`t_experiment`.`metric_30740_A` * `t_pre_experiment`.`metric_30740_B`) `metric_30740_nume_x_pre_deno`,
       SUM(`t_pre_experiment`.`metric_30740_A` * `t_experiment`.`metric_30740_B`) `metric_30740_pre_nume_x_deno`,
       SUM(`t_experiment`.`metric_30740_B` * `t_pre_experiment`.`metric_30740_B`) `metric_30740_deno_x_pre_deno`,
       SUM(`t_pre_experiment`.`metric_30740_A` * `t_pre_experiment`.`metric_30740_B`) `metric_30740_pre_nume_x_pre_deno`
FROM
  (SELECT `t_tab_exp`.`uin` `uin`,
          `t_tab_exp`.`gray_id` `gray_id`,
          SUM(`t_tab_action_23971`.`metric_29271_A`) `metric_29271_A`,
          SUM(`t_tab_action_23971`.`metric_29273_A`) `metric_29273_A`,
          SUM(`t_tab_action_23971`.`metric_30740_A`) `metric_30740_A`,
          SUM(`t_tab_action_23971`.`metric_30740_B`) `metric_30740_B`
   FROM
     (SELECT `t_tab_exp_23975`.`user_id` `uin`,
             `t_tab_exp_23975`.`exp_id` `gray_id`,
             MIN(`t_tab_exp_23975`.`ds`) `first_exposure_ds`
      FROM default.tab_exp_expose_aggr `t_tab_exp_23975`
      WHERE `t_tab_exp_23975`.`exp_id` IN (111222, 111223, 111224, 111225)
        AND `t_tab_exp_23975`.`ds` BETWEEN 20220301 AND 20220314
      GROUP BY `t_tab_exp_23975`.`user_id`,
               `t_tab_exp_23975`.`exp_id`) `t_tab_exp`
   LEFT JOIN
     (SELECT `t_tab_action_23971`.`user_id` `uin`,
             `t_tab_action_23971`.`ds` `ds`,
             SUM(CAST(`t_tab_action_23971`.`video_time` AS DOUBLE)) `metric_29271_A`,
             SUM(CAST(`t_tab_action_23971`.`click_time` AS DOUBLE)) `metric_29273_A`,
             SUM(CAST(`t_tab_action_23971`.`watch_time` AS DOUBLE)) `metric_30740_A`,
             SUM(CAST(`t_tab_action_23971`.`video_time` AS DOUBLE)) `metric_30740_B`
      FROM default.tab_user_behavior_aggr `t_tab_action_23971`
      WHERE `t_tab_action_23971`.`ds` BETWEEN 20220301 AND 20220314
      GROUP BY `t_tab_action_23971`.`user_id`,
               `t_tab_action_23971`.`ds`) `t_tab_action_23971` ON `t_tab_exp`.`uin`=`t_tab_action_23971`.`uin`
   AND `t_tab_exp`.`first_exposure_ds`<=`t_tab_action_23971`.`ds`
   GROUP BY `t_tab_exp`.`uin`,
            `t_tab_exp`.`gray_id`) `t_experiment`
LEFT JOIN
  (SELECT `t_tab_action_pre_exp_23971`.`user_id` `uin`,
          SUM(CAST(`t_tab_action_pre_exp_23971`.`video_time` AS DOUBLE)) `metric_29271_A`,
          SUM(CAST(`t_tab_action_pre_exp_23971`.`click_time` AS DOUBLE)) `metric_29273_A`,
          SUM(CAST(`t_tab_action_pre_exp_23971`.`watch_time` AS DOUBLE)) `metric_30740_A`,
          SUM(CAST(`t_tab_action_pre_exp_23971`.`video_time` AS DOUBLE)) `metric_30740_B`
   FROM default.tab_user_behavior_aggr `t_tab_action_pre_exp_23971`
   WHERE `t_tab_action_pre_exp_23971`.`ds` BETWEEN 20220301 AND 20220314
   GROUP BY `t_tab_action_pre_exp_23971`.`user_id`) `t_pre_experiment` USING (`uin`)
GROUP BY `gray_id`
