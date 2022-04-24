-- Databricks notebook source
-- 1、 toInt32函数报错
-- 2、 subtractDays函数报错
SELECT t_tab_action_past.gray_id gray_id,
       COUNT(DISTINCT t_tab_action_today.uin) metric_32166_nume,
       COUNT(DISTINCT t_tab_action_past.uin) metric_32166_deno,
       COUNT(DISTINCT t_tab_action_today.uin) / COUNT(DISTINCT t_tab_action_past.uin) metric_32166_value,
       COUNT(DISTINCT t_tab_action_past.uin) metric_32166_sample_size
FROM
  (SELECT t_tab_exp.uin uin,
          t_tab_exp.gray_id gray_id,
          t_tab_sub_action_past.ds ds
   FROM
     (SELECT t_tab_exp_103.user_id uin,
             t_tab_exp_103.exp_id gray_id,
             MIN(t_tab_exp_103.ds) first_exposure_ds
      FROM default.tab_exp_expose_aggr t_tab_exp_103
      WHERE t_tab_exp_103.exp_id IN (111222,
                                     111223,
                                     111224,
                                     111225)
        AND ds>=20220301
        AND ds<20220314
        AND user_id IS NOT NULL
        AND user_id <> ''
        AND user_id <> '0'
      GROUP BY t_tab_exp_103.user_id,
               t_tab_exp_103.exp_id) t_tab_exp
   JOIN
     (SELECT t_tab_group_uv.uin uin,
             t_tab_group_uv.ds ds
      FROM
        (SELECT t_tab_union_pv.uin uin,
                t_tab_union_pv.ds ds,
                SUM(t_tab_union_pv.metric_32166_A) metric_32166_A
         FROM
           (SELECT t_tab_action_23371.user_id uin,
                   t_tab_action_23371.ds ds,
                   SUM(CAST(t_tab_action_23371.video_time AS DOUBLE)) metric_32166_A
            FROM default.tab_user_behavior_aggr t_tab_action_23371
            WHERE ds>=20220301
              AND ds<20220314
              AND user_id IS NOT NULL
              AND user_id <> ''
              AND user_id <> '0'
            GROUP BY t_tab_action_23371.user_id,
                     t_tab_action_23371.ds) t_tab_union_pv
         GROUP BY t_tab_union_pv.uin,
                  t_tab_union_pv.ds) t_tab_group_uv
      WHERE (t_tab_group_uv.metric_32166_A > 0) ) t_tab_sub_action_past ON t_tab_exp.uin=t_tab_sub_action_past.uin
   AND t_tab_exp.first_exposure_ds=t_tab_sub_action_past.ds) t_tab_action_past
LEFT JOIN
  (SELECT t_tab_group_uv.uin uin,
          t_tab_group_uv.ds as ds_sub
   FROM
     (SELECT t_tab_union_pv.uin uin,
             t_tab_union_pv.ds ds,
             SUM(t_tab_union_pv.metric_32166_A) metric_32166_A
      FROM
        (SELECT t_tab_action_23371.user_id uin,
                t_tab_action_23371.ds ds,
                SUM(CAST(t_tab_action_23371.click_time AS DOUBLE)) metric_32166_A
         FROM default.tab_user_behavior_aggr t_tab_action_23371
         WHERE ds>=20220301
           AND ds<20220314
           AND user_id IS NOT NULL
           AND user_id <> ''
           AND user_id <> '0'
         GROUP BY t_tab_action_23371.user_id,
                  t_tab_action_23371.ds) t_tab_union_pv
      GROUP BY t_tab_union_pv.uin,
               t_tab_union_pv.ds) t_tab_group_uv
   WHERE (t_tab_group_uv.metric_32166_A > 0) ) t_tab_action_today ON t_tab_action_past.uin=t_tab_action_today.uin
AND t_tab_action_past.ds=t_tab_action_today.ds_sub
GROUP BY gray_id
