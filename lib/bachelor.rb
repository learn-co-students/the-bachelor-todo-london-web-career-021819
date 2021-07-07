require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |series, attributes|
    if series == season
      attributes.each do |key, value|
        if key["status"] == "Winner"
          return key["name"].split(" ").first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |series, attributes|
    attributes.each do |key, value|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |series, attributes|
    attributes.each do |key, value|
      if key["hometown"] == hometown
        counter = counter + 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |series, attributes|
    attributes.each do |key, value|
      if key["hometown"] == hometown
        occupation.push key["occupation"] # value of occupation key
      end
    end
  end
  occupation.first
end

def get_average_age_for_season(data, season)
  ages = 0
  persons = 0
  data.each do |series, attributes|
    if series == season # identify correct season
      attributes.each do |key, value|
        ages = ages + key["age"].to_f # to_i would convert string to a whole number.  need the decimal place so res is actual average and can be rounded up or down accordingly
        persons = persons + 1
      end
    end
  end
  res = ages / persons
  res.round
end
