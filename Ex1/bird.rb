class Bird
  attr_accessor :name, :tweets
  
  def initialize(name)
    @name = name
    @tweets = []
    @flowers = []
  end

  def tweet(text)
    tweet = Tweet.new(text, self)
    @tweets.push(tweet)
  end

  def my_tweets
    print_tweets([self])
  end

  def follow(user)
    raise 'Not Bird instance' unless user.class == Bird
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
    print_tweets(users)
  end

  private

  def print_tweets(users)
    tweets = users_tweets(users)
    tweets = tweets_sort(tweets)

    tweets.reverse_each do |tweet|
      puts tweet.user.name + ": " + tweet.text
    end
  end

  def tweets_sort(tweets)
    tweets = tweets.sort do |a, b|
      a.tweet_id <=> b.tweet_id
    end
    return tweets
  end

  def users_tweets(users)
    tweets = []
    users.each do |user|
      user.tweets.each do |tweet|
        tweets.push(tweet)
      end
    end
    return tweets
  end
end
