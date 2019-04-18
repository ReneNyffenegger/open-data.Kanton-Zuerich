#
#  It seems as though *_F stands for filled and *_L for line.
#

# kt_zh_data_root = paste0(Sys.getenv('github_root'),  '/open-data.Kanton-Zuerich/')
kt_zh_data_root = paste0(Sys.getenv('github_root'),  'open-data.Kanton-Zuerich/')

x11()
library(rgdal)

par(mar=c(0, 0, 0, 0))

UP_KANTON_F                                <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                               ), 'UP_KANTON_F'                   )
UP_GEMEINDEN_F                             <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                               ), 'UP_GEMEINDEN_F'                )
UP_GEMEINDEN_L                             <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                               ), 'UP_GEMEINDEN_L'                )
UP_GEMEINDEN_SEEN_F                        <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                               ), 'UP_GEMEINDEN_SEEN_F'           )

GEN_A1_GEMEINDEN_F                         <- readOGR(paste0(kt_zh_data_root, 'dataset/generalisierte-gemeindegrenzen'                ), 'GEN_A1_GEMEINDEN_F'            )

GEN_A4_GEMEINDEN_L                         <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'          ), 'GEN_A4_GEMEINDEN_L'            )
GEN_A4_GEMEINDEN_SEEN_F                    <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'          ), 'GEN_A4_GEMEINDEN_SEEN_F'       )
GEN_A4_KANTONSMASKE_F                      <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'          ), 'GEN_A4_KANTONSMASKE_F'         )
GEN_A4_GEMEINDEBESCHRIFTUNG_A              <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'          ), 'GEN_A4_GEMEINDEBESCHRIFTUNG_A' )

kt_zh_WB_SEEN_F_ganzer_kanton              <- readOGR(paste0(kt_zh_data_root, 'dataset/offentliche-oberflachengewasser/Ganzer-Kanton' ), 'WB_SEEN_F'                     )
kt_zh_WB_SEEN_L_ganzer_kanton              <- readOGR(paste0(kt_zh_data_root, 'dataset/offentliche-oberflachengewasser/Ganzer-Kanton' ), 'WB_SEEN_L'                     )
kt_zh_WB_FLIESSGEWAESSER_L_M_ganzer_kanton <- readOGR(paste0(kt_zh_data_root, 'dataset/offentliche-oberflachengewasser/Ganzer-Kanton' ), 'WB_FLIESSGEWAESSER_L_M'        )

kt_zh_WB_SEEN_F_stadt_zuerich              <- readOGR(paste0(kt_zh_data_root, 'dataset/offentliche-oberflachengewasser/Stadt-Zuerich' ), 'WB_SEEN_F'                     )
kt_zh_WB_SEEN_L_stadt_zuerich              <- readOGR(paste0(kt_zh_data_root, 'dataset/offentliche-oberflachengewasser/Stadt-Zuerich' ), 'WB_SEEN_L'                     )
kt_zh_WB_FLIESSGEWAESSER_L_M_stadt_zuerich <- readOGR(paste0(kt_zh_data_root, 'dataset/offentliche-oberflachengewasser/Stadt-Zuerich' ), 'WB_FLIESSGEWAESSER_L_M'        )


# ----------------------

plot(UP_KANTON_F                  )
plot(UP_GEMEINDEN_F               )
plot(UP_GEMEINDEN_L               )
plot(UP_GEMEINDEN_SEEN_F          )

plot(GEN_A1_GEMEINDEN_F           )

plot(GEN_A4_GEMEINDEN_L           )
plot(GEN_A4_GEMEINDEN_SEEN_F      )
plot(GEN_A4_KANTONSMASKE_F        )
plot(GEN_A4_GEMEINDEBESCHRIFTUNG_A) # ?

plot(kt_zh_WB_SEEN_F_ganzer_kanton             , col='blue', add=TRUE)
plot(kt_zh_WB_SEEN_F_ganzer_kanton             , col=rgb(alpha=0.4, red=0.0, blue=1.0, green=0.2), add=TRUE)
plot(kt_zh_WB_SEEN_L_ganzer_kanton             , col='blue', add=TRUE)
plot(kt_zh_WB_FLIESSGEWAESSER_L_M_ganzer_kanton, col='blue', add=TRUE)

plot(kt_zh_WB_SEEN_F_stadt_zuerich             , col='blue', add=TRUE)
plot(kt_zh_WB_SEEN_F_stadt_zuerich             , col=rgb(alpha=0.4, red=0.0, blue=1.0, green=0.2), add=TRUE)
plot(kt_zh_WB_SEEN_L_stadt_zuerich             , col='blue', add=TRUE)
plot(kt_zh_WB_FLIESSGEWAESSER_L_M_stadt_zuerich, col='blue', add=TRUE)
