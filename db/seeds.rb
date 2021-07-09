# メインのサンプルユーザーを1人作成する
User.create!(name:  "issei",
             email: "issei.s.star@icloud.com",
             password:              "Star0813",
             password_confirmation: "Star0813",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end