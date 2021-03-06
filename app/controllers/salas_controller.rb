class SalasController < ApplicationController
    before_action :set_activity, only: [:show, :edit, :update]

    def index
     
      else
        @sala = Sala.all
      end
  
    end
  
    def show
     
      end
     
      @hour = [hour_formatter(@activity.initial_date), hour_formatter(@activity.final_date)]
      @date = [date_formatter(@activity.initial_date), date_formatter(@activity.final_date)]
    end
  
    def hour_formatter(date)
      date.strftime('%H:%M')
    end
  
    def date_formatter(date)
      weekday = week_day(date.strftime('%A'))
      month = mon(date.strftime('%B'))
      "#{weekday} - #{date.strftime('%d')}/#{date.strftime('%m')}/#{date.strftime('%Y')}"
    end
  
  
    def new
      @sala = Sala.new
    end
  
    def create
      @sala = Sala.new(sala_params)
      @sala.user = current_user
      
  
      if @sala.save
        redirect_to sala_path(@sala), notice: "Sala criada"
      else
        render :new
      end
    end
  
    def edit; end
  
    def update
      @sala.update(sala_params)
      redirect_to sala_path(@sala), notice: "Sala updated"
    end
  
    private
  
    def sala_params
      params.require(:sala).permit(:title, :initial_date, :final_date)
    end
  45
    def set_sala
      @sala = Sala.find(params[:id])
    end
  end

end
