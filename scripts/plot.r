kt_zh_data_root = paste0(Sys.getenv('github_root'),  '/open-data.Kanton-Zuerich/')

x11()
library(rgdal)

UP_KANTON_F                   <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                     ), 'UP_KANTON_F'                   )
UP_GEMEINDEN_F                <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                     ), 'UP_GEMEINDEN_F'                )
UP_GEMEINDEN_L                <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                     ), 'UP_GEMEINDEN_L'                )
UP_GEMEINDEN_SEEN_F           <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen'                     ), 'UP_GEMEINDEN_SEEN_F'           )

GEN_A1_GEMEINDEN_F            <- readOGR(paste0(kt_zh_data_root, 'dataset/generalisierte-gemeindegrenzen'      ), 'GEN_A1_GEMEINDEN_F'            )

GEN_A4_GEMEINDEN_L            <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'), 'GEN_A4_GEMEINDEN_L'            )
GEN_A4_GEMEINDEN_SEEN_F       <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'), 'GEN_A4_GEMEINDEN_SEEN_F'       )
GEN_A4_KANTONSMASKE_F         <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'), 'GEN_A4_KANTONSMASKE_F'         )
GEN_A4_GEMEINDEBESCHRIFTUNG_A <- readOGR(paste0(kt_zh_data_root, 'dataset/gemeindegrenzen-fur-a4-darstellungen'), 'GEN_A4_GEMEINDEBESCHRIFTUNG_A' )


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
