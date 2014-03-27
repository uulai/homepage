require 'sinatra'

get '/' do
  erb :index, layout: :main_layout
end

get '/index.erb' do
  erb :index, layout: :main_layout
end

get '/fizz' do
  erb :fizz, layout: :main_layout
end


post '/fizz' do
  first_num      = params[:num1]
  second_num = params[:num2]
 
 first_num = first_num.to_i
 second_num = second_num.to_i


@print_value = ""

  for x in 1..100
  
    if x % first_num == 0 && x % second_num == 0
      @print_value += "FIZZBUZZ"
    elsif x % first_num == 0
      @print_value += "FIZZ"
    elsif x % second_num == 0
      @print_value += "BUZZ"
    else
      @print_value += x.to_s
    end 
  end


  erb :fizz, layout: :main_layout
end





get '/codeacademy' do 
  erb :codeacademy, layout: :main_layout
end 


post '/codeacademy' do 
  words = params[:sentence]

  words = text.split(" ")
  times = Hash.new(0)
  words.each { |word| times[word] += 1 }
  times = times.sort_by {|a, b| b }
  times.reverse!

  times.each do |word, times| 
    @results= word + " " + times.to_s 
  end

  erb :codeacademy, layout: :main_layout
end 






get "/survey" do
  erb :survey, layout: :main_layout
end


post "/survey" do
  work_best         = params[:work_best]
  consider_yourself = params[:consider_yourself]
  interested_in     = params[:interested_in]

  if work_best == "with_deadlines" && consider_yourself == "rational" && interested_in == "ideas" && fav_dessert =="cookies" && fav_music == "country" 
    @personality_type = "Rational"
  elsif work_best == "with_deadlines" && consider_yourself == "rational" && interested_in == "facts" && fav_dessert =="cakes" && fav_music == "hip hop" 
    @personality_type = "Guardian"
  elsif  work_best == "without_deadlines" && consider_yourself == "rational" && interested_in == "ideas" && fav_dessert =="cookies" && fav_music == "country" 
    @personality_type = "Idealist"
  elsif  work_best == "without_deadlines" && consider_yourself == "rational" && interested_in == "facts" && fav_dessert =="cookies" && fav_music == "hip hop" 
    @personality_type = "Artisan"
  elsif  work_best == "with_deadlines" && consider_yourself == "compassionate" && interested_in == "ideas" && fav_dessert =="cakes" && fav_music == "country" 
    @personality_type = "Idealist"
  elsif  work_best == "with_deadlines" && consider_yourself == "compassionate" && interested_in == "facts" && fav_dessert =="cookies" && fav_music == "country" 
    @personality_type = "Guardian"
  elsif  work_best == "without_deadlines" && consider_yourself == "compassionate" && interested_in == "ideas" && fav_dessert =="cakes" && fav_music == "hip hop" 
    @personality_type = "Idealist"
  elsif  work_best == "without_deadlines" && consider_yourself == "compassionate" && interested_in == "facts" && fav_dessert =="cakes" && fav_music == "country" 
    @personality_type = "Artisan"
  end

  erb :survey, layout: :main_layout
end
