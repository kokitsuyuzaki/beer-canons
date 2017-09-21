using Twitter

#認証
twitterauth(
    "XXXXXXXXXXXXXXXXX", # Consumer key
    "XXXXXXXXXXXXXXXXX", # Consumer secret
    "XXXXXX-XXXXXXXXXX", # Access token
    "XXXXXXXXXXXXXXXXX") # Access token secret

# 連続投稿
for num in 1:rand(1:10)
    println(num)
    # ツイート本文
    sentence = "そんなことより" * join(["🍺" for i in 1:rand(1:10)]) * ["", "飲むもじゃ", "飲むもじゃよ"][rand(1:3)]
    # ツイート投稿
    post_status_update(sentence)
    sleep(1)
end

# 参考
# https://github.com/randyzwitch/Twitter.jl