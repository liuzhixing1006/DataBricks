SELECT t_result.gray_id gray_id,
       SUM(metric_32228_A) metric_32228_nume,
       SUM(CASE
               WHEN metric_32228_B > 0 THEN 1
               ELSE 0
           END) metric_32228_deno,
       SUM(metric_32228_A * metric_32228_A) metric_32228_nume_square,
       SUM(metric_32228_A) / SUM(CASE
                                     WHEN metric_32228_B > 0 THEN 1
                                     ELSE 0
                                 END) metric_32228_value,
       SUM(CASE
               WHEN metric_32228_B > 0 THEN 1
               ELSE 0
           END) metric_32228_sample_size,
       SUM(metric_32701_A) metric_32701_nume,
       SUM(metric_32701_A * metric_32701_A) metric_32701_nume_square,
       SUM(metric_32701_B) metric_32701_deno,
       SUM(metric_32701_B * metric_32701_B) metric_32701_deno_square,
       SUM(metric_32701_A * metric_32701_B) metric_32701_sum_of_mul,
       SUM(metric_32701_A) / SUM(metric_32701_B) metric_32701_value,
       SUM(CASE
               WHEN metric_32701_A > 0
                    OR metric_32701_B > 0 THEN 1
               ELSE 0
           END) metric_32701_sample_size,
       SUM(metric_32702_A) metric_32702_nume,
       COUNT(uin) metric_32702_deno,
       SUM(metric_32702_A * metric_32702_A) metric_32702_nume_square,
       SUM(metric_32702_A) / COUNT(uin) metric_32702_value,
       COUNT(uin) metric_32702_sample_size,
       SUM(CASE
               WHEN metric_32703_A > 0 THEN 1
               ELSE 0
           END) metric_32703_nume,
       SUM(CASE
               WHEN metric_32703_B > 0 THEN 1
               ELSE 0
           END) metric_32703_deno,
       SUM(CASE
               WHEN metric_32703_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32703_B > 0 THEN 1
                          ELSE 0
                      END) metric_32703_value,
       SUM(CASE
               WHEN metric_32703_B > 0 THEN 1
               ELSE 0
           END) metric_32703_sample_size,
       SUM(metric_32704_A) metric_32704_nume,
       SUM(metric_32704_A * metric_32704_A) metric_32704_nume_square,
       SUM(metric_32704_B) metric_32704_deno,
       SUM(metric_32704_B * metric_32704_B) metric_32704_deno_square,
       SUM(metric_32704_A * metric_32704_B) metric_32704_sum_of_mul,
       SUM(metric_32704_A) / SUM(metric_32704_B) metric_32704_value,
       SUM(CASE
               WHEN metric_32704_A > 0
                    OR metric_32704_B > 0 THEN 1
               ELSE 0
           END) metric_32704_sample_size,
       SUM(metric_32705_A) metric_32705_nume,
       COUNT(uin) metric_32705_deno,
       SUM(metric_32705_A * metric_32705_A) metric_32705_nume_square,
       SUM(metric_32705_A) / COUNT(uin) metric_32705_value,
       COUNT(uin) metric_32705_sample_size,
       SUM(metric_32706_A) metric_32706_nume,
       SUM(CASE
               WHEN metric_32706_B > 0 THEN 1
               ELSE 0
           END) metric_32706_deno,
       SUM(metric_32706_A * metric_32706_A) metric_32706_nume_square,
       SUM(metric_32706_A) / SUM(CASE
                                     WHEN metric_32706_B > 0 THEN 1
                                     ELSE 0
                                 END) metric_32706_value,
       SUM(CASE
               WHEN metric_32706_B > 0 THEN 1
               ELSE 0
           END) metric_32706_sample_size,
       SUM(metric_32707_A) metric_32707_nume,
       SUM(CASE
               WHEN metric_32707_A > 0 THEN 1
               ELSE 0
           END) metric_32707_deno,
       SUM(metric_32707_A * metric_32707_A) metric_32707_nume_square,
       SUM(metric_32707_A) / SUM(CASE
                                     WHEN metric_32707_A > 0 THEN 1
                                     ELSE 0
                                 END) metric_32707_value,
       SUM(CASE
               WHEN metric_32707_A > 0 THEN 1
               ELSE 0
           END) metric_32707_sample_size,
       SUM(metric_32708_A / 1000) metric_32708_nume,
       SUM(CASE
               WHEN metric_32708_B > 0 THEN 1
               ELSE 0
           END) metric_32708_deno,
       SUM((metric_32708_A / 1000) *(metric_32708_A / 1000)) metric_32708_nume_square,
       SUM(metric_32708_A / 1000) / SUM(CASE
                                            WHEN metric_32708_B > 0 THEN 1
                                            ELSE 0
                                        END) metric_32708_value,
       SUM(CASE
               WHEN metric_32708_B > 0 THEN 1
               ELSE 0
           END) metric_32708_sample_size,
       SUM(metric_32709_A / 1000) metric_32709_nume,
       COUNT(uin) metric_32709_deno,
       SUM((metric_32709_A / 1000) *(metric_32709_A / 1000)) metric_32709_nume_square,
       SUM(metric_32709_A / 1000) / COUNT(uin) metric_32709_value,
       COUNT(uin) metric_32709_sample_size,
       SUM(metric_32710_A / 1000) metric_32710_nume,
       SUM(CASE
               WHEN metric_32710_B > 0 THEN 1
               ELSE 0
           END) metric_32710_deno,
       SUM((metric_32710_A / 1000) *(metric_32710_A / 1000)) metric_32710_nume_square,
       SUM(metric_32710_A / 1000) / SUM(CASE
                                            WHEN metric_32710_B > 0 THEN 1
                                            ELSE 0
                                        END) metric_32710_value,
       SUM(CASE
               WHEN metric_32710_B > 0 THEN 1
               ELSE 0
           END) metric_32710_sample_size,
       SUM(metric_32711_A / 1000) metric_32711_nume,
       SUM((metric_32711_A / 1000) *(metric_32711_A / 1000)) metric_32711_nume_square,
       SUM(metric_32711_B) metric_32711_deno,
       SUM(metric_32711_B * metric_32711_B) metric_32711_deno_square,
       SUM((metric_32711_A / 1000) * metric_32711_B) metric_32711_sum_of_mul,
       SUM(metric_32711_A / 1000) / SUM(metric_32711_B) metric_32711_value,
       SUM(CASE
               WHEN (metric_32711_A / 1000) > 0
                    OR metric_32711_B > 0 THEN 1
               ELSE 0
           END) metric_32711_sample_size,
       SUM(CASE
               WHEN metric_32713_A > 0 THEN 1
               ELSE 0
           END) metric_32713_nume,
       SUM(CASE
               WHEN metric_32713_B > 0 THEN 1
               ELSE 0
           END) metric_32713_deno,
       SUM(CASE
               WHEN metric_32713_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32713_B > 0 THEN 1
                          ELSE 0
                      END) metric_32713_value,
       SUM(CASE
               WHEN metric_32713_B > 0 THEN 1
               ELSE 0
           END) metric_32713_sample_size,
       SUM(metric_32715_A) metric_32715_nume,
       SUM(metric_32715_A * metric_32715_A) metric_32715_nume_square,
       SUM(metric_32715_B) metric_32715_deno,
       SUM(metric_32715_B * metric_32715_B) metric_32715_deno_square,
       SUM(metric_32715_A * metric_32715_B) metric_32715_sum_of_mul,
       SUM(metric_32715_A) / SUM(metric_32715_B) metric_32715_value,
       SUM(CASE
               WHEN metric_32715_A > 0
                    OR metric_32715_B > 0 THEN 1
               ELSE 0
           END) metric_32715_sample_size,
       SUM(metric_32718_A / 1000) metric_32718_nume,
       COUNT(uin) metric_32718_deno,
       SUM((metric_32718_A / 1000) *(metric_32718_A / 1000)) metric_32718_nume_square,
       SUM(metric_32718_A / 1000) / COUNT(uin) metric_32718_value,
       COUNT(uin) metric_32718_sample_size,
       SUM(metric_32719_A) metric_32719_nume,
       SUM(metric_32719_A * metric_32719_A) metric_32719_nume_square,
       SUM(metric_32719_B) metric_32719_deno,
       SUM(metric_32719_B * metric_32719_B) metric_32719_deno_square,
       SUM(metric_32719_A * metric_32719_B) metric_32719_sum_of_mul,
       SUM(metric_32719_A) / SUM(metric_32719_B) metric_32719_value,
       SUM(CASE
               WHEN metric_32719_A > 0
                    OR metric_32719_B > 0 THEN 1
               ELSE 0
           END) metric_32719_sample_size,
       SUM(CASE
               WHEN metric_32720_A > 0 THEN 1
               ELSE 0
           END) metric_32720_nume,
       SUM(CASE
               WHEN metric_32720_B > 0 THEN 1
               ELSE 0
           END) metric_32720_deno,
       SUM(CASE
               WHEN metric_32720_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32720_B > 0 THEN 1
                          ELSE 0
                      END) metric_32720_value,
       SUM(CASE
               WHEN metric_32720_B > 0 THEN 1
               ELSE 0
           END) metric_32720_sample_size,
       SUM(metric_32722_A) metric_32722_nume,
       SUM(metric_32722_A * metric_32722_A) metric_32722_nume_square,
       SUM(metric_32722_B) metric_32722_deno,
       SUM(metric_32722_B * metric_32722_B) metric_32722_deno_square,
       SUM(metric_32722_A * metric_32722_B) metric_32722_sum_of_mul,
       SUM(metric_32722_A) / SUM(metric_32722_B) metric_32722_value,
       SUM(CASE
               WHEN metric_32722_A > 0
                    OR metric_32722_B > 0 THEN 1
               ELSE 0
           END) metric_32722_sample_size,
       SUM(metric_32723_A) metric_32723_nume,
       SUM(metric_32723_A * metric_32723_A) metric_32723_nume_square,
       SUM(metric_32723_B) metric_32723_deno,
       SUM(metric_32723_B * metric_32723_B) metric_32723_deno_square,
       SUM(metric_32723_A * metric_32723_B) metric_32723_sum_of_mul,
       SUM(metric_32723_A) / SUM(metric_32723_B) metric_32723_value,
       SUM(CASE
               WHEN metric_32723_A > 0
                    OR metric_32723_B > 0 THEN 1
               ELSE 0
           END) metric_32723_sample_size,
       SUM(metric_32724_A) metric_32724_nume,
       COUNT(uin) metric_32724_deno,
       SUM(metric_32724_A * metric_32724_A) metric_32724_nume_square,
       SUM(metric_32724_A) / COUNT(uin) metric_32724_value,
       COUNT(uin) metric_32724_sample_size,
       SUM(metric_32752_A) metric_32752_nume,
       COUNT(uin) metric_32752_deno,
       SUM(metric_32752_A * metric_32752_A) metric_32752_nume_square,
       SUM(metric_32752_A) / COUNT(uin) metric_32752_value,
       COUNT(uin) metric_32752_sample_size,
       SUM(metric_32753_A) metric_32753_nume,
       SUM(metric_32753_A * metric_32753_A) metric_32753_nume_square,
       SUM(metric_32753_B) metric_32753_deno,
       SUM(metric_32753_B * metric_32753_B) metric_32753_deno_square,
       SUM(metric_32753_A * metric_32753_B) metric_32753_sum_of_mul,
       SUM(metric_32753_A) / SUM(metric_32753_B) metric_32753_value,
       SUM(CASE
               WHEN metric_32753_A > 0
                    OR metric_32753_B > 0 THEN 1
               ELSE 0
           END) metric_32753_sample_size,
       SUM(CASE
               WHEN metric_32754_A > 0 THEN 1
               ELSE 0
           END) metric_32754_nume,
       SUM(CASE
               WHEN metric_32754_B > 0 THEN 1
               ELSE 0
           END) metric_32754_deno,
       SUM(CASE
               WHEN metric_32754_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32754_B > 0 THEN 1
                          ELSE 0
                      END) metric_32754_value,
       SUM(CASE
               WHEN metric_32754_B > 0 THEN 1
               ELSE 0
           END) metric_32754_sample_size,
       SUM(metric_32755_A) metric_32755_nume,
       COUNT(uin) metric_32755_deno,
       SUM(metric_32755_A * metric_32755_A) metric_32755_nume_square,
       SUM(metric_32755_A) / COUNT(uin) metric_32755_value,
       COUNT(uin) metric_32755_sample_size,
       SUM(metric_32756_A) metric_32756_nume,
       SUM(metric_32756_A * metric_32756_A) metric_32756_nume_square,
       SUM(metric_32756_B) metric_32756_deno,
       SUM(metric_32756_B * metric_32756_B) metric_32756_deno_square,
       SUM(metric_32756_A * metric_32756_B) metric_32756_sum_of_mul,
       SUM(metric_32756_A) / SUM(metric_32756_B) metric_32756_value,
       SUM(CASE
               WHEN metric_32756_A > 0
                    OR metric_32756_B > 0 THEN 1
               ELSE 0
           END) metric_32756_sample_size,
       SUM(CASE
               WHEN metric_32757_A > 0 THEN 1
               ELSE 0
           END) metric_32757_nume,
       SUM(CASE
               WHEN metric_32757_A > 0 THEN 1
               ELSE 0
           END) metric_32757_deno,
       SUM(CASE
               WHEN metric_32757_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32757_A > 0 THEN 1
                          ELSE 0
                      END) metric_32757_value,
       SUM(CASE
               WHEN metric_32757_A > 0 THEN 1
               ELSE 0
           END) metric_32757_sample_size,
       SUM(metric_32758_A) metric_32758_nume,
       SUM(metric_32758_A * metric_32758_A) metric_32758_nume_square,
       SUM(metric_32758_B) metric_32758_deno,
       SUM(metric_32758_B * metric_32758_B) metric_32758_deno_square,
       SUM(metric_32758_A * metric_32758_B) metric_32758_sum_of_mul,
       SUM(metric_32758_A) / SUM(metric_32758_B) metric_32758_value,
       SUM(CASE
               WHEN metric_32758_A > 0
                    OR metric_32758_B > 0 THEN 1
               ELSE 0
           END) metric_32758_sample_size,
       SUM(metric_32759_A) metric_32759_nume,
       COUNT(uin) metric_32759_deno,
       SUM(metric_32759_A * metric_32759_A) metric_32759_nume_square,
       SUM(metric_32759_A) / COUNT(uin) metric_32759_value,
       COUNT(uin) metric_32759_sample_size,
       SUM(metric_32760_A) metric_32760_nume,
       SUM(metric_32760_A * metric_32760_A) metric_32760_nume_square,
       SUM(metric_32760_B) metric_32760_deno,
       SUM(metric_32760_B * metric_32760_B) metric_32760_deno_square,
       SUM(metric_32760_A * metric_32760_B) metric_32760_sum_of_mul,
       SUM(metric_32760_A) / SUM(metric_32760_B) metric_32760_value,
       SUM(CASE
               WHEN metric_32760_A > 0
                    OR metric_32760_B > 0 THEN 1
               ELSE 0
           END) metric_32760_sample_size,
       SUM(CASE
               WHEN metric_32761_A > 0 THEN 1
               ELSE 0
           END) metric_32761_nume,
       SUM(CASE
               WHEN metric_32761_B > 0 THEN 1
               ELSE 0
           END) metric_32761_deno,
       SUM(CASE
               WHEN metric_32761_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32761_B > 0 THEN 1
                          ELSE 0
                      END) metric_32761_value,
       SUM(CASE
               WHEN metric_32761_B > 0 THEN 1
               ELSE 0
           END) metric_32761_sample_size,
       SUM(CASE
               WHEN metric_32762_A > 0 THEN 1
               ELSE 0
           END) metric_32762_nume,
       SUM(CASE
               WHEN metric_32762_B > 0 THEN 1
               ELSE 0
           END) metric_32762_deno,
       SUM(CASE
               WHEN metric_32762_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32762_B > 0 THEN 1
                          ELSE 0
                      END) metric_32762_value,
       SUM(CASE
               WHEN metric_32762_B > 0 THEN 1
               ELSE 0
           END) metric_32762_sample_size,
       SUM(metric_32763_A) metric_32763_nume,
       COUNT(uin) metric_32763_deno,
       SUM(metric_32763_A * metric_32763_A) metric_32763_nume_square,
       SUM(metric_32763_A) / COUNT(uin) metric_32763_value,
       COUNT(uin) metric_32763_sample_size,
       SUM(metric_32764_A) metric_32764_nume,
       SUM(metric_32764_A * metric_32764_A) metric_32764_nume_square,
       SUM(metric_32764_B) metric_32764_deno,
       SUM(metric_32764_B * metric_32764_B) metric_32764_deno_square,
       SUM(metric_32764_A * metric_32764_B) metric_32764_sum_of_mul,
       SUM(metric_32764_A) / SUM(metric_32764_B) metric_32764_value,
       SUM(CASE
               WHEN metric_32764_A > 0
                    OR metric_32764_B > 0 THEN 1
               ELSE 0
           END) metric_32764_sample_size,
       SUM(CASE
               WHEN metric_32765_A > 0 THEN 1
               ELSE 0
           END) metric_32765_nume,
       SUM(CASE
               WHEN metric_32765_B > 0 THEN 1
               ELSE 0
           END) metric_32765_deno,
       SUM(CASE
               WHEN metric_32765_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32765_B > 0 THEN 1
                          ELSE 0
                      END) metric_32765_value,
       SUM(CASE
               WHEN metric_32765_B > 0 THEN 1
               ELSE 0
           END) metric_32765_sample_size,
       SUM(metric_32766_A) metric_32766_nume,
       COUNT(uin) metric_32766_deno,
       SUM(metric_32766_A * metric_32766_A) metric_32766_nume_square,
       SUM(metric_32766_A) / COUNT(uin) metric_32766_value,
       COUNT(uin) metric_32766_sample_size,
       SUM(metric_32767_A) metric_32767_nume,
       COUNT(uin) metric_32767_deno,
       SUM(metric_32767_A * metric_32767_A) metric_32767_nume_square,
       SUM(metric_32767_A) / COUNT(uin) metric_32767_value,
       COUNT(uin) metric_32767_sample_size,
       SUM(metric_32768_A + metric_32768_B + metric_32768_D + metric_32768_E) metric_32768_nume,
       SUM((metric_32768_A + metric_32768_B + metric_32768_D + metric_32768_E) *(metric_32768_A + metric_32768_B + metric_32768_D + metric_32768_E)) metric_32768_nume_square,
       SUM(metric_32768_C) metric_32768_deno,
       SUM(metric_32768_C * metric_32768_C) metric_32768_deno_square,
       SUM((metric_32768_A + metric_32768_B + metric_32768_D + metric_32768_E) * metric_32768_C) metric_32768_sum_of_mul,
       SUM(metric_32768_A + metric_32768_B + metric_32768_D + metric_32768_E) / SUM(metric_32768_C) metric_32768_value,
       SUM(CASE
               WHEN (metric_32768_A + metric_32768_B + metric_32768_D + metric_32768_E) > 0
                    OR metric_32768_C > 0 THEN 1
               ELSE 0
           END) metric_32768_sample_size,
       SUM(metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D) metric_32769_nume,
       SUM(CASE
               WHEN metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D > 0 THEN 1
               ELSE 0
           END) metric_32769_deno,
       SUM((metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D) *(metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D)) metric_32769_nume_square,
       SUM(metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D) / SUM(CASE
                                                                                        WHEN metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D > 0 THEN 1
                                                                                        ELSE 0
                                                                                    END) metric_32769_value,
       SUM(CASE
               WHEN metric_32769_A + metric_32769_B + metric_32769_C + metric_32769_D > 0 THEN 1
               ELSE 0
           END) metric_32769_sample_size,
       SUM(CASE
               WHEN (metric_32770_A + metric_32770_B + metric_32770_C + metric_32770_D) > 0 THEN 1
               ELSE 0
           END) metric_32770_nume,
       SUM(CASE
               WHEN metric_32770_E > 0 THEN 1
               ELSE 0
           END) metric_32770_deno,
       SUM(CASE
               WHEN (metric_32770_A + metric_32770_B + metric_32770_C + metric_32770_D) > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32770_E > 0 THEN 1
                          ELSE 0
                      END) metric_32770_value,
       SUM(CASE
               WHEN metric_32770_E > 0 THEN 1
               ELSE 0
           END) metric_32770_sample_size,
       SUM(CASE
               WHEN metric_32771_A > 0 THEN 1
               ELSE 0
           END) metric_32771_nume,
       COUNT(uin) metric_32771_deno,
       SUM(CASE
               WHEN metric_32771_A > 0 THEN 1
               ELSE 0
           END) / COUNT(uin) metric_32771_value,
       COUNT(uin) metric_32771_sample_size,
       SUM(CASE
               WHEN metric_32772_A > 0 THEN 1
               ELSE 0
           END) metric_32772_nume,
       SUM(CASE
               WHEN metric_32772_B > 0 THEN 1
               ELSE 0
           END) metric_32772_deno,
       SUM(CASE
               WHEN metric_32772_A > 0 THEN 1
               ELSE 0
           END) / SUM(CASE
                          WHEN metric_32772_B > 0 THEN 1
                          ELSE 0
                      END) metric_32772_value,
       SUM(CASE
               WHEN metric_32772_B > 0 THEN 1
               ELSE 0
           END) metric_32772_sample_size,
       SUM(metric_32773_A) metric_32773_nume,
       COUNT(uin) metric_32773_deno,
       SUM(metric_32773_A * metric_32773_A) metric_32773_nume_square,
       SUM(metric_32773_A) / COUNT(uin) metric_32773_value,
       COUNT(uin) metric_32773_sample_size,
       SUM(metric_32774_A) metric_32774_nume,
       SUM(metric_32774_A * metric_32774_A) metric_32774_nume_square,
       SUM(metric_32774_B) metric_32774_deno,
       SUM(metric_32774_B * metric_32774_B) metric_32774_deno_square,
       SUM(metric_32774_A * metric_32774_B) metric_32774_sum_of_mul,
       SUM(metric_32774_A) / SUM(metric_32774_B) metric_32774_value,
       SUM(CASE
               WHEN metric_32774_A > 0
                    OR metric_32774_B > 0 THEN 1
               ELSE 0
           END) metric_32774_sample_size,
       SUM(metric_32775_A) metric_32775_nume,
       SUM(metric_32775_A * metric_32775_A) metric_32775_nume_square,
       SUM(metric_32775_B) metric_32775_deno,
       SUM(metric_32775_B * metric_32775_B) metric_32775_deno_square,
       SUM(metric_32775_A * metric_32775_B) metric_32775_sum_of_mul,
       SUM(metric_32775_A) / SUM(metric_32775_B) metric_32775_value,
       SUM(CASE
               WHEN metric_32775_A > 0
                    OR metric_32775_B > 0 THEN 1
               ELSE 0
           END) metric_32775_sample_size,
       SUM(metric_32776_A) metric_32776_nume,
       SUM(CASE
               WHEN metric_32776_B > 0 THEN 1
               ELSE 0
           END) metric_32776_deno,
       SUM(metric_32776_A * metric_32776_A) metric_32776_nume_square,
       SUM(metric_32776_A) / SUM(CASE
                                     WHEN metric_32776_B > 0 THEN 1
                                     ELSE 0
                                 END) metric_32776_value,
       SUM(CASE
               WHEN metric_32776_B > 0 THEN 1
               ELSE 0
           END) metric_32776_sample_size
