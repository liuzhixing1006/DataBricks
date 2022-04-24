-- Databricks notebook source
SELECT t_result.gray_id gray_id,
       SUM(CASE
               WHEN metric_33482_A > 0 THEN 1
               ELSE 0
           END) metric_33482_nume,
       COUNT(t_result.uin) metric_33482_deno,
       SUM(CASE
               WHEN metric_33482_A > 0 THEN 1
               ELSE 0
           END) / COUNT(t_result.uin) metric_33482_value,
       COUNT(t_result.uin) metric_33482_sample_size
FROM
  (SELECT uin uin,
          gray_id gray_id,
          SUM(metric_33482_A) metric_33482_A
   FROM
     (SELECT t_tab_exp.uin as uin,
             t_tab_exp.gray_id as gray_id,
             t_tab_exp.first_exposure_ds as first_exposure_ds,
             t_tab_action_23431.imp_date as imp_date,
             t_tab_action_23431.metric_33482_A as metric_33482_A FROM
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
                CAST(COUNT(user_id) AS DOUBLE) metric_33482_A
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
