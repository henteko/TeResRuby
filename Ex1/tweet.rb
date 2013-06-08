class Tweet
  attr_accessor :text, :tweet_id, :user
  @@tweet_count = 1

  def initialize(text, user)
    @text = text
    @user = user
    @tweet_id = @@tweet_count
    @@tweet_count += 1
  end
end
