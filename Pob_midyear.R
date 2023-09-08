
setwd("C:/Users/Raúl Félix Martínez/Documents/R scripts")

library("writexl")
library("readxl")
library("readr")

pob_mit_proyecciones <- read_excel("C:/Users/Raúl Félix Martínez/Downloads/pob_mit_proyecciones.csv")
View(pob_mit_proyecciones)

DF<-pob_mit_proyecciones[-1,]

table(DF$V2)

length(which(DF$V2==1950))

sum(DF$V7)

typeof(DF$V7)

df_2<-data.frame(DF$V2, DF$V7)

colnames(df_2)[1]="Año"
colnames(df_2)[2]="Población"

table(df_2$Año)

table(DF$V3)

df_3<-data.frame(as.numeric(DF$V2), DF$V3, as.numeric(DF$V7))

df_4<-df_3[1:22220,]

colnames(df_4)[1]="Año"
colnames(df_4)[3]="Población"

table(df_4$Año)

with(df_4, sum(Población[Año==1950]))

población_1980<-with(df_4, sum(Población[Año==1980]))
población_1981<-with(df_4, sum(Población[Año==1981]))
población_1982<-with(df_4, sum(Población[Año==1982]))
población_1983<-with(df_4, sum(Población[Año==1983]))
población_1984<-with(df_4, sum(Población[Año==1984]))
población_1985<-with(df_4, sum(Población[Año==1985]))
población_1986<-with(df_4, sum(Población[Año==1986]))
población_1987<-with(df_4, sum(Población[Año==1987]))
población_1988<-with(df_4, sum(Población[Año==1988]))
población_1989<-with(df_4, sum(Población[Año==1989]))
población_1990<-with(df_4, sum(Población[Año==1990]))
población_1991<-with(df_4, sum(Población[Año==1991]))
población_1992<-with(df_4, sum(Población[Año==1992]))
población_1993<-with(df_4, sum(Población[Año==1993]))
población_1994<-with(df_4, sum(Población[Año==1994]))
población_1995<-with(df_4, sum(Población[Año==1995]))
población_1996<-with(df_4, sum(Población[Año==1996]))
población_1997<-with(df_4, sum(Población[Año==1997]))
población_1998<-with(df_4, sum(Población[Año==1998]))
población_1999<-with(df_4, sum(Población[Año==1999]))
población_2000<-with(df_4, sum(Población[Año==2000]))
población_2001<-with(df_4, sum(Población[Año==2001]))
población_2002<-with(df_4, sum(Población[Año==2002]))
población_2003<-with(df_4, sum(Población[Año==2003]))
población_2004<-with(df_4, sum(Población[Año==2004]))
población_2005<-with(df_4, sum(Población[Año==2005]))
población_2006<-with(df_4, sum(Población[Año==2006]))
población_2007<-with(df_4, sum(Población[Año==2007]))
población_2008<-with(df_4, sum(Población[Año==2008]))
población_2009<-with(df_4, sum(Población[Año==2009]))
población_2010<-with(df_4, sum(Población[Año==2010]))
población_2011<-with(df_4, sum(Población[Año==2011]))
población_2012<-with(df_4, sum(Población[Año==2012]))
población_2013<-with(df_4, sum(Población[Año==2013]))
población_2014<-with(df_4, sum(Población[Año==2014]))
población_2015<-with(df_4, sum(Población[Año==2015]))
población_2016<-with(df_4, sum(Población[Año==2016]))
población_2017<-with(df_4, sum(Población[Año==2017]))
población_2018<-with(df_4, sum(Población[Año==2018]))
población_2019<-with(df_4, sum(Población[Año==2019]))
población_2020<-with(df_4, sum(Población[Año==2020]))
población_2021<-with(df_4, sum(Población[Año==2021]))
población_2022<-with(df_4, sum(Población[Año==2022]))
población_2023<-with(df_4, sum(Población[Año==2023]))

newdata<-data.frame(población_1980,	población_1981,	población_1982,	población_1983,
               población_1984,	población_1985,	población_1986,	población_1987,
               población_1988,	población_1989,	población_1990,	población_1991,
               población_1992,	población_1993,	población_1994,	población_1995,
               población_1996,	población_1997,	población_1998,	población_1999,
               población_2000,	población_2001,	población_2002,	población_2003,	
               población_2004,	población_2005,	población_2006,	población_2007,
               población_2008,	población_2009,	población_2010,	población_2011,
               población_2012,	población_2013,	población_2014,	población_2015,	
               población_2016,	población_2017,	población_2018,	población_2019,	
               población_2020,	población_2021, población_2022, población_2023)

