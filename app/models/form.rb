class Form < ActiveRecord::Base

  validates :name, :presence => {:message => '氏名は必須です。'},
  :length => {:maximum => 50, :message => '%{count}文字を超えています。'}

  validates :email, :presence => {:message => 'メールアドレスは必須です。'},
  :length => {:maximum => 255, :message => '%{count}文字を超えています。'},
  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
  :allow_blank => true,
  message: "正しいメールアドレスを入力してください"}

  validates :message, :presence => {:message => 'お問い合わせ内容は必須です。'}
end


