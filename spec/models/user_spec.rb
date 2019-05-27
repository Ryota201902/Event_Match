require 'rails_helper'

RSpec.describe User, type: :model do
    describe "validation" do
        before :each do
            @user = User.new(
                name: "山田太郎",
                email: "taroyamada@gmail.com",
                password: "yamada5278"
            )
        end
        context "名前、emailがある場合" do
            it "is valid" do
                expect(@user).to be_valid
            end
        end
        context "名前がない場合" do
            before :each do
                @user.name = nil
            end
            it "is invalid" do
                @user.valid?
                expect(@user.errors[:name].size).to eq(1)
            end
        end
        context "emailが空の時" do
            before :each do
                @user.email = nil
            end
            it "is invalid" do
                @user.valid?
                expect(@user.errors[:email].size).to eq(1)
            end
        end
        context "emailの型が正しくない場合" do
            before :each do
                @user.email = "jhafjsdlhf"
            end
            it "is invalid" do
                @user.valid?
                expect(@user.errors[:email].size).to eq(1)
            end
        end
    end
end