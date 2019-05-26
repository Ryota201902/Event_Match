require 'rails_helper'
RSpec.describe Event, type: :model do


  context "データが正しく保存される" do
        it "全て入力してあるので保存される" do
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
            expect(@event).to be_valid
        end
    end

end