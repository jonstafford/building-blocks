def stock_picker(daily_stock_prices)
  
  min_price = daily_stock_prices[0]
  min_price_day = 0
  max_price = daily_stock_prices[0]
  
  best_min = min_price
  best_diff = 0
  best_min_day = nil
  best_diff_day = nil

  daily_stock_prices.length.times do |i|
   
    p = daily_stock_prices[i]
    
    #puts "i is " + i.to_s + " and p is: " + p.to_s
    
    if (p < min_price) 
      min_price = p
      min_price_day = i
    end
    
    diff = p - min_price
    if (diff > best_diff)  
      best_diff = diff
      best_min_day = min_price_day
      best_diff_day = i
    end
  
  end
  
  if best_diff_day.nil?
    return [] 
  end
  
  return [best_min_day, best_diff_day]
end