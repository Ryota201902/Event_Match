# EVENT MATCH
イベント同行者のマッチングサイト　http://ec2-52-199-116-202.ap-northeast-1.compute.amazonaws.com/

# 概要
参加したいイベントがあるが、周りに同行してくれる友達がいない。
EVENT MATCHはイベント同行者を募集でき、また募集されたイベントに参加することができるサービスです。

## テスト用アカウント
[email] test@test  
[password] testtest

# 機能
* イベント募集一覧表示機能
* 参加予定イベント一覧表示機能
* イベント投稿、編集、削除機能
* イベントの検索機能(gem ransack)
* イベント一覧画面のページネーション機能(gem kaminari)
* イベント詳細表示機能
* コメント機能
* 画像アップロード機能(gem refile)
* 会員登録、ログイン機能(gem devise)
* マイページ編集機能

# 技術
* 単体テスト・結合テスト(RSpec)
* AWS EC2

# 言語・フレームワーク
ruby 2.5.3  
rails 5.2.3
