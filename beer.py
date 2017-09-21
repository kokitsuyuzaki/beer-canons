#!/usr/bin/env python
# -*- coding: utf-8 -*-

import time
import random
from requests_oauthlib import OAuth1Session

#認証
CK = 'XXXXXXXXXXXXXXXXX' # Consumer Key
CS = 'XXXXXXXXXXXXXXXXX' # Consumer Secret
AT = 'XXXXX-XXXXXXXXXXX' # Access Token
AS = 'XXXXXXXXXXXXXXXXX' # Accesss Token Secert

# ツイート投稿用のURL
url = "https://api.twitter.com/1.1/statuses/update.json"

# 連続投稿
for num in range(random.randrange(1,10)):
	print(num)
	# ツイート本文
	sentence = 'そんなことより' + random.randrange(1,10) * '🍺' + random.choice(['', '飲むもじゃ', '飲むもじゃよ'])
	params = {"status": sentence}

	# OAuth認証で POST method で投稿
	twitter = OAuth1Session(CK, CS, AT, AS)
	# ツイート投稿
	req = twitter.post(url, params = params)

	# レスポンスを確認
	if req.status_code == 200:
	    print ("OK")
	else:
	    print ("Error: %d" % req.status_code)
	time.sleep(1)

# 参考
# https://qiita.com/yubais/items/dd143fe608ccad8e9f85