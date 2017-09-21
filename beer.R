library("twitteR")

#認証
consumerKey <- "XXXXXXXXXXXXXXXXX"
consumerSecret <- "XXXXXXXXXXXXXXXXX"
accessToken <- "XXXXX-XXXXXXXXXXX"
accessSecret <- "XXXXXXXXXXXXXXXXX"

#処理の準備
#httr_oauth_chcheを保存
options(httr_oauth_cache = TRUE)

#認証情報の取得
setup_twitter_oauth(consumerKey, consumerSecret, accessToken, accessSecret)

# 連続投稿
for (num in 1:10){
	print(num)
	# ツイート本文
	sentence = paste0('そんなことより', paste(rep('🍺', sample(1:10, 1)), collapse=""), sample(c('', '飲むもじゃ', '飲むもじゃよ'), 1))
	# ツイート投稿
	try(updateStatus(sentence))
	Sys.sleep(1)
}

# 参考
# https://www.karada-good.net/analyticsr/r-170