newdata_2<-data.frame(t(newdata))
colnames(newdata_2)[1]="Población"

write_xlsx(newdata_2, "C:/Users/Raúl Félix Martínez/Documents/Población medio año.xlsx")
     
#Ahora para los Estados
#Empezando con Chiapas
#df_3 es el que utilizaremos porque considera Estados 

df_chiapas<-df_3[129141:146960,]

colnames(df_chiapas)[1]="Año"
colnames(df_chiapas)[2]="Estado"
colnames(df_chiapas)[3]="Población"

with(df_chiapas, sum(Población[Año==1970])) #Aqui es donde inician datos para Chiapas

población_1980<-with(df_chiapas, sum(Población[Año==1980]))
población_1981<-with(df_chiapas, sum(Población[Año==1981]))
población_1982<-with(df_chiapas, sum(Población[Año==1982]))
población_1983<-with(df_chiapas, sum(Población[Año==1983]))
población_1984<-with(df_chiapas, sum(Población[Año==1984]))
población_1985<-with(df_chiapas, sum(Población[Año==1985]))
población_1986<-with(df_chiapas, sum(Población[Año==1986]))
población_1987<-with(df_chiapas, sum(Población[Año==1987]))
población_1988<-with(df_chiapas, sum(Población[Año==1988]))
población_1989<-with(df_chiapas, sum(Población[Año==1989]))
población_1990<-with(df_chiapas, sum(Población[Año==1990]))
población_1991<-with(df_chiapas, sum(Población[Año==1991]))
población_1992<-with(df_chiapas, sum(Población[Año==1992]))
población_1993<-with(df_chiapas, sum(Población[Año==1993]))
población_1994<-with(df_chiapas, sum(Población[Año==1994]))
población_1995<-with(df_chiapas, sum(Población[Año==1995]))
población_1996<-with(df_chiapas, sum(Población[Año==1996]))
población_1997<-with(df_chiapas, sum(Población[Año==1997]))
población_1998<-with(df_chiapas, sum(Población[Año==1998]))
población_1999<-with(df_chiapas, sum(Población[Año==1999]))
población_2000<-with(df_chiapas, sum(Población[Año==2000]))
población_2001<-with(df_chiapas, sum(Población[Año==2001]))
población_2002<-with(df_chiapas, sum(Población[Año==2002]))
población_2003<-with(df_chiapas, sum(Población[Año==2003]))
población_2004<-with(df_chiapas, sum(Población[Año==2004]))
población_2005<-with(df_chiapas, sum(Población[Año==2005]))
población_2006<-with(df_chiapas, sum(Población[Año==2006]))
población_2007<-with(df_chiapas, sum(Población[Año==2007]))
población_2008<-with(df_chiapas, sum(Población[Año==2008]))
población_2009<-with(df_chiapas, sum(Población[Año==2009]))
población_2010<-with(df_chiapas, sum(Población[Año==2010]))
población_2011<-with(df_chiapas, sum(Población[Año==2011]))
población_2012<-with(df_chiapas, sum(Población[Año==2012]))
población_2013<-with(df_chiapas, sum(Población[Año==2013]))
población_2014<-with(df_chiapas, sum(Población[Año==2014]))
población_2015<-with(df_chiapas, sum(Población[Año==2015]))
población_2016<-with(df_chiapas, sum(Población[Año==2016]))
población_2017<-with(df_chiapas, sum(Población[Año==2017]))
población_2018<-with(df_chiapas, sum(Población[Año==2018]))
población_2019<-with(df_chiapas, sum(Población[Año==2019]))
población_2020<-with(df_chiapas, sum(Población[Año==2020]))
población_2021<-with(df_chiapas, sum(Población[Año==2021]))

data_chiapas<-data.frame(población_1980,	población_1981,	población_1982,	población_1983,
                    población_1984,	población_1985,	población_1986,	población_1987,
                    población_1988,	población_1989,	población_1990,	población_1991,
                    población_1992,	población_1993,	población_1994,	población_1995,
                    población_1996,	población_1997,	población_1998,	población_1999,
                    población_2000,	población_2001,	población_2002,	población_2003,	
                    población_2004,	población_2005,	población_2006,	población_2007,
                    población_2008,	población_2009,	población_2010,	población_2011,
                    población_2012,	población_2013,	población_2014,	población_2015,	
                    población_2016,	población_2017,	población_2018,	población_2019,	
                    población_2020,	población_2021)

