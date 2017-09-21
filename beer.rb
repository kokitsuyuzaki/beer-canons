require 'twitter'

#認証
client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "XXXXXXXXXXXXXXXXX"
    config.consumer_secret     = "XXXXXXXXXXXXXXXXX"
    config.access_token        = "XXXXX-XXXXXXXXXXX"
    config.access_token_secret = "XXXXXXXXXXXXXXXXX"
end

# 連続投稿
for num in 1..[*1..10].sample do
	puts(num)
	# ツイート本文
	sentence = 'そんなことより' + '🍺' * [*1..10].sample + ['', '飲むもじゃ', '飲むもじゃよ'].sample
	# ツイート投稿
	client.update(sentence)
	sleep(1)
end

# 参考
# https://github.com/sferik/twitter
# http://loumo.jp/wp/archive/20150916000032/