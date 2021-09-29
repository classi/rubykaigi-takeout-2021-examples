# rubykaigi-takeout-2021-examples

## try-tapioca-for-dsl
### 概要
- 発表「Demystifying DSLs for better analysis and understanding」で紹介した(tapioca)[https://github.com/Shopify/tapioca]を試したコードです。
### 中身
- ruby: 2.7.4
- rails: 6.1.4.1
  - Database: sqlite3
- tapioca: 0.4.27
### 試す手順
- railsアプリケーションの新規作成
  - 作成方法：`rails new try-tapioca-for-dsl --skip-bundle\
--skip-action-mailer --skip-action-mailbox --skip-action-text\
--skip-active-storage --skip-action-cable --skip-active-job\
--skip-test --skip-system-test --api`
- tapiocaの導入
  - Gemfileに定義の追加
```
group :development do
  gem 'tapioca', require: false
end
```
- tapiocaの初期化とrbiの生成
```
bundle exec tapioca init
bundle exec tapioca dsl User Article Tag ArticleTag
```