data_chiapas2<-data.frame(t(data_chiapas))
colnames(data_chiapas2)[1]="Población"

write_xlsx(data_chiapas2, "C:/Users/Raúl Félix Martínez/Documents/Población medio año Chiapas.xlsx")

#Ahora toca hacerlo para Oaxaca
#lo mismo, empezamos con df_3

table(df_3$DF.V3)

df_oaxaca<-df_3[360801:378620,]

colnames(df_oaxaca)[1]="Año"
colnames(df_oaxaca)[2]="Estado"
colnames(df_oaxaca)[3]="Población"

with(df_oaxaca, sum(Población[Año==1970])) #primer dato

población_1980<-with(df_oaxaca, sum(Población[Año==1980]))
población_1981<-with(df_oaxaca, sum(Población[Año==1981]))
población_1982<-with(df_oaxaca, sum(Población[Año==1982]))
población_1983<-with(df_oaxaca, sum(Población[Año==1983]))
población_1984<-with(df_oaxaca, sum(Población[Año==1984]))
población_1985<-with(df_oaxaca, sum(Población[Año==1985]))
población_1986<-with(df_oaxaca, sum(Población[Año==1986]))
población_1987<-with(df_oaxaca, sum(Población[Año==1987]))
población_1988<-with(df_oaxaca, sum(Población[Año==1988]))
población_1989<-with(df_oaxaca, sum(Población[Año==1989]))
población_1990<-with(df_oaxaca, sum(Población[Año==1990]))
población_1991<-with(df_oaxaca, sum(Población[Año==1991]))
población_1992<-with(df_oaxaca, sum(Población[Año==1992]))
población_1993<-with(df_oaxaca, sum(Población[Año==1993]))
población_1994<-with(df_oaxaca, sum(Población[Año==1994]))
población_1995<-with(df_oaxaca, sum(Población[Año==1995]))
población_1996<-with(df_oaxaca, sum(Población[Año==1996]))
población_1997<-with(df_oaxaca, sum(Población[Año==1997]))
población_1998<-with(df_oaxaca, sum(Población[Año==1998]))
población_1999<-with(df_oaxaca, sum(Población[Año==1999]))
población_2000<-with(df_oaxaca, sum(Población[Año==2000]))
población_2001<-with(df_oaxaca, sum(Población[Año==2001]))
población_2002<-with(df_oaxaca, sum(Población[Año==2002]))
población_2003<-with(df_oaxaca, sum(Población[Año==2003]))
población_2004<-with(df_oaxaca, sum(Población[Año==2004]))
población_2005<-with(df_oaxaca, sum(Población[Año==2005]))
población_2006<-with(df_oaxaca, sum(Población[Año==2006]))
población_2007<-with(df_oaxaca, sum(Población[Año==2007]))
población_2008<-with(df_oaxaca, sum(Población[Año==2008]))
población_2009<-with(df_oaxaca, sum(Población[Año==2009]))
población_2010<-with(df_oaxaca, sum(Población[Año==2010]))
población_2011<-with(df_oaxaca, sum(Población[Año==2011]))
población_2012<-with(df_oaxaca, sum(Población[Año==2012]))
población_2013<-with(df_oaxaca, sum(Población[Año==2013]))
población_2014<-with(df_oaxaca, sum(Población[Año==2014]))
población_2015<-with(df_oaxaca, sum(Población[Año==2015]))
población_2016<-with(df_oaxaca, sum(Población[Año==2016]))
población_2017<-with(df_oaxaca, sum(Población[Año==2017]))
población_2018<-with(df_oaxaca, sum(Población[Año==2018]))
población_2019<-with(df_oaxaca, sum(Población[Año==2019]))
población_2020<-with(df_oaxaca, sum(Población[Año==2020]))
población_2021<-with(df_oaxaca, sum(Población[Año==2021]))

data_oaxaca<-data.frame(población_1980,	población_1981,	población_1982,	población_1983,
                         población_1984,	población_1985,	población_1986,	población_1987,
                         población_1988,	población_1989,	población_1990,	población_1991,
                         población_1992,	población_1993,	población_1994,	población_1995,
                         población_1996,	población_1997,	población_1998,	población_1999,
                         población_2000,	población_2001,	población_2002,	población_2003,	
                         población_2004,	población_2005,	población_2006,	población_2007,
                         población_2008,	población_2009,	población_2010,	población_2011,
                         población_2012,	población_2013,	población_2014,	población_2015,	
                         población_2016,	población_2017,	población_2018,	población_2019,	
                         población_2020,	población_2021)

