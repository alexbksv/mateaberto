class StatusController < ApplicationController

  def show
    respond_to do |format|
      format.png { 
        if (@isopen)
          send_file Rails.public_path+'/aberto.png', :type => 'image/png', :disposition => 'inline'
        else
          send_file Rails.public_path+'/fechado.png', :type => 'image/png', :disposition => 'inline'
        end
      }
      format.json {}
    end
      
  end

end
