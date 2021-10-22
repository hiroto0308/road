# Roooad(ロード)

『Roooad(ロ---ド)』は、プログラミング初学者のために、皆が歩んできたロードマップを見ることができるサービスです！

## 🌐アプリのURL
https://roooad-map.com/

## 📗Qiita記事
アプリの概要をより詳しくまとめています。

[【アプリ開発】プログラミング初学者向けのアプリ『Roooad(ロ---ド)』をリリースしました。](https://qiita.com/moko_samejima/items/f5881794b0fa90498d01)
## 📳アプリについて
![roooad-map com_rooads (1)](https://user-images.githubusercontent.com/72369165/138379056-f1efb072-ceb9-488f-93b3-f351b81ab6e7.png)
### 登場人物

- プログラミング初学者(閲覧・作成)
- 個人で、メンターや学習教材を販売している方の宣伝(作成)

### ユーザーが抱える課題

- 初学者には「学習の流れ・学習にかかる期間・言語選び」と`分からないことが多い`。他人の学習してきた手順や期間を参考にしたい!
- プログラミング関連の学習教材やサービスの認知をして貰いたい。

### 解決方法

自身の学習終了までのロードマップを公開＆他人のロードマップを見られるアプリケーション

### サービスを作った背景
このアプリを作った経緯は、`プログラミング学習での失敗`が理由です。

私がプログラミング学習を始めた際は、`「どういった学習の流れで、どれくらいの期間を必要とするのか」`ということが分からない状態で学習を進めていました。
そのため、独学でのプログラミング学習は明確なゴールが見えずに、挫折しそうになったり遠回りな学習をしたりということが多々ありました。

そういった経験から自分と同様に困っている方がいるのではないかと思い、`初学者の方が他人の学習の手順を参考にできるアプリ`を開発することに決めました。

## 🔧使用技術

- Ruby 2.6.5
- Rails 6.0.0
- bootstrap5
- AWS
  - EC2
    - Amazon Linux 2
  - S3
  - ELB
  - Route53
  - ACM

### 主要なGem

- devise (認証)
- cancancan (認可)
- rails_admin (管理画面)
- cocoon (ネストフォーム部分)
- kaminari (ページネーション)
- chartkick (円グラフ)
- rspec-rails (テスト)
- rubocop (自動修正)
- mini_magick (画像)
- gretel (パンくず)

## ER図
![er4.drawio.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/2000558/bf68de88-c23f-77aa-63b6-6b5e4a7b56ae.png)




