require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
    second_supply_for_fourth_of_july=holiday_hash[:summer][:fourth_of_july][1]
    second_supply_for_fourth_of_july
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas] << (supply)
  holiday_hash[:winter][:new_years] << (supply)

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << (supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_string = []
  holiday_hash.each do |season, holiday_name|
   holiday_name.each do |holiday_name, supplies|
     supplies.each do |supply|
      if season == :winter
      supply_string << supply
      end 
    end
  end
end
supply_string
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each {|season, celebration|
    puts season.to_s.capitalize + ":" 
    celebration.each {|holiday, supply|
      line = "  "
      line += holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")
      line += ": "
      supply.each_with_index{|favor, index|
        line += ", " if index > 0
        line += favor
      }
      puts line
    }
  }
  end
   



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  cookout = []
  holiday_hash.each {|season, celebration|
    celebration.each {|holiday, supply|
       cookout << holiday if supply.include?("BBQ")
    }
  } 
  cookout
end








