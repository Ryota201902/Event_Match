require 'rails_helper'
RSpec.describe Event, type: :model do

    describe "validation" do
      context "データが全て入力してある場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = "ライブ"
                @event.date = "2019-05-15"
                @event.event_image_id = "f32128aa4edcfc8c1389b13b85cc5c869fb4b53800efa191c2cc52644684"
                @event.capacity = 2
                @event.user_id = @user.id
                @event.place = "武道館"
                @event.description = "一緒にライブに参加しましょう！"
                @event.save!
            end
            it "全て入力してあるので保存される" do
                expect(@event).to be_valid
            end
        end

        context "titleが入力されていない場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = ""
                @event.date = "2019-05-15"
                @event.event_image_id = "f32128aa4edcfc8c1389b13b85cc5c869fb4b53800efa191c2cc52644684"
                @event.capacity = 2
                @event.user_id = @user.id
                @event.place = "武道館"
                @event.description = "一緒にライブに参加しましょう！"
                @event.save
            end
            it "titleが入力されていないので保存されない" do
                expect(@event).to be_invalid
                expect(@event.errors[:title]).to include("can't be blank")
            end
        end

        context "dateが入力されていない場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = "ライブ"
                @event.date = ""
                @event.event_image_id = "f32128aa4edcfc8c1389b13b85cc5c869fb4b53800efa191c2cc52644684"
                @event.capacity = 2
                @event.user_id = @user.id
                @event.place = "武道館"
                @event.description = "一緒にライブに参加しましょう！"
                @event.save
            end
            it "dateが入力されていないので保存されない" do
                expect(@event).to be_invalid
                expect(@event.errors[:date]).to include("can't be blank")
            end
        end

        context "event_image_idが入力されていない場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = "ライブ"
                @event.date = "2019-05-15"
                @event.event_image_id = ""
                @event.capacity = 2
                @event.user_id = @user.id
                @event.place = "武道館"
                @event.description = "一緒にライブに参加しましょう！"
                @event.save
            end
            it "event_image_idが入力されていないので保存されない" do
                expect(@event).to be_invalid
                expect(@event.errors[:event_image]).to include("can't be blank")
            end
        end

        context "capacityが入力されていない場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = "ライブ"
                @event.date = "2019-05-15"
                @event.event_image_id = "f32128aa4edcfc8c1389b13b85cc5c869fb4b53800efa191c2cc52644684"
                @event.capacity = nil
                @event.user_id = @user.id
                @event.place = "武道館"
                @event.description = "一緒にライブに参加しましょう！"
                @event.save
            end
            it "dateが入力されていないので保存されない" do
                expect(@event).to be_invalid
                expect(@event.errors[:capacity]).to include("can't be blank")
            end
        end

        context "placeが入力されていない場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = "ライブ"
                @event.date = "2019-05-15"
                @event.event_image_id = "f32128aa4edcfc8c1389b13b85cc5c869fb4b53800efa191c2cc52644684"
                @event.capacity = 2
                @event.user_id = @user.id
                @event.place = ""
                @event.description = "一緒にライブに参加しましょう！"
                @event.save
            end
            it "placeが入力されていないので保存されない" do
                expect(@event).to be_invalid
                expect(@event.errors[:place]).to include("can't be blank")
            end
        end

        context "descriptionが入力されていない場合" do
            before do
                @user = create(:user)
                @event = Event.new
                @event.title = "ライブ"
                @event.date = "2019-05-15"
                @event.event_image_id = "f32128aa4edcfc8c1389b13b85cc5c869fb4b53800efa191c2cc52644684"
                @event.capacity = 2
                @event.user_id = @user.id
                @event.place = "武道館"
                @event.description = ""
                @event.save
            end
            it "dateが入力されていないので保存されない" do
                expect(@event).to be_invalid
                expect(@event.errors[:description]).to include("can't be blank")
            end
        end
    end

end