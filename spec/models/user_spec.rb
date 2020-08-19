require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    let(:params) {{name: "satou"}}

    it "年齢1:ユーザー名が取得できること" do
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "satouちゃん"
    end

    it "年齢15:ユーザー名が取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "satou君"
    end

    it "年齢20:ユーザー名が取得できること" do
      params.merge!(age: 30)
      user = User.new(params)
      expect(user.disp_name).to eq "satouさん"
    end

  end
end
