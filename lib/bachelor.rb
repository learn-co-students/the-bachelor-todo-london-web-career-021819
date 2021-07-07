require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, cont_info|
    cont_info.each do |info|
      if season == season_num && info["status"] == "Winner"
        return info["name"].split(" ")[0]
      end
    end 
  end
end 

def get_contestant_name(data, occupation)
  data.each do |season_num, cont_info|
    cont_info.each do |info|
      if occupation == info["occupation"]
        return info["name"]
      end
    end 
  end 
end 

def count_contestants_by_hometown(data, hometown)
  contestants = 0
    data.each do |season, cont_info|
      cont_info.each do |info|
        if hometown == info["hometown"]
          contestants+= 1
        end
      end
    end 
  contestants
end 

def get_occupation(data, hometown)
    data.each do |season_num, cont_info|
      cont_info.each do |info|
        if hometown == info["hometown"]
          return info["occupation"]
        end
      end 
    end 
end 

def get_average_age_for_season(data, season)
  array = []
  data.each do |season_num, cont_info|
    cont_info.each do |info|
      if season == season_num
      array << info["age"]
      end 
    end 
  end 
  return array
end

def get_average_age_for_season(data, season)
array = []
    data.each do |season_num, cont_info|
      cont_info.each do |a|
        if season_num == season
        array << a["age"]
        binding.pry
        end
      end  
    end 
    x = array.collect do |e| e.to_i end 
    y = x.inject{ |sum, el| sum + el }.to_f / x.size
    y.round
end 