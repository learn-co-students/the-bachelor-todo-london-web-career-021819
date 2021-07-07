require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |year, girl_data|
    if year == season 
      girl_data.each do |info|
      
        info.each do |profile, x|
        
          if x == "Winner"
            
          return info["name"].split.first
         
          end 
        end
      end
    end
  end    
end

def get_contestant_name(data, occupation)
  data.each do |year, girl_data|
    
    girl_data.each do |info|
      
      info.each do |profile, x|
        
        if x == occupation
          
        return info["name"]
        
        
        end
      end    
    end
  end  
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 # number of contestants from that hometown 
  data.each do |year, girl_data|
    
    girl_data.each do |info|
      
      info.each do |profile, x|
     
        if x == hometown
        counter += 1
        
        end
      end
    end    
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |year, girl_data|
    
    girl_data.each do |info|
      
      info.each do |profile, x|
     
        if x == hometown
        return info["occupation"]
        
        end
      end
    end    
  end
end

def get_average_age_for_season(data, season)
  ages = 0 
  
  data.each do |year, girl_data|
    num_con = girl_data.length 
    if year == season
      
      girl_data.each do |info|
        
      ages += info["age"].to_f
       
      end
      return (ages / num_con).round 
    end
  end
end
