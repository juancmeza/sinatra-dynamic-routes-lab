require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    @squared = (@number*@number)
    "#{@squared}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @l = ""
    @number.times {@l = @l + ' ' + @phrase}
    "#{@l}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @phrase = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
    "#{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @operation = params[:operation]
    @number = 0

    case @operation
    when "add"
      @number = "#{@n1 + @n2}"
    when "subtract"
      @number = "#{@n1 - @n2}"
    when "multiply"
      @number = "#{@n1 * @n2}"
    when "divide"
      @number = "#{@n1 / @n2}"
    end
    @number
  end

end