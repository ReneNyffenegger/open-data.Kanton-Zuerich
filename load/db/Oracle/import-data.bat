del /f *.bad
del /f *.log

@sqlldr kt_zh/kt_zh@ora18                                         ^
  data=../../../dataset/adressen-gis-zh/ARV_ADRESSEN_P-sorted.csv ^
  table                  = arv_adressen_p                         ^
  external_table         = not_used                               ^
  field_names            = first_ignore                           ^
  characterset           = utf8                                   ^
  errors                 = 0                                      ^
  silent                 = header,feedback                        ^
  optionally_enclosed_by = '\"'

@echo(  297772 Rows expected
