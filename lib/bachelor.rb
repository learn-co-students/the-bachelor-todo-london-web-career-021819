def get_first_name_of_season_winner(data, season)
  data[season].each do |value|
    if value["status"].include?("Winner")
      return value["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |value2|
    if value2["occupation"].include?(occupation)
      return value2["name"]
    end
  end
end
end
      
      
      
def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, names|
    names.each do |person|
      if person["hometown"].include?(hometown)
      i += 1 
    end
  end
end
return i
end

def get_occupation(data, hometown)
  data.each do |season, names|
    names.each do |names|
      if names["hometown"].include?(hometown)
        return names["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
age = 0
count = 0
  data[season].each do |hash|
    hash.each do |k,v|
      if k == "age"
        count += 1
        age += v.to_f
      end
    end
  end

  answer = (age/count).round
return answer
end
end
