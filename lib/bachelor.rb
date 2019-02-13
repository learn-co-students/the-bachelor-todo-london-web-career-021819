require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |period, info|
    if period == season
    info.each do|keys, value|
    keys.each do|info |
    #binding.pry
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
      info_hash.each do |name, value|
       #binding.pry
        if value["name"] == "name"
        return value["name"]
     
        end
      end
    end
  end
end

# def count_contestants_by_hometown(data, hometown)
#   # code here
# end

# def get_occupation(data, hometown)
#   # code here
# end

# def get_average_age_for_season(data, season)
#   # code here
# end
