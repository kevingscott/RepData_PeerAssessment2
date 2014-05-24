library("stringr")
library("data.table")

repdata.data.StormData <- read.csv("~/Dropbox/Coursera/Data Science Specialization/Reproducible Research/Peer Assignment 2/repdata-data-StormData.csv")

repdata.data.StormData$canon_EvType <- toupper(repdata.data.StormData$EVTYPE)
repdata.data.StormData$canon_EvType <- gsub("[^A-Z]"," ",repdata.data.StormData$canon_EvType)
repdata.data.StormData$canon_EvType <- str_trim(repdata.data.StormData$canon_EvType)

repdata.data.StormData$event_category <- 'UNASSIGNED'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'SEVERE TURBULENCE')] <- 'TURBULENCE'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'MUDSLIDE')] <- 'MUDSLIDE'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'MUD SLIDE')] <- 'MUDSLIDE'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'DUST')] <- 'DUST'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FIRE')] <- 'FIRE'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HEAVY SURF')] <- 'HIGH SURF'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HIGH SURF')] <- 'HIGH SURF'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HIGH SEAS')] <- 'HIGH SURF'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HIGH WAVES')] <- 'HIGH SURF'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'COASTAL SURGE')] <- 'STORM SURGE'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'STORM SURGE')] <- 'STORM SURGE'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'MARINE MISHAP')] <- 'MARINE MISHAP'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'AVALANCE')] <- 'AVALANCHE'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'AVALANCHE')] <- 'AVALANCHE'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HIGH TIDES')] <- 'HIGH TIDES'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WALL CLOUD')] <- 'WALL CLOUD'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'RIP CURRENT')] <- 'RIP CURRENT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FOG')] <- 'FOG'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'LOW TEMPERATURE RECORD')] <- 'COLD'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'RECORD LOW')] <- 'COLD'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FREEZE')] <- 'COLD'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'COLD')] <- 'COLD'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType == 'UNSEASONABLY WARM')] <- 'HEAT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType == 'RECORD WARMTH')] <- 'HEAT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType == 'RECORD HIGH')] <- 'HEAT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HIGH TEMP(ERATURE)? RECORD')] <- 'HEAT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'RECORD HIGH TEMP')] <- 'HEAT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HEAT')] <- 'HEAT'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'LIGHTING')] <- 'LIGHTNING'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'LIGNTNING')] <- 'LIGHTNING'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'LIGHTNING')] <- 'LIGHTNING'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'SLEET')] <- 'SLEET'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'SNOW')] <- 'SNOW'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FROST')] <- 'FROST'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'ICY ROADS')] <- 'ICE'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'GLAZE')] <- 'ICE'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'ICE')] <- 'ICE'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WINTER WEATHER')] <- 'WINTER WEATHER'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WINTER STORM')] <- 'WINTERSTORM'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HEAVY MIX')] <- 'WINTRY MIX'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WINTRY MIX')] <- 'WINTRY MIX'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WET')] <- 'WET'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'DRY')] <- 'DRY'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'DROUGHT')] <- 'DRY'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'UNSEASONABLY DRY')] <- 'DRY'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WIND')] <- 'WIND'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FUNNEL')] <- 'FUNNEL'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FUNNEL CLOUD')] <- 'FUNNEL CLOUD'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'DOWNBURST')] <- 'DOWNBURST'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'MICROBURST')] <- 'MICROBURST'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'THUNDERSTORM')] <- 'THUNDERSTORM'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HAIL')] <- 'HAIL'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'TSTM')] <- 'THUNDERSTORM'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FREEZING DRIZZLE')] <- 'FREEZING RAIN'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'PRECIP')] <- 'RAIN'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'RAIN')] <- 'RAIN'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'FLOOD')] <- 'FLOOD'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WATER SPOUT')] <- 'WATERSPOUT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WAYTERSPOUT')] <- 'WATERSPOUT'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'WATERSPOUT')] <- 'WATERSPOUT'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'SMALL STREAM')] <- 'SMALL STREAM'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'URBAN SMALL')] <- 'SMALL STREAM'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'URBAN AND SMALL')] <- 'SMALL STREAM'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'GUSTNADO')] <- 'GUSTNADO'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'TORNDAO')] <- 'TORNANDO'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'TORNADO')] <- 'TORNANDO'

repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'TROPICAL STORM')] <- 'TROPICAL STORM'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'HURRICANE')] <- 'HURRICANE'
repdata.data.StormData$event_category[which(repdata.data.StormData$canon_EvType %like% 'BLIZZARD')] <- 'BLIZZARD'

repdata.data.StormData$Date <- as.Date(repdata.data.StormData$BGN_DATE,"%m/%d/%Y %H:%M:%S")

data_after_1995 <- repdata.data.StormData[which(year(repdata.data.StormData$Date) > 1995),]

convertDamageColumn <- function(data_frame, dmg_col_index){
  dmg_multiplier <- rep(1,length(data_frame))
  
  dmg_multiplier[which(data_frame[,dmg_col_index] == "H")] <- 100
  dmg_multiplier[which(data_frame[,dmg_col_index] == "h")] <- 100
  
  dmg_multiplier[which(data_frame[,dmg_col_index] == "K")] <- 1000
  dmg_multiplier[which(data_frame[,dmg_col_index] == "k")] <- 1000
  
  dmg_multiplier[which(data_frame[,dmg_col_index] == "M")] <- 1000000
  dmg_multiplier[which(data_frame[,dmg_col_index] == "m")] <- 1000000
  
  dmg_multiplier[which(data_frame[,dmg_col_index] == "B")] <- 1000000000
  dmg_multiplier[which(data_frame[,dmg_col_index] == "b")] <- 1000000000
  
  property_dmg_number_indexes = grep("[0-9]",data_frame[,dmg_col_index])
  
  dmg_multiplier[property_dmg_number_indexes] <- 
    10 ^ as.numeric(as.character(data_frame[property_dmg_number_indexes,dmg_col_index]))
  
  return(dmg_multiplier)
}

