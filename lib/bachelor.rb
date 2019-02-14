require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |period, info|
    if period == season
    info.each do|keys, value|
    keys.each do|info |
    if keys["status"] == "Winner"
        return keys["name"].split(" ").first
         end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
   data.each do |season, info|
     info.each do|info_hash, period|
     if info_hash["occupation"] == occupation
       return info_hash["name"]
       
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, value_hash|
    value_hash.each do|value| 
      value.each do |keys, value|
     #binding.pry
    if value == hometown
      counter +=1
      
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
 data.each do |season, value_hash|
   value_hash.each do |info|
     info.each do |keys, value|
       if value == hometown
         return info["occupation"]
   # binding.pry
     end 
    end
  end
 end
end

def get_average_age_for_season(data, season)
      age = 0
      counter = 0 
      
   data[season].each do |values|
         #binding.pry
        age += values["age"].to_f
        counter +=1 
  end
  return (age/counter).round
end
