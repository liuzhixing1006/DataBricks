-- Databricks notebook source
SELECT t_result.gray_id gray_id,
       SUM(metric_32613_A) metric_32613_nume,
       SUM(metric_32613_A * metric_32613_A) metric_32613_nume_square,
       SUM(metric_32613_B) metric_32613_deno,
       SUM(metric_32613_B * metric_32613_B) metric_32613_deno_square,
       SUM(metric_32613_A * metric_32613_B) metric_32613_sum_of_mul,
       SUM(metric_32613_A) / SUM(metric_32613_B) metric_32613_value,
       SUM(CASE
               WHEN metric_32613_A > 0
                    OR metric_32613_B > 0 THEN 1
               ELSE 0
           END) metric_32613_sample_size,
       SUM(metric_32615_A) metric_32615_nume,
       SUM(metric_32615_A * metric_32615_A) metric_32615_nume_square,
       SUM(metric_32615_B) metric_32615_deno,
       SUM(metric_32615_B * metric_32615_B) metric_32615_deno_square,
       SUM(metric_32615_A * metric_32615_B) metric_32615_sum_of_mul,
       SUM(metric_32615_A) / SUM(metric_32615_B) metric_32615_value,
       SUM(CASE
               WHEN metric_32615_A > 0
                    OR metric_32615_B > 0 THEN 1
               ELSE 0
           END) metric_32615_sample_size
FROM
  (SELECT uin uin,
          gray_id gray_id,
          SUM(metric_32613_A) metric_32613_A,
          SUM(metric_32613_B) metric_32613_B,
          SUM(metric_32615_A) metric_32615_A,
          SUM(metric_32615_B) metric_32615_B
   FROM
     (SELECT t_tab_exp.uin as uin,
             t_tab_exp.gray_id as gray_id,
             t_tab_exp.first_exposure_ds as first_exposure_ds,
             t_tab_action_23431.metric_32613_A as metric_32613_A,
             t_tab_action_23431.metric_32613_B as metric_32613_B,
             t_tab_action_23431.metric_32615_A as metric_32615_A,
             t_tab_action_23431.metric_32615_B as metric_32615_B,
             t_tab_action_23431.imp_date as imp_date FROM
        (SELECT t_tab_exp_103.user_id uin, t_tab_exp_103.exp_id gray_id, MIN(t_tab_exp_103.ds) first_exposure_ds
         FROM default.tab_exp_expose_aggr t_tab_exp_103
         WHERE t_tab_exp_103.exp_id IN (111222, 111223, 111224, 111225)
           AND ds>=20220301
           AND ds<20220314
           AND user_id IS NOT NULL
           AND user_id <> ''
           AND user_id <> '0'
         GROUP BY t_tab_exp_103.user_id, t_tab_exp_103.exp_id) t_tab_exp
      LEFT JOIN
        (SELECT t_tab_action_23431.user_id uin,
                t_tab_action_23431.ds imp_date,
                SUM(CAST(t_tab_action_23431.video_time AS DOUBLE)) metric_32613_A,
                CAST(COUNT(t_tab_action_23431.video_time) AS DOUBLE) metric_32613_B,
                SUM(CAST(t_tab_action_23431.click_time AS DOUBLE)) metric_32615_A,
                CAST(COUNT(t_tab_action_23431.click_time) AS DOUBLE) metric_32615_B
         FROM default.tab_user_behavior_aggr t_tab_action_23431
         WHERE ds>=20220301
           AND ds<20220314
           AND user_id IS NOT NULL
           AND user_id <> ''
           AND user_id <> '0'
         GROUP BY t_tab_action_23431.user_id,
                  t_tab_action_23431.ds) t_tab_action_23431 ON t_tab_exp.uin = t_tab_action_23431.uin)
   WHERE first_exposure_ds<=imp_date
   GROUP BY uin,
            gray_id) t_result
GROUP BY gray_id