prop_exp_col = grep("PROPDMGEXP",colnames(data_after_1995))

data_after_1995$prop_dmg_multiplier <- convertDamageColumn(data_after_1995,prop_exp_col)
data_after_1995$prop_dmg_total <- data_after_1995$PROPDMG * data_after_1995$prop_dmg_multiplier

crop_exp_col = grep("CROPDMGEXP",colnames(data_after_1995))

data_after_1995$crop_dmg_multiplier <- convertDamageColumn(data_after_1995,crop_exp_col)
data_after_1995$crop_dmg_total <- data_after_1995$CROPDMG * data_after_1995$crop_dmg_multiplier

data_after_1995$total_damage <- data_after_1995$crop_dmg_total + data_after_1995$prop_dmg_total


data_by_evtype = ddply(data_after_1995,.(event_category),summarize, 
                       count = length(REFNUM),
                       total_injury = sum(INJURIES), 
                       total_fatalities = sum(FATALITIES),
                       mean_injury = mean(INJURIES),
                       mean_fatalities=mean(FATALITIES),
                       crop_damange = mean(crop_dmg_total,na.rm=TRUE),
                       mean_crop_damage = mean(crop_dmg_total,na.rm=TRUE),
                       prop_damage = mean(prop_dmg_total,na.rm=TRUE),
                       mena_prop_damage = mean(prop_dmg_total,na.rm=TRUE),
                       mean_damage = mean(total_damage,na.rm=TRUE),
                       total_damage = sum(total_damage,na.rm=TRUE))

events_with_fatalities <- data_by_evtype[which(data_by_evtype$total_fatalities>0),]

events_order_by_fatal <- events_with_fatalities[order(events_with_fatalities$total_fatalities,decreasing=TRUE),]
event_fatalities_to_graph <- events_order_by_fatal[1:10,]
sum_of_all_others <- sum(events_order_by_fatal$total_fatalities[11:length(events_order_by_fatal)])

events_order_by_mean_fatal <- events_with_fatalities[order(events_with_fatalities$mean_fatalities,decreasing=TRUE),]
event_mean_fatalities_to_graph <- events_order_by_mean_fatal[1:10,]
sum_of_all_others_mean_fatalities <- sum(events_order_by_mean_fatal$mean_fatalities[11:length(events_order_by_mean_fatal)])

events_with_injuries <- data_by_evtype[which(data_by_evtype$total_injury>0),]

events_order_by_injury <- events_with_injuries[order(events_with_injuries$total_injury,decreasing=TRUE),]
event_injuries_to_graph <- events_order_by_injury [1:10,]
sum_of_all_others_injury <- sum(events_order_by_injury $total_injury[11:length(events_order_by_injury )])

events_order_by_mean_injury <- events_with_injuries[order(events_with_injuries$mean_injury,decreasing=TRUE),]
event_mean_injury_to_graph <- events_order_by_mean_injury[1:10,]
sum_of_all_others_mean_injury <- sum(events_order_by_mean_injury$mean_injury[11:length(events_order_by_mean_injury)])


par(mfrow=c(2,2))
barplot(c(event_fatalities_to_graph$total_fatalities,sum_of_all_others),
    ,main="Total Fatalities in Weather Events",las=2,
   names.arg=c(event_fatalities_to_graph$event_category,'ALL OTHERS'),
   cex.names = .6)

barplot(c(event_injuries_to_graph$total_injury,sum_of_all_others),
        names.arg = c(event_injuries_to_graph$event_category,'ALL OTHERS')
        ,main="Total Injury in Weather Events",las=2,
        cex.names = .6)

barplot(c(event_mean_fatalities_to_graph$mean_fatalities,sum_of_all_others_mean_fatalities),
        names.arg = c(event_mean_fatalities_to_graph$event_category,'ALL OTHERS')
        ,main="Mean Fatalities in Weather Events",las=2,
        cex.names = .6)

barplot(c(event_mean_injury_to_graph$mean_injury,sum_of_all_others_mean_injury),
        names.arg = c(event_mean_injury_to_graph$event_category,'ALL OTHERS')
        ,main="Mean Injuries in Weather Events",las=2,
        cex.names = .6)

events_order_by_damage <- data_by_evtype[order(data_by_evtype$total_damage,decreasing=TRUE),]
event_damage_to_graph <- events_order_by_damage[1:10,]
sum_of_all_others_total_damage <- sum(events_order_by_damage$total_damage[11:length(events_order_by_damage)],
                                      na.rm=TRUE)

events_order_by_mean_damage <- data_by_evtype[order(data_by_evtype$mean_damage,decreasing=TRUE),]
event_mean_damage_to_graph <- events_order_by_mean_damage[1:10,]
sum_of_all_others_mean_damage <- sum(events_order_by_mean_damage$mean_damage[11:length(events_order_by_mean_damage)],
                                      na.rm=TRUE)

par(mfrow=c(1,2))
barplot(c(event_damage_to_graph$total_damage,sum_of_all_others_total_damage),
        names.arg = c(event_mean_fatalities_to_graph$event_category,'ALL OTHERS')
        ,main="Total Damage By Event",las=2,
        cex.names = .6)

barplot(c(event_mean_damage_to_graph$mean_damage,sum_of_all_others_mean_damage),
        names.arg = c(event_mean_damage_to_graph$event_category,'ALL OTHERS')
        ,main="Mean Damage By Event",las=2,
        cex.names = .6)
