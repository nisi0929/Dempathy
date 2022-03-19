# Dempathy（同志社大学サークル検索サイト）

## 機能

- 新規登録/ログイン/ログアウト機能

> ユーザーはログインしなくてもいい！登録したいサークルだけが登録！
> 管理者は元々 seeds で登録して、フォームに管理者かどうかの値は含めない

- カテゴリー分類機能

> 検索機能で使う

- 投稿機能（1 件のみ）

> DB 容量的に心配なのでとりあえず１件しか投稿できない。ただ編集はできる。

- サークル検索機能

> サークルを検索することができる

## DB 設計

### users テーブル

- name
- description
- image
- URL
- category

> 当てはまるものを全て選択
> 例えば、[体育会系]、[スポーツ]とか

### posts テーブル

- event_name
- event_description
- image(追加できそうなら、規模感をみて追加)
