require 'pry'

holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  winter_supplies << holiday_hash[:winter][:christmas]
  winter_supplies << holiday_hash[:winter][:new_years]
winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_data|
    puts season.to_s.capitalize! + ":"
    season_data.each do |holiday, holiday_supplies|
      holiday_array = holiday.to_s.split("_")
      holiday_array.each {|holiday| holiday.capitalize!}
      puts "  " + holiday_array.join(" ") + ": " + holiday_supplies.join(", ")
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, season_data|
    season_data.each do |holiday, holiday_supplies|
      if holiday_hash.dig(season, holiday).include?("BBQ")
        holiday_array << holiday
      end 
    end 
  end 
holiday_array
end