data_oaxaca2<-data.frame(t(data_oaxaca))
colnames(data_oaxaca2)[1]="Población"

write_xlsx(data_oaxaca2, "C:/Users/Raúl Félix Martínez/Documents/Población medio año Oaxaca.xlsx")

#Ahora sigue para Tabasco, df_3 como siempre

df_tabasco<-df_3[485541:503360, ]

colnames(df_tabasco)[1]="Año"
colnames(df_tabasco)[2]="Estado"
colnames(df_tabasco)[3]="Población"

población_1980<-with(df_tabasco, sum(Población[Año==1980]))
población_1981<-with(df_tabasco, sum(Población[Año==1981]))
población_1982<-with(df_tabasco, sum(Población[Año==1982]))
población_1983<-with(df_tabasco, sum(Población[Año==1983]))
población_1984<-with(df_tabasco, sum(Población[Año==1984]))
población_1985<-with(df_tabasco, sum(Población[Año==1985]))
población_1986<-with(df_tabasco, sum(Población[Año==1986]))
población_1987<-with(df_tabasco, sum(Población[Año==1987]))
población_1988<-with(df_tabasco, sum(Población[Año==1988]))
población_1989<-with(df_tabasco, sum(Población[Año==1989]))
población_1990<-with(df_tabasco, sum(Población[Año==1990]))
población_1991<-with(df_tabasco, sum(Población[Año==1991]))
población_1992<-with(df_tabasco, sum(Población[Año==1992]))
población_1993<-with(df_tabasco, sum(Población[Año==1993]))
población_1994<-with(df_tabasco, sum(Población[Año==1994]))
población_1995<-with(df_tabasco, sum(Población[Año==1995]))
población_1996<-with(df_tabasco, sum(Población[Año==1996]))
población_1997<-with(df_tabasco, sum(Población[Año==1997]))
población_1998<-with(df_tabasco, sum(Población[Año==1998]))
población_1999<-with(df_tabasco, sum(Población[Año==1999]))
población_2000<-with(df_tabasco, sum(Población[Año==2000]))
población_2001<-with(df_tabasco, sum(Población[Año==2001]))
población_2002<-with(df_tabasco, sum(Población[Año==2002]))
población_2003<-with(df_tabasco, sum(Población[Año==2003]))
población_2004<-with(df_tabasco, sum(Población[Año==2004]))
población_2005<-with(df_tabasco, sum(Población[Año==2005]))
población_2006<-with(df_tabasco, sum(Población[Año==2006]))
población_2007<-with(df_tabasco, sum(Población[Año==2007]))
población_2008<-with(df_tabasco, sum(Población[Año==2008]))
población_2009<-with(df_tabasco, sum(Población[Año==2009]))
población_2010<-with(df_tabasco, sum(Población[Año==2010]))
población_2011<-with(df_tabasco, sum(Población[Año==2011]))
población_2012<-with(df_tabasco, sum(Población[Año==2012]))
población_2013<-with(df_tabasco, sum(Población[Año==2013]))
población_2014<-with(df_tabasco, sum(Población[Año==2014]))
población_2015<-with(df_tabasco, sum(Población[Año==2015]))
población_2016<-with(df_tabasco, sum(Población[Año==2016]))
población_2017<-with(df_tabasco, sum(Población[Año==2017]))
población_2018<-with(df_tabasco, sum(Población[Año==2018]))
población_2019<-with(df_tabasco, sum(Población[Año==2019]))
población_2020<-with(df_tabasco, sum(Población[Año==2020]))
población_2021<-with(df_tabasco, sum(Población[Año==2021]))

data_tabasco<-data.frame(población_1980,	población_1981,	población_1982,	población_1983,
                        población_1984,	población_1985,	población_1986,	población_1987,
                        población_1988,	población_1989,	población_1990,	población_1991,
                        población_1992,	población_1993,	población_1994,	población_1995,
                        población_1996,	población_1997,	población_1998,	población_1999,
                        población_2000,	población_2001,	población_2002,	población_2003,	
                        población_2004,	población_2005,	población_2006,	población_2007,
                        población_2008,	población_2009,	población_2010,	población_2011,
                        población_2012,	población_2013,	población_2014,	población_2015,	
                        población_2016,	población_2017,	población_2018,	población_2019,	
                        población_2020,	población_2021)

