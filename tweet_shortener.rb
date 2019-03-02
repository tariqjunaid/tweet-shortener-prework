def dictionary
  subs = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split("").map do |word|
    dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map { |word|  puts word_substituter(word) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..136] << "..." : tweet
end