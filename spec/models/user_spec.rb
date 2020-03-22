require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    let(:params){{name:"とも", age:3}}


    it "年齢：３　ユーザーの名前に「さん」をつけて取得できること" do
      params.merge!(age:3)
      user = User.new(params)
      expect(user.disp_name).to eq "ともちゃん"
    end

    it "年齢　１５　ユーザーの名前に「さん」をつけて取得できること" do
      params.merge!(age:15)
      user = User.new(params)
      expect(user.disp_name).to eq "ともくん"
    end

    it "年齢　２３　ユーザーの名前に「さん」をつけて取得できること" do
      params.merge!(age:23)
      user = User.new(params)
      expect(user.disp_name).to eq "ともさん"
    end

    it "年齢　-1　「不正な値です」と取得できること" do
      params.merge!(age:-1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end
  end
end
