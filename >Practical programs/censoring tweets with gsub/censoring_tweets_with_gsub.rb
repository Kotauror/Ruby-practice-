test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

final = test_tweets.map{|string|
  string = string.gsub("sucks", "CENSORED").gsub("bad", 'CENSORED').gsub("hate", 'CENSORED').gsub("foolish", 'CENSORED').gsub("danger to society", 'CENSORED')
 }

puts final
