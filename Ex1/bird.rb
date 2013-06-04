class Bird
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @tweets = []
    @flowers = []
  end

  def tweet(text)
    tweet = Tweet.new(text)
    @tweets.push(tweet)
  end

  def my_tweets
    @tweets.each do |tweet|
      puts tweet.text
    end
  end

  def follow(user)
    return false unless user.class == Bird
    @flowers.push(user)
  end

  def flowers
    @flowers.each do |user|
      puts user.name
    end
  end

  def time_line
    users = @flowers
    users.push(self)

    users.each do |user|
      user.my_tweets
    end
  end
end
