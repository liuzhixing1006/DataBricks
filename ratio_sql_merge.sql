-- Databricks notebook source
SELECT t_result.gray_id gray_id,
       SUM(metric_32605_A / 100) metric_32605_nume,
       SUM((metric_32605_A / 100) *(metric_32605_A / 100)) metric_32605_nume_square,
       SUM(metric_32605_B) metric_32605_deno,
       SUM(metric_32605_B * metric_32605_B) metric_32605_deno_square,
       SUM((metric_32605_A / 100) * metric_32605_B) metric_32605_sum_of_mul,
       SUM(metric_32605_A / 100) / SUM(metric_32605_B) metric_32605_value,
       SUM(CASE
               WHEN (metric_32605_A / 100) > 0
                    OR metric_32605_B > 0 THEN 1
               ELSE 0
           END) metric_32605_sample_size,
       SUM(metric_32606_A / 100) metric_32606_nume,
       SUM((metric_32606_A / 100) *(metric_32606_A / 100)) metric_32606_nume_square,
       SUM(metric_32606_B) metric_32606_deno,
       SUM(metric_32606_B * metric_32606_B) metric_32606_deno_square,
       SUM((metric_32606_A / 100) * metric_32606_B) metric_32606_sum_of_mul,
       SUM(metric_32606_A / 100) / SUM(metric_32606_B) metric_32606_value,
       SUM(CASE
               WHEN (metric_32606_A / 100) > 0
                    OR metric_32606_B > 0 THEN 1
               ELSE 0
           END) metric_32606_sample_size,
       SUM(metric_32607_A / 100) metric_32607_nume,
       SUM((metric_32607_A / 100) *(metric_32607_A / 100)) metric_32607_nume_square,
       SUM(metric_32607_B) metric_32607_deno,
       SUM(metric_32607_B * metric_32607_B) metric_32607_deno_square,
       SUM((metric_32607_A / 100) * metric_32607_B) metric_32607_sum_of_mul,
       SUM(metric_32607_A / 100) / SUM(metric_32607_B) metric_32607_value,
       SUM(CASE
               WHEN (metric_32607_A / 100) > 0
                    OR metric_32607_B > 0 THEN 1
               ELSE 0
           END) metric_32607_sample_size
FROM
  (SELECT uin uin,
          gray_id gray_id,
          SUM(metric_32605_A) metric_32605_A,
          SUM(metric_32605_B) metric_32605_B,
          SUM(metric_32606_A) metric_32606_A,
          SUM(metric_32606_B) metric_32606_B,
          SUM(metric_32607_A) metric_32607_A,
          SUM(metric_32607_B) metric_32607_B
   FROM
     (SELECT t_tab_exp.uin as uin,
             t_tab_exp.gray_id as gray_id,
             t_tab_exp.first_exposure_ds as first_exposure_ds,
             t_tab_action_23431.metric_32605_A as metric_32605_A,
             t_tab_action_23431.metric_32605_B as metric_32605_B,
             t_tab_action_23431.metric_32606_A as metric_32606_A,
             t_tab_action_23431.metric_32606_B as metric_32606_B,
             t_tab_action_23431.metric_32607_A as metric_32607_A,
             t_tab_action_23431.metric_32607_B as metric_32607_B,
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
                SUM(CAST(t_tab_action_23431.video_time AS DOUBLE)) metric_32605_A,
                CAST(COUNT(t_tab_action_23431.video_time) AS DOUBLE) metric_32605_B,
                SUM(CAST(t_tab_action_23431.click_time AS DOUBLE)) metric_32606_A,
                CAST(COUNT(t_tab_action_23431.click_time) AS DOUBLE) metric_32606_B,
                SUM(CAST(t_tab_action_23431.watch_time AS DOUBLE)) metric_32607_A,
                CAST(COUNT(t_tab_action_23431.watch_time) AS DOUBLE) metric_32607_B
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
