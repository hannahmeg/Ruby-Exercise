# Create a Ruby script that takes an array of daily temperatures.
# For each day, output "High" if the temperature is above 35 degrees Celsius,
# "Moderate" if it's between 20 and 35 degrees, and "Low" if it's below 20 degrees.

def check_temp(daily_temps = [])

  daily_temps.map do |daily_temp|
    if daily_temp > 35
      daily_temp = "High"
    elsif daily_temp >= 20 && daily_temp <= 35
      daily_temp = "Moderate"
    elsif daily_temp < 20
      daily_temp = "Low"
    end
  end
end

p check_temp([20, 30, 10,50])