data_tabasco2<-data.frame(t(data_tabasco))
colnames(data_tabasco2)[1]="Población"

write_xlsx(data_tabasco2, "C:/Users/Raúl Félix Martínez/Documents/Población medio año Tabasco.xlsx")

#Finalmente para Veracruz Ignacio de la Llave

df_veracruz<-df_3[539001:556820,]

colnames(df_veracruz)[1]="Año"
colnames(df_veracruz)[2]="Estado"
colnames(df_veracruz)[3]="Población"

población_1980<-with(df_veracruz, sum(Población[Año==1980]))
población_1981<-with(df_veracruz, sum(Población[Año==1981]))
población_1982<-with(df_veracruz, sum(Población[Año==1982]))
población_1983<-with(df_veracruz, sum(Población[Año==1983]))
población_1984<-with(df_veracruz, sum(Población[Año==1984]))
población_1985<-with(df_veracruz, sum(Población[Año==1985]))
población_1986<-with(df_veracruz, sum(Población[Año==1986]))
población_1987<-with(df_veracruz, sum(Población[Año==1987]))
población_1988<-with(df_veracruz, sum(Población[Año==1988]))
población_1989<-with(df_veracruz, sum(Población[Año==1989]))
población_1990<-with(df_veracruz, sum(Población[Año==1990]))
población_1991<-with(df_veracruz, sum(Población[Año==1991]))
población_1992<-with(df_veracruz, sum(Población[Año==1992]))
población_1993<-with(df_veracruz, sum(Población[Año==1993]))
población_1994<-with(df_veracruz, sum(Población[Año==1994]))
población_1995<-with(df_veracruz, sum(Población[Año==1995]))
población_1996<-with(df_veracruz, sum(Población[Año==1996]))
población_1997<-with(df_veracruz, sum(Población[Año==1997]))
población_1998<-with(df_veracruz, sum(Población[Año==1998]))
población_1999<-with(df_veracruz, sum(Población[Año==1999]))
población_2000<-with(df_veracruz, sum(Población[Año==2000]))
población_2001<-with(df_veracruz, sum(Población[Año==2001]))
población_2002<-with(df_veracruz, sum(Población[Año==2002]))
población_2003<-with(df_veracruz, sum(Población[Año==2003]))
población_2004<-with(df_veracruz, sum(Población[Año==2004]))
población_2005<-with(df_veracruz, sum(Población[Año==2005]))
población_2006<-with(df_veracruz, sum(Población[Año==2006]))
población_2007<-with(df_veracruz, sum(Población[Año==2007]))
población_2008<-with(df_veracruz, sum(Población[Año==2008]))
población_2009<-with(df_veracruz, sum(Población[Año==2009]))
población_2010<-with(df_veracruz, sum(Población[Año==2010]))
población_2011<-with(df_veracruz, sum(Población[Año==2011]))
población_2012<-with(df_veracruz, sum(Población[Año==2012]))
población_2013<-with(df_veracruz, sum(Población[Año==2013]))
población_2014<-with(df_veracruz, sum(Población[Año==2014]))
población_2015<-with(df_veracruz, sum(Población[Año==2015]))
población_2016<-with(df_veracruz, sum(Población[Año==2016]))
población_2017<-with(df_veracruz, sum(Población[Año==2017]))
población_2018<-with(df_veracruz, sum(Población[Año==2018]))
población_2019<-with(df_veracruz, sum(Población[Año==2019]))
población_2020<-with(df_veracruz, sum(Población[Año==2020]))
población_2021<-with(df_veracruz, sum(Población[Año==2021]))

data_veracruz<-data.frame(población_1980,	población_1981,	población_1982,	población_1983,
                         población_1984,	población_1985,	población_1986,	población_1987,
                         población_1988,	población_1989,	población_1990,	población_1991,
                         población_1992,	población_1993,	población_1994,	población_1995,
                         población_1996,	población_1997,	población_1998,	población_1999,
                         población_2000,	población_2001,	población_2002,	población_2003,	
                         población_2004,	población_2005,	población_2006,	población_2007,
                         población_2008,	población_2009,	población_2010,	población_2011,
                         población_2012,	población_2013,	población_2014,	población_2015,	
                         población_2016,	población_2017,	población_2018,	población_2019,	
                         población_2020,	población_2021)

data_veracruz2<-data.frame(t(data_veracruz))
colnames(data_veracruz2)[1]="Población"

write_xlsx(data_veracruz2, "C:/Users/Raúl Félix Martínez/Documents/Población medio año Veracruz.xlsx")