FROM
  (SELECT uin uin,
          gray_id gray_id,
          SUM(metric_32228_A) metric_32228_A,
          SUM(metric_32228_B) metric_32228_B,
          SUM(metric_32701_A) metric_32701_A,
          SUM(metric_32701_B) metric_32701_B,
          SUM(metric_32702_A) metric_32702_A,
          SUM(metric_32703_A) metric_32703_A,
          SUM(metric_32703_B) metric_32703_B,
          SUM(metric_32704_A) metric_32704_A,
          SUM(metric_32704_B) metric_32704_B,
          SUM(metric_32705_A) metric_32705_A,
          SUM(metric_32706_A) metric_32706_A,
          SUM(metric_32706_B) metric_32706_B,
          SUM(metric_32707_A) metric_32707_A,
          SUM(metric_32708_A) metric_32708_A,
          SUM(metric_32708_B) metric_32708_B,
          SUM(metric_32709_A) metric_32709_A,
          SUM(metric_32710_A) metric_32710_A,
          SUM(metric_32710_B) metric_32710_B,
          SUM(metric_32711_A) metric_32711_A,
          SUM(metric_32711_B) metric_32711_B,
          SUM(metric_32713_A) metric_32713_A,
          SUM(metric_32713_B) metric_32713_B,
          SUM(metric_32715_A) metric_32715_A,
          SUM(metric_32715_B) metric_32715_B,
          SUM(metric_32718_A) metric_32718_A,
          SUM(metric_32719_A) metric_32719_A,
          SUM(metric_32719_B) metric_32719_B,
          SUM(metric_32720_A) metric_32720_A,
          SUM(metric_32720_B) metric_32720_B,
          SUM(metric_32722_A) metric_32722_A,
          SUM(metric_32722_B) metric_32722_B,
          SUM(metric_32723_A) metric_32723_A,
          SUM(metric_32723_B) metric_32723_B,
          SUM(metric_32724_A) metric_32724_A,
          SUM(metric_32752_A) metric_32752_A,
          SUM(metric_32753_A) metric_32753_A,
          SUM(metric_32753_B) metric_32753_B,
          SUM(metric_32754_A) metric_32754_A,
          SUM(metric_32754_B) metric_32754_B,
          SUM(metric_32755_A) metric_32755_A,
          SUM(metric_32756_A) metric_32756_A,
          SUM(metric_32756_B) metric_32756_B,
          SUM(metric_32757_A) metric_32757_A,
          SUM(metric_32757_B) metric_32757_B,
          SUM(metric_32758_A) metric_32758_A,
          SUM(metric_32758_B) metric_32758_B,
          SUM(metric_32759_A) metric_32759_A,
          SUM(metric_32760_A) metric_32760_A,
          SUM(metric_32760_B) metric_32760_B,
          SUM(metric_32761_A) metric_32761_A,
          SUM(metric_32761_B) metric_32761_B,
          SUM(metric_32762_A) metric_32762_A,
          SUM(metric_32762_B) metric_32762_B,
          SUM(metric_32763_A) metric_32763_A,
          SUM(metric_32764_A) metric_32764_A,
          SUM(metric_32764_B) metric_32764_B,
          SUM(metric_32765_A) metric_32765_A,
          SUM(metric_32765_B) metric_32765_B,
          SUM(metric_32766_A) metric_32766_A,
          SUM(metric_32767_A) metric_32767_A,
          SUM(metric_32768_A) metric_32768_A,
          SUM(metric_32768_B) metric_32768_B,
          SUM(metric_32768_C) metric_32768_C,
          SUM(metric_32768_D) metric_32768_D,
          SUM(metric_32768_E) metric_32768_E,
          SUM(metric_32769_A) metric_32769_A,
          SUM(metric_32769_B) metric_32769_B,
          SUM(metric_32769_C) metric_32769_C,
          SUM(metric_32769_D) metric_32769_D,
          SUM(metric_32770_A) metric_32770_A,
          SUM(metric_32770_B) metric_32770_B,
          SUM(metric_32770_C) metric_32770_C,
          SUM(metric_32770_D) metric_32770_D,
          SUM(metric_32770_E) metric_32770_E,
          SUM(metric_32771_A) metric_32771_A,
          SUM(metric_32771_B) metric_32771_B,
          SUM(metric_32772_A) metric_32772_A,
          SUM(metric_32772_B) metric_32772_B,
          SUM(metric_32773_A) metric_32773_A,
          SUM(metric_32774_A) metric_32774_A,
          SUM(metric_32774_B) metric_32774_B,
          SUM(metric_32775_A) metric_32775_A,
          SUM(metric_32775_B) metric_32775_B,
          SUM(metric_32776_A) metric_32776_A,
          SUM(metric_32776_B) metric_32776_B
   FROM
     (SELECT t_tab_exp.uin uin,
             t_tab_exp.gray_id gray_id,
             t_tab_exp.first_exposure_ds first_exposure_ds,
             t_tab_action_24268.ds ds,
             t_tab_action_24268.metric_32228_A metric_32228_A,
             t_tab_action_24268.metric_32228_B metric_32228_B,
             t_tab_action_24268.metric_32701_A metric_32701_A,
             t_tab_action_24268.metric_32701_B metric_32701_B,
             t_tab_action_24268.metric_32702_A metric_32702_A,
             t_tab_action_24268.metric_32703_A metric_32703_A,
             t_tab_action_24268.metric_32703_B metric_32703_B,
             t_tab_action_24268.metric_32704_A metric_32704_A,
             t_tab_action_24268.metric_32704_B metric_32704_B,
             t_tab_action_24268.metric_32705_A metric_32705_A,
             t_tab_action_24268.metric_32706_A metric_32706_A,
             t_tab_action_24268.metric_32706_B metric_32706_B,
             t_tab_action_24268.metric_32707_A metric_32707_A,
             t_tab_action_24268.metric_32708_A metric_32708_A,
             t_tab_action_24268.metric_32708_B metric_32708_B,
             t_tab_action_24268.metric_32709_A metric_32709_A,
             t_tab_action_24268.metric_32710_A metric_32710_A,
             t_tab_action_24268.metric_32710_B metric_32710_B,
             t_tab_action_24268.metric_32711_A metric_32711_A,
             t_tab_action_24268.metric_32711_B metric_32711_B,
             t_tab_action_24268.metric_32713_A metric_32713_A,
             t_tab_action_24268.metric_32713_B metric_32713_B,
             t_tab_action_24268.metric_32715_A metric_32715_A,
             t_tab_action_24268.metric_32715_B metric_32715_B,
             t_tab_action_24268.metric_32718_A metric_32718_A,
             t_tab_action_24268.metric_32719_A metric_32719_A,
             t_tab_action_24268.metric_32719_B metric_32719_B,
             t_tab_action_24268.metric_32720_A metric_32720_A,
             t_tab_action_24268.metric_32720_B metric_32720_B,
             t_tab_action_24268.metric_32722_A metric_32722_A,
             t_tab_action_24268.metric_32722_B metric_32722_B,
             t_tab_action_24268.metric_32723_A metric_32723_A,
             t_tab_action_24268.metric_32723_B metric_32723_B,
             t_tab_action_24268.metric_32724_A metric_32724_A,
             t_tab_action_24268.metric_32752_A metric_32752_A,
             t_tab_action_24268.metric_32753_A metric_32753_A,
             t_tab_action_24268.metric_32753_B metric_32753_B,
             t_tab_action_24268.metric_32754_A metric_32754_A,
             t_tab_action_24268.metric_32754_B metric_32754_B,
             t_tab_action_24268.metric_32755_A metric_32755_A,
             t_tab_action_24268.metric_32756_A metric_32756_A,
             t_tab_action_24268.metric_32756_B metric_32756_B,
             t_tab_action_24268.metric_32757_A metric_32757_A,
             t_tab_action_24268.metric_32757_B metric_32757_B,
             t_tab_action_24268.metric_32758_A metric_32758_A,
             t_tab_action_24268.metric_32758_B metric_32758_B,
             t_tab_action_24268.metric_32759_A metric_32759_A,
             t_tab_action_24268.metric_32760_A metric_32760_A,
             t_tab_action_24268.metric_32760_B metric_32760_B,
             t_tab_action_24268.metric_32761_A metric_32761_A,
             t_tab_action_24268.metric_32761_B metric_32761_B,
             t_tab_action_24268.metric_32762_A metric_32762_A,
             t_tab_action_24268.metric_32762_B metric_32762_B,
             t_tab_action_24268.metric_32763_A metric_32763_A,
             t_tab_action_24268.metric_32764_A metric_32764_A,
             t_tab_action_24268.metric_32764_B metric_32764_B,
             t_tab_action_24268.metric_32765_A metric_32765_A,
             t_tab_action_24268.metric_32765_B metric_32765_B,
             t_tab_action_24268.metric_32766_A metric_32766_A,
             t_tab_action_24268.metric_32767_A metric_32767_A,
             t_tab_action_24268.metric_32768_A metric_32768_A,
             t_tab_action_24268.metric_32768_B metric_32768_B,
             t_tab_action_24268.metric_32768_C metric_32768_C,
             t_tab_action_24268.metric_32768_D metric_32768_D,
             t_tab_action_24268.metric_32768_E metric_32768_E,
             t_tab_action_24268.metric_32769_A metric_32769_A,
             t_tab_action_24268.metric_32769_B metric_32769_B,
             t_tab_action_24268.metric_32769_C metric_32769_C,
             t_tab_action_24268.metric_32769_D metric_32769_D,
             t_tab_action_24268.metric_32770_A metric_32770_A,
             t_tab_action_24268.metric_32770_B metric_32770_B,
             t_tab_action_24268.metric_32770_C metric_32770_C,
             t_tab_action_24268.metric_32770_D metric_32770_D,
             t_tab_action_24268.metric_32770_E metric_32770_E,
             t_tab_action_24268.metric_32771_A metric_32771_A,
             t_tab_action_24268.metric_32771_B metric_32771_B,
             t_tab_action_24268.metric_32772_A metric_32772_A,
             t_tab_action_24268.metric_32772_B metric_32772_B,
             t_tab_action_24268.metric_32773_A metric_32773_A,
             t_tab_action_24268.metric_32774_A metric_32774_A,
             t_tab_action_24268.metric_32774_B metric_32774_B,
             t_tab_action_24268.metric_32775_A metric_32775_A,
             t_tab_action_24268.metric_32775_B metric_32775_B,
             t_tab_action_24268.metric_32776_A metric_32776_A,
             t_tab_action_24268.metric_32776_B metric_32776_B FROM
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
        (SELECT t_tab_action_24268.user_id uin,
                t_tab_action_24268.ds ds,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32228_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32228_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32701_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32701_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32702_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32703_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32703_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32704_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32704_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32705_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32706_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32706_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32707_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32708_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32708_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32709_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32710_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32710_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32711_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32711_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32713_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32713_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32715_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32715_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32718_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32719_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32719_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32720_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32720_B,
                sum(if(watch_time >= 1, watch_time, 0)) metric_32722_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32722_B,
                sum(if (watch_time / 1000 > 0
                        and watch_time / 1000 < 5, watch_time, 0)) metric_32723_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32723_B,
                count(distinct ds) metric_32724_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32752_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32753_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32753_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32754_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32754_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32755_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32756_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32756_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32757_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32757_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32758_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32758_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32759_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32760_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32760_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32761_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32761_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32762_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32762_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32763_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32764_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32764_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32765_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32765_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32766_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32767_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32768_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32768_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32768_C,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32768_D,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32768_E,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32769_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32769_B,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32769_C,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32769_D,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32770_A,
                SUM(CAST(t_tab_action_24268.video_time AS DOUBLE)) metric_32770_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32770_C,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32770_D,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32770_E,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32771_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32771_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32772_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32772_B,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32773_A,
                SUM(CAST(t_tab_action_24268.click_time AS DOUBLE)) metric_32774_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32774_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32775_A,
                sum(if (video_time != 1, watch_time, 0)) metric_32775_B,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32776_A,
                SUM(CAST(t_tab_action_24268.watch_time AS DOUBLE)) metric_32776_B
         FROM default.tab_user_behavior_aggr t_tab_action_24268
         WHERE ds>=20220301
           AND ds<20220314
           AND user_id IS NOT NULL
           AND user_id <> ''
           AND user_id <> '0'
         GROUP BY t_tab_action_24268.user_id,
                  t_tab_action_24268.ds) t_tab_action_24268 ON t_tab_exp.uin = t_tab_action_24268.uin)
   WHERE first_exposure_ds<=ds
   GROUP BY uin,
            gray_id) t_result
GROUP BY gray_id
