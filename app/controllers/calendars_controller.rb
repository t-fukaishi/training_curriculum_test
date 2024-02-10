class CalendarsController < ApplicationController

  # １週間のカレンダーと予定が表示されるページ
  def index
    get_week
    @plan = Plan.new
  end

  # 予定の保存
  def create
  
    Plan.create(plan_params)
    redirect_to action: :index
  end

      plans.each do |plan|
        today_plans.push(plan.plan) if plan.date == @todays_date + x
      end
      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, plans: today_plans}

      days = { :month => (@todays_date + x).month, :date => (@todays_date + x).day, :wday => wdays[(@todays_date + x).wday], :plans => today_plans}

      @week_days.push(days)
    end

  end
end