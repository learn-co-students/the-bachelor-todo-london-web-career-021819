def get_first_name_of_season_winner(data, season)
  data.each do |s, contestants|
    if s == season
      contestants.each do |contestant_data|
        if contestant_data["status"] == "Winner"
          name_ary = contestant_data["name"].split(" ")
          return name_ary[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |s, contestants|
    contestants.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |s, contestants|
    contestants.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)

  data.each do |s, contestants|
    contestants.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  total = 0
  data.each do |s, contestants|
    if s == season
      contestants.each_with_index do |contestant_data, index|
        age += contestant_data["age"].to_f
        total = index + 1
      end
    end
  end
  return (age / total).round
end
