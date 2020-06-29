## タイトル：ThisIsMe
・URL：https://thisismebyyu.herokuapp.com/  
・テストアカウント  
　　ID：test@gmail.com  
　　password：test-pass  
・GitURL：https://github.com/Yu-41/this-is-me/  
・開発環境：HTML, SCSS, Ruby, Ruby on Rails, MySQL or PostgreSQL, Git, GitHub（言語、ツール、OS、DB、サーバー）, Heroku  
・内容  
　●概要：自分のプロフィールを記載し、ページをシェアして使用するアプリです。  
　●実装機能：ユーザー登録、ログイン・ログアウト、プロフィール登録・編集、画像投稿、ユーザー検索  
・企画背景  
SNSなどの多様化でプロフィールを書く機会が増えてきたことにより、自分のプロフィールをまとめておくアプリがあることで毎回記載する手間が省けるのではと考えました。  
・課題  
URLをコピーするボタンの実装
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
|image|string|null: false|
|content|text||
|link|text||
### Association
none
